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
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/graphics/font/FontDebugFactory as FontDebugFactoryModule
export FontDebugFactoryModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/InitUpdatePaintable as InitUpdatePaintableModule
export InitUpdatePaintableModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    StartIntermissionPaintable* = ref object of InitUpdatePaintable
        fontDebugFactory*: FontDebugFactory
        basicSetColorUtil*: BasicColorSetUtil
        gameCanvas*: AllBinaryGameCanvas
        stringArray*: JArray[string]
        fontSize*: int32
        font*: Font
        lastWidth*: JArray[int32]
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        basicColor*: BasicColor
        color*: int32
        lineYOffsetArray*: JArray[int32]
        hasChanged*: bool
        anchor*: int32
        fontHeightP*: int32
        BEGIN_LEVEL*: string
        EMPTY_STRING*: string

converter jAsUpdateMyFontInterface*(value: StartIntermissionPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newStartIntermissionPaintable*(gameCanvas: AllBinaryGameCanvas, stringArray: JArray[string], basicColor: BasicColor, font: Font): StartIntermissionPaintable
proc initStartIntermissionPaintable*(this: StartIntermissionPaintable, gameCanvas: AllBinaryGameCanvas, stringArray: JArray[string], basicColor: BasicColor, font: Font)
method updateMeasurement*(this: StartIntermissionPaintable, graphics: Graphics)
method paint*(this: StartIntermissionPaintable, graphics: Graphics)
method update*(this: StartIntermissionPaintable)
method setBasicColorP*(this: StartIntermissionPaintable, basicColor: BasicColor)
method getBasicColorP*(this: StartIntermissionPaintable): BasicColor {.base, discardable.}
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsStartIntermissionPaintable(this: StartIntermissionPaintable) =
    this.fontDebugFactory = FontDebugFactory.getInstance()
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    
    
    
    
    
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.basicColor = BasicColorFactory.getInstance().BLACK
    
    this.lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY
    this.hasChanged = true
    this.anchor = Anchor.TOP_LEFT
    this.fontHeightP = 0
    this.BEGIN_LEVEL = "Begin Level "
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    discard

proc initStartIntermissionPaintable*(this: StartIntermissionPaintable, gameCanvas: AllBinaryGameCanvas, stringArray: JArray[string], basicColor: BasicColor, font: Font) =
        initInitUpdatePaintable(this)
        this.initFieldsStartIntermissionPaintable()
        this.gameCanvas = gameCanvas
        this.stringArray = stringArray
        this.lastWidth = newJArray[int32](this.stringArray.length, default(int32))
        this.setBasicColorP(basicColor)
        this.color = basicColor.intValue()
        this.fontSize = font.getSize()
        this.font = font

proc newStartIntermissionPaintable*(gameCanvas: AllBinaryGameCanvas, stringArray: JArray[string], basicColor: BasicColor, font: Font): StartIntermissionPaintable =
    result = StartIntermissionPaintable()
    initStartIntermissionPaintable(result, gameCanvas, stringArray, basicColor, font)

method updateMeasurement*(this: StartIntermissionPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.fontHeightP = font.getHeight()
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: StartIntermissionPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let existingFont: Font = graphics.getFont()
        this.fontDebugFactory.setFont(this.font, graphics)
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.color)
        var beginWidth: int32 = 0
        block:
            var index: int32 = this.lineYOffsetArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                if this.hasChanged:
                    this.lastWidth[index] = (ashr(graphics.getFont().stringWidth(this.stringArray[index]), 1))
                beginWidth = this.lastWidth[index]
                graphics.drawString(this.stringArray[index], displayInfo.getLastHalfWidth() -% beginWidth, displayInfo.getLastHalfHeight() -% this.lineYOffsetArray[index], this.anchor)
        this.hasChanged = false
        this.fontDebugFactory.setFont(existingFont, graphics)

method update*(this: StartIntermissionPaintable) =
        var level: int32 = this.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel()
        this.stringArray[0] = newStringMaker().append(this.BEGIN_LEVEL).appendint(level).toString()
        block:
            var index: int32 = this.stringArray.length -% 1
            while index >= 1:
                defer: index = index -% 1
                this.stringArray[index] = this.EMPTY_STRING

method setBasicColorP*(this: StartIntermissionPaintable, basicColor: BasicColor) =
        this.basicColor = basicColor

method getBasicColorP*(this: StartIntermissionPaintable): BasicColor {.base, discardable.} =
        return this.basicColor

when declared(newStartIntermissionPaintableHook4):
    newStartIntermissionPaintableHook4 = proc (gameCanvas: AllBinaryGameCanvas, stringArray: JArray[string], basicColor: BasicColor, font: Font): InitUpdatePaintable = newStartIntermissionPaintable(gameCanvas, stringArray, basicColor, font)

