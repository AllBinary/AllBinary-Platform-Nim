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
# package org.allbinary.game.ag.layer.hud.basic.time

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/graphics/hud/BasicHud as BasicHudModule
export BasicHudModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/game/ag/layer/hud/basic/time/HudTimer as HudTimerModule
export HudTimerModule

type
    TimeHudWidget* = ref object of BasicHud
        TIME_STRING*: string
        TIME_CHAR_ARRAY*: JArray[uint16]
        offset*: int32
        string*: JArray[uint16]
        totalDigits*: int32
        timer*: HudTimer

proc newTimeHudWidget*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor, timer: HudTimer): TimeHudWidget
proc initTimeHudWidget*(this: TimeHudWidget, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor, timer: HudTimer)
proc getInstance*(t: typedesc[TimeHudWidget], location: int32, direction: int32, basicColor: BasicColor, timer: HudTimer): TimeHudWidget {.discardable.}
method updateMeasurement*(this: TimeHudWidget, graphics: Graphics)
method update*(this: TimeHudWidget) {.base.}
method set*(this: TimeHudWidget) {.base.}
method getTimer*(this: TimeHudWidget): HudTimer {.base, discardable.}
method paint*(this: TimeHudWidget, graphics: Graphics) {.base.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/logic/math/PrimitiveLongSingleton as PrimitiveLongSingletonModule
export PrimitiveLongSingletonModule


# Java field initializers run after the base initializer
proc initFieldsTimeHudWidget(this: TimeHudWidget) =
    this.TIME_STRING = "Time "
    this.TIME_CHAR_ARRAY = newJArrayFrom[uint16]([uint16(ord('T')), uint16(ord('i')), uint16(ord('m')), uint16(ord('e')), uint16(ord(' '))])
    this.offset = 0
    this.string = PrimitiveLongSingleton.getInstance().ZERO
    this.totalDigits = 1
    
    discard

proc getInstance*(t: typedesc[TimeHudWidget], location: int32, direction: int32, basicColor: BasicColor, timer: HudTimer): TimeHudWidget {.discardable.} =
        return newTimeHudWidget(location, direction, 2, basicColor, timer)

proc initTimeHudWidget*(this: TimeHudWidget, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor, timer: HudTimer) =
        initBasicHud(this, location, direction, bufferZone, basicColor)
        this.initFieldsTimeHudWidget()
        this.timer = timer
        this.set()
        this.updateMaxHeight = 14

proc newTimeHudWidget*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor, timer: HudTimer): TimeHudWidget =
    result = TimeHudWidget()
    initTimeHudWidget(result, location, direction, bufferZone, basicColor, timer)

method updateMeasurement*(this: TimeHudWidget, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.updateMaxWidth = font.getSize() *% 5
        this.offset = font.stringWidth(this.TIME_STRING) +% MyFontProcessor.defaultStringWidth(font, 3)
        jSuperStatement(procCall BasicHud(this).updateMeasurement(graphics))

method update*(this: TimeHudWidget) {.base.} =
        this.timer.update()
        this.set()

method set*(this: TimeHudWidget) {.base.} =
        this.string = this.timer.getTimeChars()
        this.totalDigits = this.timer.getCurrentTotalDigits()

method getTimer*(this: TimeHudWidget): HudTimer {.base, discardable.} =
        return this.timer

method paint*(this: TimeHudWidget, graphics: Graphics) {.base.} =
        jSuperStatement(procCall BasicHud(this).paintDX(graphics, this.TIME_CHAR_ARRAY, 0, this.TIME_CHAR_ARRAY.length, this.string, 0, this.totalDigits, this.offset))

when declared(newTimeHudWidgetHook5):
    newTimeHudWidgetHook5 = proc (location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor, timer: HudTimer): BasicHud = newTimeHudWidget(location, direction, bufferZone, basicColor, timer)

