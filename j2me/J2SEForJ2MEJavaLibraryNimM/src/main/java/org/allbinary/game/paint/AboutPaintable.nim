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
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

#J2SEForJ2ME
type
    AboutPaintable* = ref object of Paintable
        displayInfoSingleton*: DisplayInfoSingleton
        ABOUT*: string
        info*: JArray[string]
        developers*: JArray[string]
        paintableArray*: JArray[Paintable]
        myFontProcessor*: MyFontProcessor
        charHeight*: int32
        aboutBeginWidth*: int32
        infoBeginWidth*: JArray[int32]
        developersBeginWidth*: JArray[int32]
        anchor*: int32

converter jAsUpdateMyFontInterface*(value: AboutPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newAboutPaintable*(info: JArray[string], developers: JArray[string]): AboutPaintable
proc initAboutPaintable*(this: AboutPaintable, info: JArray[string], developers: JArray[string])
proc getInstance*(t: typedesc[AboutPaintable], info: JArray[string], developers: JArray[string]): AboutPaintable {.discardable.}
method updateMeasurement*(this: AboutPaintable, graphics: Graphics)
method getPaintableArrayInstance*(this: AboutPaintable): JArray[Paintable] {.base, discardable.}
method paint*(this: AboutPaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsAboutPaintable(this: AboutPaintable) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.ABOUT = CanvasStrings.getInstance().ABOUT
    
    
    this.paintableArray = newJArrayFromRefs[Paintable](this)
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.charHeight = 0
    this.aboutBeginWidth = 0
    
    
    this.anchor = Anchor.TOP_LEFT
    discard

proc getInstance*(t: typedesc[AboutPaintable], info: JArray[string], developers: JArray[string]): AboutPaintable {.discardable.} =
        return newAboutPaintable(info, developers)

proc initAboutPaintable*(this: AboutPaintable, info: JArray[string], developers: JArray[string]) =
        initPaintable(this)
        this.initFieldsAboutPaintable()
        this.info = info
        this.infoBeginWidth = newJArray[int32](this.info.length, default(int32))
        this.developers = developers
        this.developersBeginWidth = newJArray[int32](this.developers.length, default(int32))

proc newAboutPaintable*(info: JArray[string], developers: JArray[string]): AboutPaintable =
    result = AboutPaintable()
    initAboutPaintable(result, info, developers)

method updateMeasurement*(this: AboutPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.charHeight = font.getHeight()
        this.aboutBeginWidth = (ashr(font.stringWidth(this.ABOUT), 1))
        let infoSize: int32 = this.info.length
        block:
            var index: int32 = 0
            while index < infoSize:
                defer: index = index +% 1
                this.infoBeginWidth[index] = (ashr(font.stringWidth(this.info[index]), 1))
        let size: int32 = this.developers.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.developersBeginWidth[index] = (ashr(font.stringWidth(this.developers[index]), 1))
        this.myFontProcessor = MyFontProcessor.getInstance()

method getPaintableArrayInstance*(this: AboutPaintable): JArray[Paintable] {.base, discardable.} =
        return this.paintableArray

method paint*(this: AboutPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let halfWidth: int32 = this.displayInfoSingleton.getLastHalfWidth()
        graphics.drawString(this.ABOUT, halfWidth -% this.aboutBeginWidth, 2 *% this.charHeight, this.anchor)
        let infoSize: int32 = this.info.length
        block:
            var index: int32 = 0
            while index < infoSize:
                defer: index = index +% 1
                graphics.drawString(this.info[index], halfWidth -% this.infoBeginWidth[index], (4 +% index) *% this.charHeight, this.anchor)
        let size: int32 = this.developers.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                graphics.drawString(this.developers[index], halfWidth -% this.developersBeginWidth[index], (5 +% infoSize +% index) *% this.charHeight, this.anchor)

when declared(newAboutPaintableHook2):
    newAboutPaintableHook2 = proc (info: JArray[string], developers: JArray[string]): Paintable = newAboutPaintable(info, developers)

