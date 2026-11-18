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
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/InitUpdatePaintable as InitUpdatePaintableModule
export InitUpdatePaintableModule

type
    GamePerformanceInitUpdatePaintable* = ref object of InitUpdatePaintable
        halfHeight*: int32
        yArray*: JArray[int32]
        myFontProcessor*: MyFontProcessor
        baseRefreshHelperCharArray*: JArray[JArray[uint16]]
        defaultStringWidth*: int32
        RED*: int32

converter jAsUpdateMyFontInterface*(value: GamePerformanceInitUpdatePaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newGamePerformanceInitUpdatePaintable*(): GamePerformanceInitUpdatePaintable
method updateMeasurement*(this: GamePerformanceInitUpdatePaintable, graphics: Graphics)
method init*(this: GamePerformanceInitUpdatePaintable)
method update*(this: GamePerformanceInitUpdatePaintable)
method paint*(this: GamePerformanceInitUpdatePaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/canvas/GameStatisticsFactory as GameStatisticsFactoryModule
export GameStatisticsFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsGamePerformanceInitUpdatePaintable(this: GamePerformanceInitUpdatePaintable) =
    this.halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight()
    this.yArray = newJArrayFrom[int32]([this.halfHeight +% 30, this.halfHeight +% 30, this.halfHeight +% 30 +% 15, this.halfHeight +% 30 +% 15, this.halfHeight +% 30 +% 30, this.halfHeight +% 30 +% 30, this.halfHeight +% 30 +% 45, this.halfHeight +% 30 +% 45])
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.baseRefreshHelperCharArray = newJArrayOf[JArray[uint16]](0, proc (): JArray[uint16] = newJArray[uint16](0, default(uint16)))
    this.defaultStringWidth = 0
    this.RED = BasicColorFactory.getInstance().RED.intValue()
    discard

proc initGamePerformanceInitUpdatePaintable*(this: GamePerformanceInitUpdatePaintable) =
    initInitUpdatePaintable(this)
    this.initFieldsGamePerformanceInitUpdatePaintable()

proc newGamePerformanceInitUpdatePaintable*(): GamePerformanceInitUpdatePaintable =
    result = GamePerformanceInitUpdatePaintable()
    initGamePerformanceInitUpdatePaintable(result)

method updateMeasurement*(this: GamePerformanceInitUpdatePaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2)
        this.myFontProcessor = MyFontProcessor.getInstance()

method init*(this: GamePerformanceInitUpdatePaintable) =
        discard

method update*(this: GamePerformanceInitUpdatePaintable) =
        this.baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray()

method paint*(this: GamePerformanceInitUpdatePaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        graphics.setColor(this.RED)
        var charArray: JArray[uint16] = nil
        var charArray2: JArray[uint16] = nil
        var size2: int32 = 0
        var size3: int32 = 0
        let size: int32 = this.baseRefreshHelperCharArray.length -% 2
        block:
            var index: int32 = size
            while index >= 0:
                defer: index = index -% 2
                charArray = this.baseRefreshHelperCharArray[index]
                charArray2 = this.baseRefreshHelperCharArray[index +% 1]
                size2 = charArray.length
                size3 = charArray2.length
                graphics.drawChars(charArray, 0, size2, 0, this.yArray[index], 0)
                graphics.drawChars(charArray2, 0, size3, size2 *% this.defaultStringWidth, this.yArray[index +% 1], 0)

when declared(newGamePerformanceInitUpdatePaintableHook0):
    newGamePerformanceInitUpdatePaintableHook0 = proc (): InitUpdatePaintable = newGamePerformanceInitUpdatePaintable()

