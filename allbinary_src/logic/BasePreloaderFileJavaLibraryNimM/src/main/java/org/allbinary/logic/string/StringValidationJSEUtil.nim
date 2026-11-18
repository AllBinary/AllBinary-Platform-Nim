#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.string

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Character as CharacterModule
export CharacterModule

type
    StringValidationJSEUtil* = ref object of JObject

proc newStringValidationJSEUtil*(): StringValidationJSEUtil
proc initStringValidationJSEUtil*(this: StringValidationJSEUtil)
proc isBlank*(t: typedesc[StringValidationJSEUtil], string: string): bool {.discardable.}


proc initStringValidationJSEUtil*(this: StringValidationJSEUtil) =
        discard
        discard

proc newStringValidationJSEUtil*(): StringValidationJSEUtil =
    result = StringValidationJSEUtil()
    initStringValidationJSEUtil(result)

proc isBlank*(t: typedesc[StringValidationJSEUtil], string: string): bool {.discardable.} =
        var len: int32 = jLength(string)
        block:
            var i: int32 = 0
            while i < len:
                defer: i = i +% 1
                var c: uint16 = jCharAt(string, i)
                if Character.isWhitespace(c) == false:
                    return false
        return true

