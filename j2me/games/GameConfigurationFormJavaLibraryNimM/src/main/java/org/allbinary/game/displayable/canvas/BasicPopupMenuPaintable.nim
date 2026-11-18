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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/graphics/draw/DrawVerticalStringUtil as DrawVerticalStringUtilModule
export DrawVerticalStringUtilModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    BasicPopupMenuPaintable* = ref object of Paintable
        basicSetColorUtil*: BasicColorSetUtil
        drawStringUtil*: DrawVerticalStringUtil
        label*: string
        foregroundBasicColor*: BasicColor
        myFontProcessor*: MyFontProcessor
        rectangle*: Rectangle
        BORDER*: int32
        heightOffset*: int32
        offset*: int32
        animationInterface*: Animation

converter jAsUpdateMyFontInterface*(value: BasicPopupMenuPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newBasicPopupMenuPaintable*(rectangle: Rectangle, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): BasicPopupMenuPaintable
proc initBasicPopupMenuPaintable*(this: BasicPopupMenuPaintable, rectangle: Rectangle, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method updateMeasurement*(this: BasicPopupMenuPaintable, graphics: Graphics)
method init*(this: BasicPopupMenuPaintable, rectangle: Rectangle) {.base.}
method paint*(this: BasicPopupMenuPaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/animation/vector/RectangleFilledAnimation as RectangleFilledAnimationModule
export RectangleFilledAnimationModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/layer/SWTUtil as SWTUtilModule
export SWTUtilModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/graphics/threed/SWTJOGLProcessor as SWTJOGLProcessorModule
export SWTJOGLProcessorModule

var BasicPopupMenuPaintable_NAMEValue: string
var BasicPopupMenuPaintable_NAMESet = false
proc NAME*(t: typedesc[BasicPopupMenuPaintable]): string =
    if not BasicPopupMenuPaintable_NAMESet:
        BasicPopupMenuPaintable_NAMESet = true
        BasicPopupMenuPaintable_NAMEValue = "MENU"
    BasicPopupMenuPaintable_NAMEValue

# Java field initializers run after the base initializer
proc initFieldsBasicPopupMenuPaintable(this: BasicPopupMenuPaintable) =
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.drawStringUtil = DrawVerticalStringUtil.getInstance()
    
    
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    this.BORDER = 0
    this.heightOffset = 0
    this.offset = 0
    
    discard

proc initBasicPopupMenuPaintable*(this: BasicPopupMenuPaintable, rectangle: Rectangle, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initPaintable(this)
        this.initFieldsBasicPopupMenuPaintable()
        this.foregroundBasicColor = foregroundBasicColor
        this.label = BasicPopupMenuPaintable.NAME
        this.rectangle = rectangle
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        else:
            this.animationInterface = newRectangleFilledAnimation(this.rectangle.getWidth(), this.rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY)
        this.init(rectangle)

proc newBasicPopupMenuPaintable*(rectangle: Rectangle, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): BasicPopupMenuPaintable =
    result = BasicPopupMenuPaintable()
    initBasicPopupMenuPaintable(result, rectangle, backgroundBasicColor, foregroundBasicColor)

method updateMeasurement*(this: BasicPopupMenuPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        let features: Features = Features.getInstance()
        let isOpenGL: bool = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        this.drawStringUtil.updateMeasurement(graphics, this.label)
        var BORDER: int32 = 0
        if J2MEUtil.isHTML() or isOpenGL:
            BORDER = MyFontProcessor.defaultCharWidth(font) div 2
        elif AndroidUtil.isAndroid() or J2MEUtil.isJ2SE() or SWTUtil.isSWT:
            BORDER = MyFontProcessor.defaultCharWidth(font)
        else:
            BORDER = MyFontProcessor.defaultCharWidth(font) *% 2
        this.BORDER = BORDER
        this.heightOffset = this.rectangle.getHeight() -% (font.getHeight() *% BasicPopupMenuPaintable.NAME.length())
        if OpenGLFeatureUtil.getInstance().isAnyThreed():
            this.heightOffset = this.heightOffset -% font.getHeight() +% 2
            if AndroidUtil.isAndroid():
                this.heightOffset = font.getHeight()
            else:
                this.heightOffset = this.heightOffset -% font.getHeight() +% 2
        this.offset = (ashr(this.heightOffset, 1)) +% ((if SWTJOGLProcessor.getInstance().isJOGL(): 4 else: 0))
        this.myFontProcessor = MyFontProcessor.getInstance()

method init*(this: BasicPopupMenuPaintable, rectangle: Rectangle) {.base.} =
        this.rectangle = rectangle
        let width: int32 = this.rectangle.getWidth()
        let height: int32 = this.rectangle.getHeight()
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            discard
        else:
            let rectangleFilledAnimation: RectangleFilledAnimation = RectangleFilledAnimation(JObject(this.animationInterface))
            rectangleFilledAnimation.setWidth(width)
            rectangleFilledAnimation.setHeight(height)

method paint*(this: BasicPopupMenuPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let point: GPoint = this.rectangle.getPoint()
        let x: int32 = point.getX()
        let y: int32 = point.getY()
        let width: int32 = this.rectangle.getWidth()
        let height: int32 = this.rectangle.getHeight()
        this.animationInterface.paintXY(graphics, x, y)
        this.basicSetColorUtil.setBasicColorP(graphics, this.foregroundBasicColor)
        this.drawStringUtil.paintVerticle(graphics, this.label, x +% this.BORDER, y +% this.offset, 0)
        graphics.drawRect(x, y, width, height)

when declared(newBasicPopupMenuPaintableHook3):
    newBasicPopupMenuPaintableHook3 = proc (rectangle: Rectangle, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): Paintable = newBasicPopupMenuPaintable(rectangle, backgroundBasicColor, foregroundBasicColor)

