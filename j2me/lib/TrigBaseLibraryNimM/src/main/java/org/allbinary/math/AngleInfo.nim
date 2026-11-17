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
import org/allbinary/math/AngleIncrementInfo as AngleIncrementInfoModule
export AngleIncrementInfoModule
import org/allbinary/math/FrameUtil as FrameUtilModule
export FrameUtilModule

type
    AngleInfo* = ref object of JObject
        angleIncrementInfo*: AngleIncrementInfo
        angle*: int16
        frameUtil*: FrameUtil

proc newAngleInfo*(angleIncrementInfo: AngleIncrementInfo): AngleInfo
proc initAngleInfo*(this: AngleInfo, angleIncrementInfo: AngleIncrementInfo)
proc getInstance*(t: typedesc[AngleInfo], angleIncrement: int16): AngleInfo {.discardable.}
method adjustAngle*(this: AngleInfo, frame: int32) {.base.}
method getAngle*(this: AngleInfo): int16 {.base, discardable.}
method setAngle*(this: AngleInfo, angle: int16) {.base.}
method getAngleIncrementInfo*(this: AngleInfo): AngleIncrementInfo {.base, discardable.}
method toString*(this: AngleInfo): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/math/AngleIncrementInfoFactory as AngleIncrementInfoFactoryModule
export AngleIncrementInfoFactoryModule

var AngleInfo_ANGLEValue: string
var AngleInfo_ANGLESet = false
proc ANGLE*(t: typedesc[AngleInfo]): string =
    if not AngleInfo_ANGLESet:
        AngleInfo_ANGLESet = true
        AngleInfo_ANGLEValue = "Angle: "
    AngleInfo_ANGLEValue

# Java field initializers run after the base initializer
proc initFieldsAngleInfo(this: AngleInfo) =
    
    this.angle = 0
    this.frameUtil = FrameUtil.getInstance()
    discard

proc getInstance*(t: typedesc[AngleInfo], angleIncrement: int16): AngleInfo {.discardable.} =
        return newAngleInfo(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement))

proc initAngleInfo*(this: AngleInfo, angleIncrementInfo: AngleIncrementInfo) =
        this.initFieldsAngleInfo()
        this.angleIncrementInfo = angleIncrementInfo

proc newAngleInfo*(angleIncrementInfo: AngleIncrementInfo): AngleInfo =
    result = AngleInfo()
    initAngleInfo(result, angleIncrementInfo)

method adjustAngle*(this: AngleInfo, frame: int32) {.base.} =
        let newAngle: int32 = int32(this.angleIncrementInfo.getAngleIncrement()) *% frame -% 90
        this.setAngle(jToInt16(this.frameUtil.adjustAngleToFrameAngle(newAngle)))

method getAngle*(this: AngleInfo): int16 {.base, discardable.} =
        return this.angle

method setAngle*(this: AngleInfo, angle: int16) {.base.} =
        this.angle = angle

method getAngleIncrementInfo*(this: AngleInfo): AngleIncrementInfo {.base, discardable.} =
        return this.angleIncrementInfo

method toString*(this: AngleInfo): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(AngleInfo.ANGLE)
        stringBuffer.appendshort(this.angle)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(StringUtil.getInstance().toString(this.getAngleIncrementInfo()))
        return stringBuffer.toString()

