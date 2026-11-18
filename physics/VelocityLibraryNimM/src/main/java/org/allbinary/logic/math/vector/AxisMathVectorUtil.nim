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
# package org.allbinary.logic.math.vector

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/math/NoDecimalTrigTable as NoDecimalTrigTableModule
export NoDecimalTrigTableModule

type
    AxisMathVectorUtil* = ref object of JObject
        noDecimalTrigTable*: NoDecimalTrigTable

proc newAxisMathVectorUtil*(): AxisMathVectorUtil
proc getInstance*(t: typedesc[AxisMathVectorUtil]): AxisMathVectorUtil {.discardable.}
method calculateX*(this: AxisMathVectorUtil, magnitude: int64, angle: int32): int64 {.base, discardable.}
method calculateY*(this: AxisMathVectorUtil, magnitude: int64, angle: int32): int64 {.base, discardable.}
method calculateZ*(this: AxisMathVectorUtil, magnitude: int64, otherAngle: int32): int64 {.base, discardable.}

var AxisMathVectorUtil_instanceValue: AxisMathVectorUtil
var AxisMathVectorUtil_instanceSet = false
proc instance*(t: typedesc[AxisMathVectorUtil]): AxisMathVectorUtil =
    if not AxisMathVectorUtil_instanceSet:
        AxisMathVectorUtil_instanceSet = true
        AxisMathVectorUtil_instanceValue = newAxisMathVectorUtil()
    AxisMathVectorUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAxisMathVectorUtil(this: AxisMathVectorUtil) =
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    discard

proc initAxisMathVectorUtil*(this: AxisMathVectorUtil) =
    this.initFieldsAxisMathVectorUtil()

proc newAxisMathVectorUtil*(): AxisMathVectorUtil =
    result = AxisMathVectorUtil()
    initAxisMathVectorUtil(result)

proc getInstance*(t: typedesc[AxisMathVectorUtil]): AxisMathVectorUtil {.discardable.} =
        return AxisMathVectorUtil.instance

method calculateX*(this: AxisMathVectorUtil, magnitude: int64, angle: int32): int64 {.base, discardable.} =
        return magnitude *% this.noDecimalTrigTable.cos(angle) div 10'i64

method calculateY*(this: AxisMathVectorUtil, magnitude: int64, angle: int32): int64 {.base, discardable.} =
        return magnitude *% this.noDecimalTrigTable.sin(angle) div 10'i64

method calculateZ*(this: AxisMathVectorUtil, magnitude: int64, otherAngle: int32): int64 {.base, discardable.} =
        return magnitude *% this.noDecimalTrigTable.sin(otherAngle) div 10'i64

