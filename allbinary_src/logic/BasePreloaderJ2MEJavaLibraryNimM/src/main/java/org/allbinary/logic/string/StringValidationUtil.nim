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
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

type
    StringValidationUtil* = ref object of JObject
        stringUtil*: StringUtil
        tsUtil*: TsUtil

proc newStringValidationUtil*(): StringValidationUtil
proc initStringValidationUtil*(this: StringValidationUtil)
proc getInstance*(t: typedesc[StringValidationUtil]): StringValidationUtil {.discardable.}
method containsSpaces*(this: StringValidationUtil, value: string): bool {.base, discardable.}
method isNumber*(this: StringValidationUtil, value: string): bool {.base, discardable.}
method isNumberFromChar*(this: StringValidationUtil, digit: uint16): bool {.base, discardable.}
method isValidRequired*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.}
method isValidRequiredNumber*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.}
method isValidNotRequired*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.}
method isValidNotRequiredNumber*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.}
method isEmpty*(this: StringValidationUtil, string: string): bool {.base, discardable.}

var StringValidationUtil_instanceValue: StringValidationUtil
var StringValidationUtil_instanceSet = false
proc instance*(t: typedesc[StringValidationUtil]): StringValidationUtil =
    if not StringValidationUtil_instanceSet:
        StringValidationUtil_instanceSet = true
        StringValidationUtil_instanceValue = newStringValidationUtil()
    StringValidationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsStringValidationUtil(this: StringValidationUtil) =
    this.stringUtil = StringUtil.getInstance()
    this.tsUtil = TsUtil.getInstance()
    discard

proc getInstance*(t: typedesc[StringValidationUtil]): StringValidationUtil {.discardable.} =
        return StringValidationUtil.instance

proc initStringValidationUtil*(this: StringValidationUtil) =
        this.initFieldsStringValidationUtil()
        discard

proc newStringValidationUtil*(): StringValidationUtil =
    result = StringValidationUtil()
    initStringValidationUtil(result)

method containsSpaces*(this: StringValidationUtil, value: string): bool {.base, discardable.} =
        if jIndexOf(value, uint16(ord(' '))) >= 0:
            return true
        return false

method isNumber*(this: StringValidationUtil, value: string): bool {.base, discardable.} =
        var numberOfDecimalPoints: int32 = 0
        block:
            var index: int32 = 0
            while index < jLength(value):
                defer: index = index +% 1
                var digit: uint16 = jCharAt(value, index)
                if (not this.isNumberFromChar(digit)) and digit != uint16(ord('.')):
                    return false
                if digit == uint16(ord('.')):
                    numberOfDecimalPoints = numberOfDecimalPoints +% 1
                    if numberOfDecimalPoints > 1:
                        return false
        return true

method isNumberFromChar*(this: StringValidationUtil, digit: uint16): bool {.base, discardable.} =
        if digit != uint16(ord('0')) and digit != uint16(ord('1')) and digit != uint16(ord('2')) and digit != uint16(ord('3')) and digit != uint16(ord('4')) and digit != uint16(ord('5')) and digit != uint16(ord('6')) and digit != uint16(ord('7')) and digit != uint16(ord('8')) and digit != uint16(ord('9')):
            return false
        return true

method isValidRequired*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.} =
        if jLength(value) < min or jLength(value) > max:
            return false
        return true

method isValidRequiredNumber*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.} =
        if this.isEmpty(value) or jLength(value) < min or jLength(value) > max:
            return false
        if (not this.isNumber(value)):
            return false
        return true

method isValidNotRequired*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.} =
        if jLength(value) > 0:
            if jLength(value) < min or jLength(value) > max:
                return false
        return true

method isValidNotRequiredNumber*(this: StringValidationUtil, value: string, min: int32, max: int32): bool {.base, discardable.} =
        if jLength(value) > 0:
            if this.tsUtil.compareTo(value, this.stringUtil.NULL_STRING) == 0 or jLength(value) < min or jLength(value) > max:
                return false
            if (not this.isNumber(value)):
                return false
        return true

method isEmpty*(this: StringValidationUtil, string: string): bool {.base, discardable.} =
        if this.tsUtil.compareTo(string, this.stringUtil.NULL_STRING) != 0 and this.tsUtil.compareTo(string, this.stringUtil.EMPTY_STRING) != 0:
            return false
        else:
            return true

