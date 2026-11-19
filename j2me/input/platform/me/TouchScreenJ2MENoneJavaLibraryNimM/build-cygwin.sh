#!/usr/bin/env bash

# Checks the Nim modules the Nim converter generated with nim check. A module that imports every module of this project
# is checked with the hand written runtime and the Nim sources of the dependencies (META-INF/nim/src of their jars) on
# the path. This project's sources are written to <output>/src for dependent projects.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"
cycle_types="G:/mnt/bc/mydev/work/allbinary_src/JavaAsXmlToLanguageLibraryM/src/main/java/org/allbinary/converter/nim/NimCycleTypes.java"

if [ ! -d "$source_dir" ]; then
    echo "No Nim sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$object_dir/src"
# Nim can not compile types of different modules that use each other (Graphics and Image), so NimCycleTypes moves the
# type sections of each group of modules that import each other to one jcycletypes_ module on a copy of the sources,
# and makes every module import the members with a member's superclasses before the member (a Nim method override
# must come after its base method). The changed copy is checked and written to <output>/src.
cp -R "$source_dir/." "$object_dir/src/"
order_edges="$object_dir/order-edges.txt"
cycle_arguments=("$(cygpath -w "$object_dir/src")" "$(cygpath -w "$order_edges")")
if [ -d "$dependency_dir/src" ]; then
    cycle_arguments+=("$(cygpath -w "$dependency_dir/src")")
fi
if ! java "$cycle_types" "${cycle_arguments[@]}"; then
    echo "NimCycleTypes failed: $artifact" >&2
    exit 1
fi
source_dir="$object_dir/src"
cp -R "$source_dir/." "$output_dir/src/"

# Nim module names must be identifiers so the aggregate module is allmodules
aggregate="$object_dir/allmodules.nim"
: > "$aggregate"
count=0
# Modules that import each other are in one group (above), so the only order the aggregate module needs is the
# members with superclasses before their subclasses (tsort of NimCycleTypes "superclassMember member" pairs).
edges="$object_dir/order-edges-all.txt"
: > "$edges"
while IFS= read -r -d '' file; do
    module="${file#"$source_dir"/}"
    module="${module%.nim}"
    echo "$module $module" >> "$edges"
done < <(find "$source_dir" -type f -name '*.nim' -print0 | sort -z)
cat "$order_edges" >> "$edges"
while IFS= read -r module; do
    printf 'import %s as Module%d\n' "$module" "$count" >> "$aggregate"
    count=$((count + 1))
done < <(tsort "$edges" 2>/dev/null)
echo "Nim modules: $count"

# A Windows program can not open a path over 260 characters, which a deep project folder plus a deep package reaches,
# so the check runs on short temporary copies of the runtime, the dependencies, and this project
short_root="$(mktemp -d /tmp/nimXXXXXX)"
trap 'rm -rf "$short_root"' EXIT
mkdir -p "$short_root/r" "$short_root/d" "$short_root/s"
cp -R "$runtime_dir/." "$short_root/r/"
cp -R "$source_dir/." "$short_root/s/"
cp "$aggregate" "$short_root/allmodules.nim"
aggregate="$short_root/allmodules.nim"
paths=(--path:"$(cygpath -w "$short_root/r")" --path:"$(cygpath -w "$short_root/s")")
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$short_root/d/"
    paths+=(--path:"$(cygpath -w "$short_root/d")")
fi

output="$("$compiler" check --hints:off --warning:UnusedImport:off "${compiler_flags[@]}" "${paths[@]}" "$(cygpath -w "$aggregate")" 2>&1)"
status=$?
echo "$output"
if [ "$status" = "0" ]; then
    echo "Nim checked: $artifact"
    exit 0
fi
# Like Java, a dependency is not checked again here: its own optional dependencies (TsUtil and LogFormatUtil for
# LogUtil) are not transitive so they are missing. Only errors in this project's modules and the runtime fail the build.
# An error in the Nim standard library (illformed AST in seqs_v2.nim) is reported at the library line after the
# "template/generic instantiation ... from here" chain that led to it: it is a dependency error when the outermost link of
# that chain is in a dependency (NullImage.nim of a dependency that can not see Image). The same holds for an error in a
# generic of the runtime (newJArray of allbinary_java.nim made with a type a dependency can not see).
dependency_path="$(cygpath -w "$short_root/d")"
runtime_path="$(cygpath -w "$short_root/r")"
library_path="$(cygpath -w "$(dirname "$(dirname "$compiler")")/lib")"
# The paths go through the environment: awk -v would read the backslashes of a Windows path as escapes
project_errors="$(echo "$output" | NIM_DEPENDENCY_PATH="$dependency_path" NIM_RUNTIME_PATH="$runtime_path" NIM_LIBRARY_PATH="$library_path" awk '
    BEGIN { dependency = ENVIRON["NIM_DEPENDENCY_PATH"]; runtime = ENVIRON["NIM_RUNTIME_PATH"]; library = ENVIRON["NIM_LIBRARY_PATH"] }
    /\.nim\([0-9]+, [0-9]+\) template\/generic instantiation/ {
        if (origin == "" && index($0, library) != 1 && index($0, runtime) != 1) { origin = $0 }
        next
    }
    /\.nim\([0-9]+, [0-9]+\) Error/ {
        if (index($0, dependency) > 0) { origin = ""; next }
        if ((index($0, library) == 1 || index($0, runtime) == 1) && origin != "" && index(origin, dependency) > 0) { origin = ""; next }
        print
        origin = ""
    }')"
# grep -c reads all of the output: grep -q stops at the first match, and with pipefail the echo it cut off (SIGPIPE on a
# long output of dependency errors) made this test false
error_count="$(echo "$output" | grep -c -E '\.nim\([0-9]+, [0-9]+\) Error')"
if [ -z "$project_errors" ] && [ "$error_count" -gt 0 ]; then
    echo "Nim dependency errors only: $artifact"
    exit 0
fi
echo "Nim build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
