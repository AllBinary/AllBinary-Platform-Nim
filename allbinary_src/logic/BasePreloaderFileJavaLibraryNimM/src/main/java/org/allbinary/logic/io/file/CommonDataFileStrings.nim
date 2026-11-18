#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.io.file

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CommonDataFileStrings* = ref object of JObject
        XML*: string
        U_XML*: string
        JSON*: string
        U_JSON*: string
        XSL*: string
        U_XSL*: string
        JAVA*: string
        U_JAVA*: string
        KT*: string
        U_KT*: string
        TS*: string
        U_TS*: string
        JS*: string
        U_JS*: string
        CPP*: string
        U_CPP*: string
        H*: string
        U_H*: string
        PY*: string
        U_PY*: string
        GO*: string
        U_GO*: string
        CS*: string
        U_CS*: string
        ADB*: string
        U_ADB*: string
        ADS*: string
        U_ADS*: string
        ADA*: string
        U_ADA*: string
        RUST*: string
        U_RUST*: string
        C*: string
        U_C*: string
        CSHARP*: string
        U_CSHARP*: string
        ERL*: string
        U_ERL*: string
        HS*: string
        U_HS*: string
        HX*: string
        U_HX*: string
        LUA*: string
        U_LUA*: string
        PAS*: string
        U_PAS*: string
        ML*: string
        U_ML*: string
        PL*: string
        U_PL*: string
        RB*: string
        U_RB*: string
        ZIG*: string
        U_ZIG*: string
        PM*: string
        U_PM*: string
        KTS*: string
        U_KTS*: string
        CBL*: string
        U_CBL*: string
        COB*: string
        U_COB*: string
        F90*: string
        U_F90*: string
        F*: string
        U_F*: string
        DART*: string
        U_DART*: string
        EX*: string
        U_EX*: string
        EXS*: string
        U_EXS*: string
        M*: string
        U_M*: string
        SWIFT*: string
        U_SWIFT*: string
        ASM*: string
        U_ASM*: string
        S*: string
        U_S*: string
        NIM*: string
        U_NIM*: string
        VALA*: string
        U_VALA*: string
        LISP*: string
        U_LISP*: string
        RKT*: string
        U_RKT*: string
        SCM*: string
        U_SCM*: string
        AS*: string
        U_AS*: string
        OBX*: string
        U_OBX*: string
        SCALA*: string
        U_SCALA*: string
        GROOVY*: string
        U_GROOVY*: string
        JL*: string
        U_JL*: string
        TCL*: string
        U_TCL*: string
        WREN*: string
        U_WREN*: string
        JANET*: string
        U_JANET*: string
        GR*: string
        U_GR*: string
        ELM*: string
        U_ELM*: string
        KOTLIN*: string
        TYPESCRIPT*: string
        JAVASCRIPT*: string
        C_PLUS_PLUS*: string
        PYTHON*: string
        C_SHARPOfCommonDataFileStrings*: string
        RUST_NAME*: string
        RUBY*: string
        PERL*: string
        OBJECT_PASCAL*: string
        OCAML*: string
        HASKELL*: string
        HAXE*: string
        ERLANG*: string
        COBOL*: string
        FORTRAN*: string
        ELIXIR*: string
        OBJECTIVE_C*: string
        RACKET*: string
        SCHEME*: string
        ACTIONSCRIPT*: string
        OBERON_PLUS*: string
        JULIA*: string
        GRAIN*: string
        CPLUSPLUSOfCommonDataFileStrings*: string
        GOLANG*: string
        CSHARP_ALIAS*: string
        C23*: string
        PASCAL*: string
        OBJECT_PASCAL_ALIAS*: string
        OBJC*: string
        OBJECTIVE_C_ALIAS*: string
        ASSEMBLY*: string
        COMMON_LISP*: string
        OBERON*: string
        OBERON_PLUS_ALIAS*: string
        KT_SHORT_NAME*: string
        TS_SHORT_NAME*: string
        JS_SHORT_NAME*: string
        CPP_SHORT_NAME*: string
        PY_SHORT_NAME*: string
        GO_SHORT_NAME*: string
        CS_SHORT_NAME*: string
        ADA_SHORT_NAME*: string
        RUST_SHORT_NAME*: string
        LUA_SHORT_NAME*: string
        C_SHORT_NAME*: string
        ZIG_SHORT_NAME*: string
        RB_SHORT_NAME*: string
        PL_SHORT_NAME*: string
        PAS_SHORT_NAME*: string
        ML_SHORT_NAME*: string
        HS_SHORT_NAME*: string
        HX_SHORT_NAME*: string
        ERL_SHORT_NAME*: string
        CBL_SHORT_NAME*: string
        F90_SHORT_NAME*: string
        DART_SHORT_NAME*: string
        EX_SHORT_NAME*: string
        OBJC_SHORT_NAME*: string
        SWIFT_SHORT_NAME*: string
        ASM_SHORT_NAME*: string
        NIM_SHORT_NAME*: string
        VALA_SHORT_NAME*: string
        LISP_SHORT_NAME*: string
        RKT_SHORT_NAME*: string
        SCM_SHORT_NAME*: string
        AS_SHORT_NAME*: string
        OBX_SHORT_NAME*: string
        SCALA_SHORT_NAME*: string
        GROOVY_SHORT_NAME*: string
        JL_SHORT_NAME*: string
        TCL_SHORT_NAME*: string
        WREN_SHORT_NAME*: string
        JANET_SHORT_NAME*: string
        GR_SHORT_NAME*: string
        ELM_SHORT_NAME*: string
        UNCRYPTED_EXTENSION*: string
        ENCRYPTED_EXTENSION*: string

