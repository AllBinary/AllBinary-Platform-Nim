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
# package org.allbinary.game.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

#J2MEForJ2ME
type
    OwnershipPaintable* = ref object of Paintable
        logUtil*: LogUtil
        displayInfo*: DisplayInfoSingleton
        myFontProcessor*: MyFontProcessor
        COPYRIGHT*: string
        basicColor*: BasicColor
        color*: int32
        anchor*: int32
        COPYRIGHT_Y*: int32
        beginWidth*: int32

converter jAsUpdateMyFontInterface*(value: OwnershipPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newOwnershipPaintable*(): OwnershipPaintable
proc initOwnershipPaintable*(this: OwnershipPaintable)
proc getInstance*(t: typedesc[OwnershipPaintable]): OwnershipPaintable {.discardable.}
method updateMeasurement*(this: OwnershipPaintable, graphics: Graphics)
method setBasicColorP*(this: OwnershipPaintable, basicColor: BasicColor)
method getBasicColorP*(this: OwnershipPaintable): BasicColor {.base, discardable.}
method paint*(this: OwnershipPaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsOwnershipPaintable(this: OwnershipPaintable) =
    this.logUtil = LogUtil.getInstance()
    this.displayInfo = DisplayInfoSingleton.getInstance()
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.COPYRIGHT = "AllBinary Copyright (c) 2011"
    this.basicColor = BasicColorFactory.getInstance().WHITE
    this.color = this.basicColor.intValue()
    this.anchor = Anchor.TOP_LEFT
    this.COPYRIGHT_Y = 0
    this.beginWidth = 0
    discard

proc getInstance*(t: typedesc[OwnershipPaintable]): OwnershipPaintable {.discardable.} =
        return newOwnershipPaintable()

proc initOwnershipPaintable*(this: OwnershipPaintable) =
        initPaintable(this)
        this.initFieldsOwnershipPaintable()
        discard

proc newOwnershipPaintable*(): OwnershipPaintable =
    result = OwnershipPaintable()
    initOwnershipPaintable(result)

method updateMeasurement*(this: OwnershipPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.COPYRIGHT_Y = 2 *% font.getHeight()
        this.beginWidth = (ashr(font.stringWidth(this.COPYRIGHT), 1))
        this.myFontProcessor = MyFontProcessor.getInstance()

method setBasicColorP*(this: OwnershipPaintable, basicColor: BasicColor) =
        this.basicColor = basicColor
        this.color = basicColor.intValue()

method getBasicColorP*(this: OwnershipPaintable): BasicColor {.base, discardable.} =
        return this.basicColor

method paint*(this: OwnershipPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        graphics.setColor(this.color)
        let halfWidth: int32 = this.displayInfo.getLastHalfWidth()
        let height: int32 = this.displayInfo.getLastHeight()
        graphics.drawString(this.COPYRIGHT, halfWidth -% this.beginWidth, height -% this.COPYRIGHT_Y, this.anchor)

when declared(newOwnershipPaintableHook0):
    newOwnershipPaintableHook0 = proc (): Paintable = newOwnershipPaintable()

