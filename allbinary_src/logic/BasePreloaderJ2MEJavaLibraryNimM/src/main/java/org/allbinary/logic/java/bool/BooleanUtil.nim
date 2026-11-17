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
# package org.allbinary.logic.java.bool

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule

type
    BooleanUtil* = ref object of JObject
        tsUtil*: TsUtil

proc newBooleanUtil*(): BooleanUtil
proc initBooleanUtil*(this: BooleanUtil)
proc getInstance*(t: typedesc[BooleanUtil]): BooleanUtil {.discardable.}
method getFromString*(this: BooleanUtil, booleanString: string): bool {.base, discardable.}
method isStringBoolean*(this: BooleanUtil, booleanString: string): bool {.base, discardable.}
method toStringFromBooleanArray*(this: BooleanUtil, booleanArray: JArray[bool]): string {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule

var BooleanUtil_instanceValue: BooleanUtil
var BooleanUtil_instanceSet = false
proc instance*(t: typedesc[BooleanUtil]): BooleanUtil =
    if not BooleanUtil_instanceSet:
        BooleanUtil_instanceSet = true
        BooleanUtil_instanceValue = newBooleanUtil()
    BooleanUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBooleanUtil(this: BooleanUtil) =
    this.tsUtil = TsUtil.getInstance()
    discard

proc getInstance*(t: typedesc[BooleanUtil]): BooleanUtil {.discardable.} =
        return BooleanUtil.instance

proc initBooleanUtil*(this: BooleanUtil) =
        this.initFieldsBooleanUtil()
        discard

proc newBooleanUtil*(): BooleanUtil =
    result = BooleanUtil()
    initBooleanUtil(result)

method getFromString*(this: BooleanUtil, booleanString: string): bool {.base, discardable.} =
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        let booleanFactory: BooleanFactory = BooleanFactory.getInstance()
        if stringValidationUtil.isEmpty(booleanString):
            return false
        let booleanStringLowerCase: string = jToLowerCase(booleanString)
        if this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0:
            return true
        elif this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0:
            return false
        else:
            raise newJException("Exception", "Invalid booleanString - Must be true or false")

method isStringBoolean*(this: BooleanUtil, booleanString: string): bool {.base, discardable.} =
        let booleanFactory: BooleanFactory = BooleanFactory.getInstance()
        let booleanStringLowerCase: string = jToLowerCase(booleanString)
        if jCompareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0 or jCompareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0:
            return true
        return false

method toStringFromBooleanArray*(this: BooleanUtil, booleanArray: JArray[bool]): string {.base, discardable.} =
        let stringMaker: StringMaker = newStringMaker()
        let size: int32 = booleanArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                stringMaker.appendboolean(booleanArray[index])
        return stringMaker.toString()

