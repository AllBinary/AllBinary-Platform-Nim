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
# package org.allbinary.game.paint.help

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
    HelpPaintable* = ref object of Paintable
        displayInfo*: DisplayInfoSingleton
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        anchor*: int32
        title*: string
        inputInfo*: JArray[string]
        basicColor*: BasicColor
        titleBeginWidth*: int32
        beginWidthArray*: JArray[int32]
        charHeight*: int32

converter jAsUpdateMyFontInterface*(value: HelpPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newHelpPaintable*(title: string, backgroundBasicColor: BasicColor, basicColor: BasicColor): HelpPaintable
proc initHelpPaintable*(this: HelpPaintable, title: string, backgroundBasicColor: BasicColor, basicColor: BasicColor)
method updateMeasurement*(this: HelpPaintable, graphics: Graphics)
method setInputInfoP*(this: HelpPaintable, inputInfo: JArray[string]) {.base.}
method paint*(this: HelpPaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsHelpPaintable(this: HelpPaintable) =
    this.displayInfo = DisplayInfoSingleton.getInstance()
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.anchor = Anchor.TOP_LEFT
    
    this.inputInfo = StringUtil.getInstance().getArrayInstance()
    
    this.titleBeginWidth = 0
    this.beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
    this.charHeight = 0
    discard

proc initHelpPaintable*(this: HelpPaintable, title: string, backgroundBasicColor: BasicColor, basicColor: BasicColor) =
        initPaintable(this)
        this.initFieldsHelpPaintable()
        this.title = title
        this.basicColor = basicColor

proc newHelpPaintable*(title: string, backgroundBasicColor: BasicColor, basicColor: BasicColor): HelpPaintable =
    result = HelpPaintable()
    initHelpPaintable(result, title, backgroundBasicColor, basicColor)

method updateMeasurement*(this: HelpPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.titleBeginWidth = (ashr(font.stringWidth(this.title), 1))
        this.charHeight = font.getHeight()
        let size: int32 = this.inputInfo.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.beginWidthArray[index] = (ashr(font.stringWidth(this.inputInfo[index]), 1))
        this.myFontProcessor = MyFontProcessor.getInstance()

method setInputInfoP*(this: HelpPaintable, inputInfo: JArray[string]) {.base.} =
        this.inputInfo = inputInfo
        this.beginWidthArray = newJArray[int32](this.inputInfo.length, default(int32))
        this.myFontProcessor = this.updateMyFontProcessor

method paint*(this: HelpPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let halfWidth: int32 = this.displayInfo.getLastHalfWidth()
        graphics.setColor(this.basicColor.intValue())
        graphics.drawString(this.title, halfWidth -% this.titleBeginWidth, this.charHeight, this.anchor)
        let size: int32 = this.inputInfo.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                graphics.drawString(this.inputInfo[index], halfWidth -% this.beginWidthArray[index], (index +% 3) *% this.charHeight, this.anchor)

when declared(newHelpPaintableHook3):
    newHelpPaintableHook3 = proc (title: string, backgroundBasicColor: BasicColor, basicColor: BasicColor): Paintable = newHelpPaintable(title, backgroundBasicColor, basicColor)

