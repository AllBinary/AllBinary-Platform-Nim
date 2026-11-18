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

type
    StringUtil* = ref object of JObject
        INIT_STRING*: string
        NULL_STRING*: string
        EMPTY_STRING*: string
        ONE_EMPTY_STRING_ARRAY*: JArray[string]
        ONE_EMPTY_STRING_ARRAY_OF_ARRAYS*: JArray[JArray[string]]
        stringArray*: JArray[string]

proc newStringUtil*(): StringUtil
proc initStringUtil*(this: StringUtil)
proc getInstance*(t: typedesc[StringUtil]): StringUtil {.discardable.}
method getNonNull*(this: StringUtil, string: string): string {.base, discardable.}
method getArrayInstance*(this: StringUtil): JArray[string] {.base, discardable.}
method count*(this: StringUtil, string: string, aChar: uint16): int32 {.base, discardable.}
method toString*(this: StringUtil, anyType: JObject): string {.base, discardable.}

var StringUtil_instanceValue: StringUtil
var StringUtil_instanceSet = false
proc instance*(t: typedesc[StringUtil]): StringUtil =
    if not StringUtil_instanceSet:
        StringUtil_instanceSet = true
        StringUtil_instanceValue = newStringUtil()
    StringUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsStringUtil(this: StringUtil) =
    this.INIT_STRING = jNewString("")
    this.NULL_STRING = "null"
    this.EMPTY_STRING = ""
    this.ONE_EMPTY_STRING_ARRAY = newJArrayFrom[string]([this.EMPTY_STRING])
    this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = newJArrayOf[JArray[string]](0, proc (): JArray[string] = newJArray[string](0, default(string)))
    this.stringArray = newJArray[string](0, default(string))
    discard

proc getInstance*(t: typedesc[StringUtil]): StringUtil {.discardable.} =
        return StringUtil.instance

proc initStringUtil*(this: StringUtil) =
        this.initFieldsStringUtil()
        discard

proc newStringUtil*(): StringUtil =
    result = StringUtil()
    initStringUtil(result)

method getNonNull*(this: StringUtil, string: string): string {.base, discardable.} =
        return string

method getArrayInstance*(this: StringUtil): JArray[string] {.base, discardable.} =
        return this.stringArray

method count*(this: StringUtil, string: string, aChar: uint16): int32 {.base, discardable.} =
        var count: int32 = 0
        let size: int32 = jLength(string)
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if jCharAt(string, index) == aChar:
                    count = count +% 1
        return count

method toString*(this: StringUtil, anyType: JObject): string {.base, discardable.} =
        if (not jIsNil(anyType)):
            return anyType.toString()
        else:
            return this.NULL_STRING

