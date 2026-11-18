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
# package org.allbinary.graphics.paint

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

type
    SimpleTextPaintable* = ref object of Paintable
        displayInfoSingleton*: DisplayInfoSingleton
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        text*: string
        basicColor*: BasicColor
        topScoresWidth*: int32
        fontHeight*: int32
        anchor*: int32

converter jAsUpdateMyFontInterface*(value: SimpleTextPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newSimpleTextPaintable*(text: string, basicColor: BasicColor): SimpleTextPaintable
proc initSimpleTextPaintable*(this: SimpleTextPaintable, text: string, basicColor: BasicColor)
method updateMeasurement*(this: SimpleTextPaintable, graphics: Graphics)
method paint*(this: SimpleTextPaintable, graphics: Graphics)
method setBasicColorP*(this: SimpleTextPaintable, basicColor: BasicColor)
method getBasicColorP*(this: SimpleTextPaintable): BasicColor {.base, discardable.}
method setText*(this: SimpleTextPaintable, text: string) {.base.}
method getText*(this: SimpleTextPaintable): string {.base, discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsSimpleTextPaintable(this: SimpleTextPaintable) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    
    
    this.topScoresWidth = 0
    this.fontHeight = 0
    this.anchor = Anchor.TOP_LEFT
    discard

proc initSimpleTextPaintable*(this: SimpleTextPaintable, text: string, basicColor: BasicColor) =
        initPaintable(this)
        this.initFieldsSimpleTextPaintable()
        this.text = text
        this.basicColor = basicColor

proc newSimpleTextPaintable*(text: string, basicColor: BasicColor): SimpleTextPaintable =
    result = SimpleTextPaintable()
    initSimpleTextPaintable(result, text, basicColor)

method updateMeasurement*(this: SimpleTextPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.topScoresWidth = (ashr(font.stringWidth(this.text), 1))
        this.fontHeight = font.getHeight()
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: SimpleTextPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let width: int32 = this.displayInfoSingleton.getLast()[this.displayInfoSingleton.WIDTH]
        graphics.setColor(this.getBasicColorP().intValue())
        graphics.drawString(this.text, (ashr(width, 1)) -% this.topScoresWidth, this.fontHeight, this.anchor)

method setBasicColorP*(this: SimpleTextPaintable, basicColor: BasicColor) =
        this.basicColor = basicColor

method getBasicColorP*(this: SimpleTextPaintable): BasicColor {.base, discardable.} =
        return this.basicColor

method setText*(this: SimpleTextPaintable, text: string) {.base.} =
        this.text = text
        this.myFontProcessor = this.updateMyFontProcessor

method getText*(this: SimpleTextPaintable): string {.base, discardable.} =
        return this.text

when declared(newSimpleTextPaintableHook2):
    newSimpleTextPaintableHook2 = proc (text: string, basicColor: BasicColor): Paintable = newSimpleTextPaintable(text, basicColor)

