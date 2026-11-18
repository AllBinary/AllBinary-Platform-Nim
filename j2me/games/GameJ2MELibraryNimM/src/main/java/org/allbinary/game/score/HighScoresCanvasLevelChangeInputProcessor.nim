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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/score/displayable/HighScoresCanvas as HighScoresCanvasModule
export HighScoresCanvasModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/game/score/HighScoresCanvasInputProcessor as HighScoresCanvasInputProcessorModule
export HighScoresCanvasInputProcessorModule

type
    HighScoresCanvasLevelChangeInputProcessor* = ref object of HighScoresCanvasInputProcessor
        displayInfoSingleton*: DisplayInfoSingleton
        INSTRUCTIONS*: string
        myFontProcessor*: MyFontProcessor
        anchor*: int32
        fontHeight*: int32

converter jAsUpdateMyFontInterface*(value: HighScoresCanvasLevelChangeInputProcessor): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newHighScoresCanvasLevelChangeInputProcessor*(highScoresCanvas: HighScoresCanvas): HighScoresCanvasLevelChangeInputProcessor
proc initHighScoresCanvasLevelChangeInputProcessor*(this: HighScoresCanvasLevelChangeInputProcessor, highScoresCanvas: HighScoresCanvas)
method updateMeasurement*(this: HighScoresCanvasLevelChangeInputProcessor, graphics: Graphics)
method open*(this: HighScoresCanvasLevelChangeInputProcessor)
method close*(this: HighScoresCanvasLevelChangeInputProcessor)
method update*(this: HighScoresCanvasLevelChangeInputProcessor)
method paint*(this: HighScoresCanvasLevelChangeInputProcessor, graphics: Graphics)
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/game/input/event/GameKeyEventHandler as GameKeyEventHandlerModule
export GameKeyEventHandlerModule
import org/allbinary/game/input/event/GameKeyEventUtil as GameKeyEventUtilModule
export GameKeyEventUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule


# Java field initializers run after the base initializer
proc initFieldsHighScoresCanvasLevelChangeInputProcessor(this: HighScoresCanvasLevelChangeInputProcessor) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.anchor = Anchor.TOP_LEFT
    this.fontHeight = 0
    discard

proc initHighScoresCanvasLevelChangeInputProcessor*(this: HighScoresCanvasLevelChangeInputProcessor, highScoresCanvas: HighScoresCanvas) =
        initHighScoresCanvasInputProcessor(this, highScoresCanvas)
        this.initFieldsHighScoresCanvasLevelChangeInputProcessor()

proc newHighScoresCanvasLevelChangeInputProcessor*(highScoresCanvas: HighScoresCanvas): HighScoresCanvasLevelChangeInputProcessor =
    result = HighScoresCanvasLevelChangeInputProcessor()
    initHighScoresCanvasLevelChangeInputProcessor(result, highScoresCanvas)

method updateMeasurement*(this: HighScoresCanvasLevelChangeInputProcessor, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.fontHeight = font.getHeight()
        this.myFontProcessor = MyFontProcessor.getInstance()

method open*(this: HighScoresCanvasLevelChangeInputProcessor) =
        GameKeyEventHandler.getInstance().addListener(this)

method close*(this: HighScoresCanvasLevelChangeInputProcessor) =
        GameKeyEventHandler.getInstance().removeListener(this)

method update*(this: HighScoresCanvasLevelChangeInputProcessor) =
        let list: BasicArrayList = this.getGameKeyEventList()
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let anyType: JObject = list.objectArray[index]
                let key: int32 = GameKeyEventUtil.getKey(anyType)
                if key == Canvas.RIGHT:
                    this.getHighScoresCanvas().getGameInfo().nextGameLevel()
                elif key == Canvas.LEFT:
                    this.getHighScoresCanvas().getGameInfo().previousGameLevel()
                this.getHighScoresCanvas().executeUpdate()
        list.clear()

method paint*(this: HighScoresCanvasLevelChangeInputProcessor, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let width: int32 = this.displayInfoSingleton.getLastWidth()
        let topScoresWidth: int32 = (ashr(graphics.getFont().stringWidth(this.INSTRUCTIONS), 1))
        graphics.drawString(this.INSTRUCTIONS, (ashr(width, 1)) -% topScoresWidth, this.fontHeight *% 2, this.anchor)

when declared(newHighScoresCanvasLevelChangeInputProcessorHook1):
    newHighScoresCanvasLevelChangeInputProcessorHook1 = proc (highScoresCanvas: HighScoresCanvas): HighScoresCanvasInputProcessor = newHighScoresCanvasLevelChangeInputProcessor(highScoresCanvas)

