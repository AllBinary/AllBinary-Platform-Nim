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
# package org.allbinary.math

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule

type
    DistanceUtil* = ref object of JObject
        mathUtil*: MathUtil

proc newDistanceUtil*(): DistanceUtil
proc getInstance*(t: typedesc[DistanceUtil]): DistanceUtil {.discardable.}
method getDistance*(this: DistanceUtil, x1: int32, y1: int32, x2: int32, y2: int32): int32 {.base, discardable.}

var DistanceUtil_instanceValue: DistanceUtil
var DistanceUtil_instanceSet = false
proc instance*(t: typedesc[DistanceUtil]): DistanceUtil =
    if not DistanceUtil_instanceSet:
        DistanceUtil_instanceSet = true
        DistanceUtil_instanceValue = newDistanceUtil()
    DistanceUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDistanceUtil(this: DistanceUtil) =
    this.mathUtil = MathUtil.getInstance()
    discard

proc initDistanceUtil*(this: DistanceUtil) =
    this.initFieldsDistanceUtil()

proc newDistanceUtil*(): DistanceUtil =
    result = DistanceUtil()
    initDistanceUtil(result)

proc getInstance*(t: typedesc[DistanceUtil]): DistanceUtil {.discardable.} =
        return DistanceUtil.instance

method getDistance*(this: DistanceUtil, x1: int32, y1: int32, x2: int32, y2: int32): int32 {.base, discardable.} =
        let dx: int32 = x1 -% x2
        let dy: int32 = y1 -% y2
        return this.mathUtil.sqrt((dx *% dx) +% (dy *% dy))

