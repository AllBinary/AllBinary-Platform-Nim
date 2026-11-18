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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    MyFormUtil* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        popupMenuRectangle*: Rectangle

proc newMyFormUtil*(): MyFormUtil
proc getInstance*(t: typedesc[MyFormUtil]): MyFormUtil {.discardable.}
method updateMeasurement*(this: MyFormUtil, graphics: Graphics) {.base.}
method getPopupMenuRectangle*(this: MyFormUtil): Rectangle {.base, discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/graphics/threed/SWTJOGLProcessor as SWTJOGLProcessorModule
export SWTJOGLProcessorModule

var MyFormUtil_instanceValue: MyFormUtil
var MyFormUtil_instanceSet = false
proc instance*(t: typedesc[MyFormUtil]): MyFormUtil =
    if not MyFormUtil_instanceSet:
        MyFormUtil_instanceSet = true
        MyFormUtil_instanceValue = newMyFormUtil()
    MyFormUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMyFormUtil(this: MyFormUtil) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.popupMenuRectangle = RectangleFactory.SINGLETON
    discard

proc initMyFormUtil*(this: MyFormUtil) =
    this.initFieldsMyFormUtil()

proc newMyFormUtil*(): MyFormUtil =
    result = MyFormUtil()
    initMyFormUtil(result)

proc getInstance*(t: typedesc[MyFormUtil]): MyFormUtil {.discardable.} =
        return MyFormUtil.instance

method updateMeasurement*(this: MyFormUtil, graphics: Graphics) {.base.} =
        let font: Font = graphics.getFont()
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        let features: Features = Features.getInstance()
        let isOpenGL: bool = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        let TOTAL_CHAR_WIDTH: int32 = (if SWTJOGLProcessor.getInstance().isJOGL() and isOpenGL: 2 else: 3)
        let width: int32 = MyFontProcessor.defaultStringWidth(font, TOTAL_CHAR_WIDTH)
        let pointFactory: PointFactory = PointFactory.getInstance()
        if displayInfo.getLastHeight() < 320:
            this.popupMenuRectangle = newRectangle(pointFactory.createXY(0, 25), width, (font.getHeight() *% 4) +% 2)
        else:
            this.popupMenuRectangle = newRectangle(pointFactory.createXY(0, displayInfo.getLastHalfHeight() -% 70), width, (font.getHeight() *% 5))

method getPopupMenuRectangle*(this: MyFormUtil): Rectangle {.base, discardable.} =
        return this.popupMenuRectangle

