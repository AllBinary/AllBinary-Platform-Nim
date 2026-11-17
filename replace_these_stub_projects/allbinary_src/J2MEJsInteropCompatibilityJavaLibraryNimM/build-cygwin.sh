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

if [ ! -d "$source_dir" ]; then
    echo "No Nim sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"

# Nim module names must be identifiers so the aggregate module is allmodules
aggregate="$object_dir/allmodules.nim"
: > "$aggregate"
count=0
# Two classes that use each other compile when the one that imports the other late (an import after its procs are
# declared, see JavaAsXmlToNim.xsl nimClassImports) is compiled first, so a module comes before the modules it imports
# late (tsort of "module lateImport" pairs) and the modules with late imports come first.
# Any other module that imports B must also come after A (it would load B before A otherwise).
imports="$object_dir/imports.txt"
: > "$imports"
edges="$object_dir/late-imports.txt"
: > "$edges"
while IFS= read -r -d '' file; do
    module="${file#"$source_dir"/}"
    module="${module%.nim}"
    echo "$module $module" >> "$edges"
    awk -v module="$module" '/^(proc|method|func) / { declared = 1 } /^import / { print (declared ? "late" : "early") " " module " " $2 }' "$file" | while read -r kind from to; do
        if [ -f "$source_dir/$to.nim" ]; then echo "$kind $from $to" >> "$imports"; fi
    done
done < <(find "$source_dir" -type f -name '*.nim' -print0 | sort -z)
awk '{ importers[$3] = importers[$3] " " $2 } $1 == "late" { late[++count] = $2 " " $3 }
    END {
        for (index_ = 1; index_ <= count; index_++) {
            split(late[index_], pair, " ")
            print pair[1] " " pair[2]
            split(importers[pair[2]], list, " ")
            for (item in list) { if (list[item] != pair[1]) print pair[1] " " list[item] }
        }
    }' "$imports" >> "$edges"
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
project_errors="$(echo "$output" | grep -E '\.nim\([0-9]+, [0-9]+\) Error' | grep -v -F "$(cygpath -w "$short_root/d")")"
if [ -z "$project_errors" ] && echo "$output" | grep -q -E '\.nim\([0-9]+, [0-9]+\) Error'; then
    echo "Nim dependency errors only: $artifact"
    exit 0
fi
echo "Nim build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
