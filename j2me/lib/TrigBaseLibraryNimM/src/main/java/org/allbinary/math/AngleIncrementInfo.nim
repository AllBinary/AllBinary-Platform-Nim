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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/math/FrameUtil as FrameUtilModule
export FrameUtilModule

type
    AngleIncrementInfo* = ref object of JObject
        angleIncrement*: int16
        DOWN_FRAME*: int32
        UP_FRAME*: int32
        LEFT_FRAME*: int32
        RIGHT_FRAME*: int32
        frameUtil*: FrameUtil

proc newAngleIncrementInfo*(angleIncrement: int16): AngleIncrementInfo
proc initAngleIncrementInfo*(this: AngleIncrementInfo, angleIncrement: int16)
method getFrameAngle*(this: AngleIncrementInfo, frame: int32): int32 {.base, discardable.}
method getAngleIncrement*(this: AngleIncrementInfo): int16 {.base, discardable.}
method toString*(this: AngleIncrementInfo): string {.discardable.}
method getClosestGeneralDirection*(this: AngleIncrementInfo, angle: int16): int32 {.base, discardable.}
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule

var AngleIncrementInfo_INCREMENTValue: string
var AngleIncrementInfo_INCREMENTSet = false
proc INCREMENT*(t: typedesc[AngleIncrementInfo]): string =
    if not AngleIncrementInfo_INCREMENTSet:
        AngleIncrementInfo_INCREMENTSet = true
        AngleIncrementInfo_INCREMENTValue = "Inc: "
    AngleIncrementInfo_INCREMENTValue

# Java field initializers run after the base initializer
proc initFieldsAngleIncrementInfo(this: AngleIncrementInfo) =
    
    
    
    
    
    this.frameUtil = FrameUtil.getInstance()
    discard

proc initAngleIncrementInfo*(this: AngleIncrementInfo, angleIncrement: int16) =
        this.initFieldsAngleIncrementInfo()
        this.angleIncrement = angleIncrement
        let angleFactory: AngleFactory = AngleFactory.getInstance()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        this.DOWN_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.DOWN.getValue() div this.angleIncrement)
        this.UP_FRAME = smallIntegerSingletonFactory.getAt(int32(angleFactory.UP.getValue()))
        this.LEFT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.LEFT.getValue() div this.angleIncrement)
        this.RIGHT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.RIGHT.getValue() div this.angleIncrement)

proc newAngleIncrementInfo*(angleIncrement: int16): AngleIncrementInfo =
    result = AngleIncrementInfo()
    initAngleIncrementInfo(result, angleIncrement)

method getFrameAngle*(this: AngleIncrementInfo, frame: int32): int32 {.base, discardable.} =
        return this.frameUtil.getFrameAngle(frame, int32(this.angleIncrement))

method getAngleIncrement*(this: AngleIncrementInfo): int16 {.base, discardable.} =
        return this.angleIncrement

method toString*(this: AngleIncrementInfo): string {.discardable.} =
        return newStringMaker().append(AngleIncrementInfo.INCREMENT).appendshort(this.angleIncrement).toString()

method getClosestGeneralDirection*(this: AngleIncrementInfo, angle: int16): int32 {.base, discardable.} =
        var closestDirection: int32 = SmallIntegerSingletonFactory.getInstance().getAt(360)
        if this.UP_FRAME.intValue() -% angle < closestDirection.intValue() -% angle:
            closestDirection = this.UP_FRAME
        if this.DOWN_FRAME.intValue() -% angle < closestDirection.intValue() -% angle:
            closestDirection = this.DOWN_FRAME
        if this.LEFT_FRAME.intValue() -% angle < closestDirection.intValue() -% angle:
            closestDirection = this.LEFT_FRAME
        if this.RIGHT_FRAME.intValue() -% angle < closestDirection.intValue() -% angle:
            closestDirection = this.RIGHT_FRAME
        return closestDirection.intValue()

