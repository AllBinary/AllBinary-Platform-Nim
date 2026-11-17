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

type
    FrameUtil* = ref object of JObject

proc newFrameUtil*(): FrameUtil
proc initFrameUtil*(this: FrameUtil)
proc getInstance*(t: typedesc[FrameUtil]): FrameUtil {.discardable.}
method getFrameForAngle*(this: FrameUtil, angle: int16, angleIncrement: int32): int32 {.base, discardable.}
method getFrameAngle*(this: FrameUtil, frame: int32, angleIncrement: int32): int32 {.base, discardable.}
method adjustAngleToFrameAngle*(this: FrameUtil, currentAngle: int32): int32 {.base, discardable.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule

var FrameUtil_instanceValue: FrameUtil
var FrameUtil_instanceSet = false
proc instance*(t: typedesc[FrameUtil]): FrameUtil =
    if not FrameUtil_instanceSet:
        FrameUtil_instanceSet = true
        FrameUtil_instanceValue = newFrameUtil()
    FrameUtil_instanceValue

proc getInstance*(t: typedesc[FrameUtil]): FrameUtil {.discardable.} =
        return FrameUtil.instance

proc initFrameUtil*(this: FrameUtil) =
        discard
        discard

proc newFrameUtil*(): FrameUtil =
    result = FrameUtil()
    initFrameUtil(result)

method getFrameForAngle*(this: FrameUtil, angle: int16, angleIncrement: int32): int32 {.base, discardable.} =
        return this.adjustAngleToFrameAngle(int32(angle)) div angleIncrement

method getFrameAngle*(this: FrameUtil, frame: int32, angleIncrement: int32): int32 {.base, discardable.} =
        let frameAngle: int32 = angleIncrement *% frame -% 90
        return this.adjustAngleToFrameAngle(frameAngle)

method adjustAngleToFrameAngle*(this: FrameUtil, currentAngle: int32): int32 {.base, discardable.} =
        var currentAngle = currentAngle
        let angleFactory: AngleFactory = AngleFactory.getInstance()
        if currentAngle > 359:
            currentAngle = (currentAngle -% int32(angleFactory.TOTAL_ANGLE))
            while currentAngle > 359:
                currentAngle = (currentAngle -% int32(angleFactory.TOTAL_ANGLE))
        if currentAngle < 0:
            currentAngle = (currentAngle +% int32(angleFactory.TOTAL_ANGLE))
            while currentAngle < 0:
                currentAngle = (currentAngle +% int32(angleFactory.TOTAL_ANGLE))
        return currentAngle

