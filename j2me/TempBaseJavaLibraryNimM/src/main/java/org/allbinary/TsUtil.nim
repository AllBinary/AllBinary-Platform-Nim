#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Float as FloatModule
export FloatModule
import java/lang/Double as DoubleModule
export DoubleModule

#TempBase
type
    TsUtil* = ref object of JObject

proc newTsUtil*(): TsUtil
proc getInstance*(t: typedesc[TsUtil]): TsUtil {.discardable.}
method longBitsToDouble*(this: TsUtil, bits: int64): float64 {.base, discardable.}
method intBitsToFloat*(this: TsUtil, bits: int32): float32 {.base, discardable.}
method hashCode*(this: TsUtil, anyType: JObject): int32 {.base, discardable.}
method waitFor*(this: TsUtil, any: JObject, timeoutMillis: int64) {.base.}
method compareTo*(this: TsUtil, a: string, b: string): int32 {.base, discardable.}

var TsUtil_instanceValue: TsUtil
var TsUtil_instanceSet = false
proc instance*(t: typedesc[TsUtil]): TsUtil =
    if not TsUtil_instanceSet:
        TsUtil_instanceSet = true
        TsUtil_instanceValue = newTsUtil()
    TsUtil_instanceValue

proc initTsUtil*(this: TsUtil) =
    discard

proc newTsUtil*(): TsUtil =
    result = TsUtil()
    initTsUtil(result)

proc getInstance*(t: typedesc[TsUtil]): TsUtil {.discardable.} =
        return TsUtil.instance

method longBitsToDouble*(this: TsUtil, bits: int64): float64 {.base, discardable.} =
        return Double.longBitsToDouble(bits)

method intBitsToFloat*(this: TsUtil, bits: int32): float32 {.base, discardable.} =
        return Float.intBitsToFloat(bits)

method hashCode*(this: TsUtil, anyType: JObject): int32 {.base, discardable.} =
        return anyType.hashCode()

method waitFor*(this: TsUtil, any: JObject, timeoutMillis: int64) {.base.} =
        let anyType: JObject = JObject(any)
        anyType.wait(timeoutMillis)

method compareTo*(this: TsUtil, a: string, b: string): int32 {.base, discardable.} =
        return jCompareTo(a, b)

