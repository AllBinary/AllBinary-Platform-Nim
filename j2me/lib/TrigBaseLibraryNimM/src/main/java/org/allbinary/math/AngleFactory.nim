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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/math/NamedAngle as NamedAngleModule
export NamedAngleModule
import org/allbinary/math/FrameUtil as FrameUtilModule
export FrameUtilModule

type
    AngleFactory* = ref object of JObject
        logUtil*: LogUtil
        TOTAL_ANGLE*: int16
        QUARTER_TOTAL_ANGLE*: int16
        angleArray*: JArray[Angle]
        NEGATIVE_ONE*: int16
        NOT_ANGLE*: NamedAngle
        DOWN*: NamedAngle
        UP*: NamedAngle
        LEFT*: NamedAngle
        RIGHT*: NamedAngle
        frameUtil*: FrameUtil

proc newAngleFactory*(): AngleFactory
proc initAngleFactory*(this: AngleFactory)
proc getInstance*(t: typedesc[AngleFactory]): AngleFactory {.discardable.}
method getAt*(this: AngleFactory, index: int32): Angle {.base, discardable.}
method getClosestDirection*(this: AngleFactory, angle: int32): Angle {.base, discardable.}
method getGeneralDirection*(this: AngleFactory): Angle {.base, discardable.}
proc main*(t: typedesc[AngleFactory], args: JArray[string])
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonPhoneStrings as CommonPhoneStringsModule
export CommonPhoneStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var AngleFactory_instanceValue: AngleFactory
var AngleFactory_instanceSet = false
proc instance*(t: typedesc[AngleFactory]): AngleFactory =
    if not AngleFactory_instanceSet:
        AngleFactory_instanceSet = true
        AngleFactory_instanceValue = newAngleFactory()
    AngleFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAngleFactory(this: AngleFactory) =
    this.logUtil = LogUtil.getInstance()
    this.TOTAL_ANGLE = 360
    this.QUARTER_TOTAL_ANGLE = 90
    this.angleArray = newJArray[Angle](int32(this.TOTAL_ANGLE), default(Angle))
    this.NEGATIVE_ONE = jToInt16(-1)
    this.NOT_ANGLE = newNamedAngle(this.NEGATIVE_ONE, CommonStrings.getInstance().EMPTY)
    
    
    
    
    this.frameUtil = FrameUtil.getInstance()
    discard

proc getInstance*(t: typedesc[AngleFactory]): AngleFactory {.discardable.} =
        return AngleFactory.instance

proc initAngleFactory*(this: AngleFactory) =
        this.initFieldsAngleFactory()
        let commonPhoneStrings: CommonPhoneStrings = CommonPhoneStrings.getInstance()
        let total: int16 = jToInt16(this.angleArray.length)
        this.UP = newNamedAngle(jToInt16(0), commonPhoneStrings.UP)
        this.angleArray[0] = this.UP
        block:
            var index: int32 = 1
            while index < 90:
                defer: index = index +% 1
                this.angleArray[index] = newAngle(jToInt16(index))
        this.RIGHT = newNamedAngle(jToInt16(90), commonPhoneStrings.RIGHT)
        this.angleArray[90] = this.RIGHT
        block:
            var index: int32 = 91
            while index < 180:
                defer: index = index +% 1
                this.angleArray[index] = newAngle(jToInt16(index))
        this.DOWN = newNamedAngle(jToInt16(180), commonPhoneStrings.DOWN)
        this.angleArray[180] = this.DOWN
        block:
            var index: int32 = 181
            while index < 270:
                defer: index = index +% 1
                this.angleArray[index] = newAngle(jToInt16(index))
        this.LEFT = newNamedAngle(jToInt16(270), commonPhoneStrings.LEFT)
        this.angleArray[270] = this.LEFT
        block:
            var index: int32 = 271
            while index < int32(total):
                defer: index = index +% 1
                this.angleArray[index] = newAngle(jToInt16(index))

proc newAngleFactory*(): AngleFactory =
    result = AngleFactory()
    initAngleFactory(result)

method getAt*(this: AngleFactory, index: int32): Angle {.base, discardable.} =
        let adjustedIndex: int32 = this.frameUtil.adjustAngleToFrameAngle(index)
        return this.angleArray[adjustedIndex]

method getClosestDirection*(this: AngleFactory, angle: int32): Angle {.base, discardable.} =
        if (angle >= 315 and angle < 360) or (angle >= 0 and angle < 45):
            return this.UP
        elif angle >= 45 and angle < 135:
            return this.RIGHT
        elif angle >= 135 and angle < 225:
            return this.DOWN
        elif angle >= 225 and angle < 315:
            return this.LEFT
        raise newJException("RuntimeException", "")

method getGeneralDirection*(this: AngleFactory): Angle {.base, discardable.} =
        return this.NOT_ANGLE

proc main*(t: typedesc[AngleFactory], args: JArray[string]) =
        let stringMaker: StringMaker = newStringMaker()
        let angleFactory: AngleFactory = AngleFactory.getInstance()
        block:
            var index: int32 = 0
            while index < 360:
                defer: index = index +% 1
                stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort(angleFactory.getClosestDirection(index).getValue()).append(CommonSeps.getInstance().NEW_LINE)
        LogUtil.getInstance().putF(stringMaker.toString(), "main", "main")