proc newCommonDataFileStrings*(): CommonDataFileStrings
proc getInstance*(t: typedesc[CommonDataFileStrings]): CommonDataFileStrings {.discardable.}

var CommonDataFileStrings_instanceValue: CommonDataFileStrings
var CommonDataFileStrings_instanceSet = false
proc instance*(t: typedesc[CommonDataFileStrings]): CommonDataFileStrings =
    if not CommonDataFileStrings_instanceSet:
        CommonDataFileStrings_instanceSet = true
        CommonDataFileStrings_instanceValue = newCommonDataFileStrings()
    CommonDataFileStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommonDataFileStrings(this: CommonDataFileStrings) =
    this.XML = "xml"
    this.U_XML = ".xml"
    this.JSON = "json"
    this.U_JSON = ".json"
    this.XSL = "xsl"
    this.U_XSL = ".xsl"
    this.JAVA = "java"
    this.U_JAVA = ".java"
    this.KT = "kt"
    this.U_KT = ".kt"
    this.TS = "ts"
    this.U_TS = ".ts"
    this.JS = "js"
    this.U_JS = ".js"
    this.CPP = "cpp"
    this.U_CPP = ".cpp"
    this.H = "h"
    this.U_H = ".h"
    this.PY = "py"
    this.U_PY = ".py"
    this.GO = "go"
    this.U_GO = ".go"
    this.CS = "cs"
    this.U_CS = ".cs"
    this.ADB = "adb"
    this.U_ADB = ".adb"
    this.ADS = "ads"
    this.U_ADS = ".ads"
    this.ADA = "ada"
    this.U_ADA = ".ada"
    this.RUST = "rs"
    this.U_RUST = ".rs"
    this.C = "c"
    this.U_C = ".c"
    this.CSHARP = "cs"
    this.U_CSHARP = ".cs"
    this.ERL = "erl"
    this.U_ERL = ".erl"
    this.HS = "hs"
    this.U_HS = ".hs"
    this.HX = "hx"
    this.U_HX = ".hx"
    this.LUA = "lua"
    this.U_LUA = ".lua"
    this.PAS = "pas"
    this.U_PAS = ".pas"
    this.ML = "ml"
    this.U_ML = ".ml"
    this.PL = "pl"
    this.U_PL = ".pl"
    this.RB = "rb"
    this.U_RB = ".rb"
    this.ZIG = "zig"
    this.U_ZIG = ".zig"
    this.PM = "pm"
    this.U_PM = ".pm"
    this.KTS = "kts"
    this.U_KTS = ".kts"
    this.CBL = "cbl"
    this.U_CBL = ".cbl"
    this.COB = "cob"
    this.U_COB = ".cob"
    this.F90 = "f90"
    this.U_F90 = ".f90"
    this.F = "f"
    this.U_F = ".f"
    this.DART = "dart"
    this.U_DART = ".dart"
    this.EX = "ex"
    this.U_EX = ".ex"
    this.EXS = "exs"
    this.U_EXS = ".exs"
    this.M = "m"
    this.U_M = ".m"
    this.SWIFT = "swift"
    this.U_SWIFT = ".swift"
    this.ASM = "asm"
    this.U_ASM = ".asm"
    this.S = "s"
    this.U_S = ".s"
    this.NIM = "nim"
    this.U_NIM = ".nim"
    this.VALA = "vala"
    this.U_VALA = ".vala"
    this.LISP = "lisp"
    this.U_LISP = ".lisp"
    this.RKT = "rkt"
    this.U_RKT = ".rkt"
    this.SCM = "scm"
    this.U_SCM = ".scm"
    this.AS = "as"
    this.U_AS = ".as"
    this.OBX = "obx"
    this.U_OBX = ".obx"
    this.SCALA = "scala"
    this.U_SCALA = ".scala"
    this.GROOVY = "groovy"
    this.U_GROOVY = ".groovy"
    this.JL = "jl"
    this.U_JL = ".jl"
    this.TCL = "tcl"
    this.U_TCL = ".tcl"
    this.WREN = "wren"
    this.U_WREN = ".wren"
    this.JANET = "janet"
    this.U_JANET = ".janet"
    this.GR = "gr"
    this.U_GR = ".gr"
    this.ELM = "elm"
    this.U_ELM = ".elm"
    this.KOTLIN = "kotlin"
    this.TYPESCRIPT = "typescript"
    this.JAVASCRIPT = "javascript"
    this.C_PLUS_PLUS = "c++"
    this.PYTHON = "python"
    this.C_SHARPOfCommonDataFileStrings = "c#"
    this.RUST_NAME = "rust"
    this.RUBY = "ruby"
    this.PERL = "perl"
    this.OBJECT_PASCAL = "objectpascal"
    this.OCAML = "ocaml"
    this.HASKELL = "haskell"
    this.HAXE = "haxe"
    this.ERLANG = "erlang"
    this.COBOL = "cobol"
    this.FORTRAN = "fortran"
    this.ELIXIR = "elixir"
    this.OBJECTIVE_C = "objective-c"
    this.RACKET = "racket"
    this.SCHEME = "scheme"
    this.ACTIONSCRIPT = "actionscript"
    this.OBERON_PLUS = "oberon+"
    this.JULIA = "julia"
    this.GRAIN = "grain"
    this.CPLUSPLUSOfCommonDataFileStrings = "cplusplus"
    this.GOLANG = "golang"
    this.CSHARP_ALIAS = "csharp"
    this.C23 = "c23"
    this.PASCAL = "pascal"
    this.OBJECT_PASCAL_ALIAS = "object pascal"
    this.OBJC = "objc"
    this.OBJECTIVE_C_ALIAS = "objectivec"
    this.ASSEMBLY = "assembly"
    this.COMMON_LISP = "common lisp"
    this.OBERON = "oberon"
    this.OBERON_PLUS_ALIAS = "oberonplus"
    this.KT_SHORT_NAME = "Kt"
    this.TS_SHORT_NAME = "Ts"
    this.JS_SHORT_NAME = "Js"
    this.CPP_SHORT_NAME = "Cpp"
    this.PY_SHORT_NAME = "Py"
    this.GO_SHORT_NAME = "Go"
    this.CS_SHORT_NAME = "Cs"
    this.ADA_SHORT_NAME = "Ada"
    this.RUST_SHORT_NAME = "Rust"
    this.LUA_SHORT_NAME = "Lua"
    this.C_SHORT_NAME = "C"
    this.ZIG_SHORT_NAME = "Zig"
    this.RB_SHORT_NAME = "Rb"
    this.PL_SHORT_NAME = "Pl"
    this.PAS_SHORT_NAME = "Pas"
    this.ML_SHORT_NAME = "Ml"
    this.HS_SHORT_NAME = "Hs"
    this.HX_SHORT_NAME = "Hx"
    this.ERL_SHORT_NAME = "Erl"
    this.CBL_SHORT_NAME = "Cbl"
    this.F90_SHORT_NAME = "F90"
    this.DART_SHORT_NAME = "Dart"
    this.EX_SHORT_NAME = "Ex"
    this.OBJC_SHORT_NAME = "ObjC"
    this.SWIFT_SHORT_NAME = "Swift"
    this.ASM_SHORT_NAME = "Asm"
    this.NIM_SHORT_NAME = "Nim"
    this.VALA_SHORT_NAME = "Vala"
    this.LISP_SHORT_NAME = "Lisp"
    this.RKT_SHORT_NAME = "Rkt"
    this.SCM_SHORT_NAME = "Scm"
    this.AS_SHORT_NAME = "As"
    this.OBX_SHORT_NAME = "Obx"
    this.SCALA_SHORT_NAME = "Scala"
    this.GROOVY_SHORT_NAME = "Groovy"
    this.JL_SHORT_NAME = "Jl"
    this.TCL_SHORT_NAME = "Tcl"
    this.WREN_SHORT_NAME = "Wren"
    this.JANET_SHORT_NAME = "Janet"
    this.GR_SHORT_NAME = "Gr"
    this.ELM_SHORT_NAME = "Elm"
    this.UNCRYPTED_EXTENSION = this.XML
    this.ENCRYPTED_EXTENSION = "abd"
    discard

proc initCommonDataFileStrings*(this: CommonDataFileStrings) =
    this.initFieldsCommonDataFileStrings()

proc newCommonDataFileStrings*(): CommonDataFileStrings =
    result = CommonDataFileStrings()
    initCommonDataFileStrings(result)

proc getInstance*(t: typedesc[CommonDataFileStrings]): CommonDataFileStrings {.discardable.} =
        return CommonDataFileStrings.instance

