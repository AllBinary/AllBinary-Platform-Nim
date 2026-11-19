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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/ColorChangeListener as ColorChangeListenerModule
export ColorChangeListenerModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule

type
    HighScoresPaintable* = ref object of Paintable
        displayInfoSingleton*: DisplayInfoSingleton
        myFontProcessor*: MyFontProcessor
        basicColor*: BasicColor
        highScores*: HighScores
        anchor*: int32
        charHeight*: int32

converter jAsColorChangeListener*(value: HighScoresPaintable): ColorChangeListener = cast[ColorChangeListener](value)
converter jAsEventListenerInterface*(value: HighScoresPaintable): EventListenerInterface = cast[EventListenerInterface](value)
converter jAsUpdateMyFontInterface*(value: HighScoresPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newHighScoresPaintable*(): HighScoresPaintable
proc initHighScoresPaintable*(this: HighScoresPaintable)
method updateMeasurement*(this: HighScoresPaintable, graphics: Graphics)
method onEvent*(this: HighScoresPaintable, eventObject: AllBinaryEventObject)
method paint*(this: HighScoresPaintable, graphics: Graphics)
method setBasicColorP*(this: HighScoresPaintable, basicColor: BasicColor)
method getBasicColorP*(this: HighScoresPaintable): BasicColor {.base, discardable.}
method setHighScores*(this: HighScoresPaintable, highScores: HighScores) {.base.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/color/ColorChangeEvent as ColorChangeEventModule
export ColorChangeEventModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule


# Java field initializers run after the base initializer
proc initFieldsHighScoresPaintable(this: HighScoresPaintable) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.basicColor = BasicColorFactory.getInstance().WHITE
    this.highScores = NullHighScoresSingletonFactory.getInstance()
    this.anchor = Anchor.TOP_LEFT
    this.charHeight = 0
    discard

proc initHighScoresPaintable*(this: HighScoresPaintable) =
        initPaintable(this)
        this.initFieldsHighScoresPaintable()
        discard

proc newHighScoresPaintable*(): HighScoresPaintable =
    result = HighScoresPaintable()
    initHighScoresPaintable(result)

method updateMeasurement*(this: HighScoresPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.charHeight = font.getHeight()
        this.myFontProcessor = MyFontProcessor.getInstance()

method onEvent*(this: HighScoresPaintable, eventObject: AllBinaryEventObject) =
        let colorChangeEvent: ColorChangeEvent = ColorChangeEvent(JObject(eventObject))
        this.basicColor = colorChangeEvent.getBasicColorP()

method paint*(this: HighScoresPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let width: int32 = this.displayInfoSingleton.getLastWidth()
        let height: int32 = this.displayInfoSingleton.getLastHeight()
        graphics.setColor(this.getBasicColorP().intValue())
        var heading: string = this.highScores.getHeading()
        let topScoresWidth: int32 = (ashr(graphics.getFont().stringWidth(heading), 1))
        let charHeight: int32 = this.charHeight
        graphics.drawString(heading, (ashr(width, 1)) -% topScoresWidth, charHeight, this.anchor)
        graphics.drawString(this.highScores.getColumnOneHeading(), 10, charHeight *% 3, this.anchor)
        var columnTwoHeading: string = this.highScores.getColumnTwoHeading()
        let columnTwoHeadingWidth: int32 = graphics.getFont().stringWidth(columnTwoHeading)
        graphics.drawString(columnTwoHeading, width -% 10 -% columnTwoHeadingWidth, charHeight *% 3, this.anchor)
        var index: int32 = 4
        var largestSecondColumnWidth: int32 = columnTwoHeadingWidth
        var list: BasicArrayList = this.highScores.getList()
        var size: int32 = list.size()
        var vectorIndex: int32 = 0
        var highScore: HighScore = nil
        while vectorIndex < size and charHeight *% index < height -% (charHeight *% 2):
            highScore = HighScore(JObject(list.objectArray[vectorIndex]))
            var nextScoreWidth: int32 = graphics.getFont().stringWidth(highScore.getScoreString())
            if nextScoreWidth > largestSecondColumnWidth:
                largestSecondColumnWidth = nextScoreWidth
            vectorIndex = vectorIndex +% 1
        vectorIndex = 0
        while vectorIndex < size and charHeight *% index < height -% (charHeight *% 2):
            highScore = HighScore(JObject(list.objectArray[vectorIndex]))
            graphics.drawString(highScore.getName(), 10, charHeight *% index, this.anchor)
            graphics.drawString(highScore.getScoreString(), width -% 10 -% largestSecondColumnWidth, charHeight *% index, this.anchor)
            index = index +% 1
            vectorIndex = vectorIndex +% 1

method setBasicColorP*(this: HighScoresPaintable, basicColor: BasicColor) =
        this.basicColor = basicColor

method getBasicColorP*(this: HighScoresPaintable): BasicColor {.base, discardable.} =
        return this.basicColor

method setHighScores*(this: HighScoresPaintable, highScores: HighScores) {.base.} =
        this.highScores = highScores

when declared(newHighScoresPaintableHook0):
    newHighScoresPaintableHook0 = proc (): Paintable = newHighScoresPaintable()

