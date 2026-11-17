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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/math/PrimitiveLongSingleton as PrimitiveLongSingletonModule
export PrimitiveLongSingletonModule

type
    PrimitiveLongUtil* = ref object of JObject
        logUtil*: LogUtil
        powerOfTen*: int32
        maxValue*: int32
        maxDigits*: int32
        charArray*: JArray[uint16]
        currentTotalDigits*: int32
        primitiveLongSingleton*: PrimitiveLongSingleton

proc newPrimitiveLongUtil*(powerOfTen: int32, unused: JObject): PrimitiveLongUtil
proc initPrimitiveLongUtil*(this: PrimitiveLongUtil, powerOfTen: int32, unused: JObject)
proc createPowerOfTen*(t: typedesc[PrimitiveLongUtil], powerOfTen: int32): PrimitiveLongUtil {.discardable.}
method getCharArray*(this: PrimitiveLongUtil, value: int32): JArray[uint16] {.base, discardable.}
method setCurrentTotalDigits*(this: PrimitiveLongUtil, currentTotalDigits: int32) {.base.}
method getCurrentTotalDigits*(this: PrimitiveLongUtil): int32 {.base, discardable.}
method getMaxDigits*(this: PrimitiveLongUtil): int32 {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule


# Java field initializers run after the base initializer
proc initFieldsPrimitiveLongUtil(this: PrimitiveLongUtil) =
    this.logUtil = LogUtil.getInstance()
    
    
    
    
    this.currentTotalDigits = 0
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    discard

proc createPowerOfTen*(t: typedesc[PrimitiveLongUtil], powerOfTen: int32): PrimitiveLongUtil {.discardable.} =
        let primitiveLongUtil: PrimitiveLongUtil = newPrimitiveLongUtil(powerOfTen, NullUtil.getInstance().NULL_OBJECT)
        if powerOfTen mod 10 != 0:
            let logUtil: LogUtil = LogUtil.getInstance()
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, newJException("Exception", "Max must be power of 10"))
        return primitiveLongUtil

proc initPrimitiveLongUtil*(this: PrimitiveLongUtil, powerOfTen: int32, unused: JObject) =
        this.initFieldsPrimitiveLongUtil()
        this.maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen)
        this.powerOfTen = powerOfTen
        this.maxValue = (powerOfTen *% 10) -% 1
        this.charArray = newJArray[uint16](this.maxDigits, default(uint16))

proc newPrimitiveLongUtil*(powerOfTen: int32, unused: JObject): PrimitiveLongUtil =
    result = PrimitiveLongUtil()
    initPrimitiveLongUtil(result, powerOfTen, unused)

method getCharArray*(this: PrimitiveLongUtil, value: int32): JArray[uint16] {.base, discardable.} =
        if value < 10:
            this.setCurrentTotalDigits(1)
            return this.primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value]
        if value > this.maxValue:
            this.setCurrentTotalDigits(3)
            return this.primitiveLongSingleton.UNK
        var index: int32 = 0
        var `div`: int32 = this.powerOfTen
        var lastValue: int32 = 0
        while `div` >= 1:
            var digit: int32 = (value -% lastValue) div `div`
            if digit >= 0 and digit < 10:
                if digit == 0 and index == 0:
                    discard
                else:
                    this.charArray[jPostIncrement(index)] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit]
                lastValue = lastValue +% digit *% `div`
            `div` = `div` div 10
        this.setCurrentTotalDigits(index)
        return this.charArray

method setCurrentTotalDigits*(this: PrimitiveLongUtil, currentTotalDigits: int32) {.base.} =
        this.currentTotalDigits = currentTotalDigits

method getCurrentTotalDigits*(this: PrimitiveLongUtil): int32 {.base, discardable.} =
        return this.currentTotalDigits

method getMaxDigits*(this: PrimitiveLongUtil): int32 {.base, discardable.} =
        return this.maxDigits

