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
# package org.allbinary.game.ag.layer.hud.basic

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/graphics/hud/BasicHud as BasicHudModule
export BasicHudModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/logic/math/PrimitiveLongUtil as PrimitiveLongUtilModule
export PrimitiveLongUtilModule

type
    NumberStringHud* = ref object of BasicHud
        primitiveLongUtil*: PrimitiveLongUtil
        prependString*: string
        PREPEND_STRING*: JArray[uint16]
        value*: int32
        max*: int32
        offset*: int32
        valueString*: JArray[uint16]
        valueTotalDigits*: int32

converter jAsPaintableInterface*(value: NumberStringHud): PaintableInterface = cast[PaintableInterface](value)
proc newNumberStringHud*(prependString: string, max: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): NumberStringHud
proc initNumberStringHud*(this: NumberStringHud, prependString: string, max: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor)
method updateMeasurement*(this: NumberStringHud, graphics: Graphics)
method get*(this: NumberStringHud): int32 {.base, discardable.}
method add*(this: NumberStringHud, value: int32) {.base.}
method set*(this: NumberStringHud, value: int32) {.base.}
method reduce*(this: NumberStringHud, value: int32) {.base.}
method paint*(this: NumberStringHud, graphics: Graphics)
method paintXY*(this: NumberStringHud, graphics: Graphics, x: int32, y: int32) {.base.}
method paintThreed*(this: NumberStringHud, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/logic/math/PrimitiveLongSingleton as PrimitiveLongSingletonModule
export PrimitiveLongSingletonModule


# Java field initializers run after the base initializer
proc initFieldsNumberStringHud(this: NumberStringHud) =
    
    
    
    
    
    this.offset = 0
    
    this.valueTotalDigits = 0
    discard

proc initNumberStringHud*(this: NumberStringHud, prependString: string, max: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor) =
        initBasicHud(this, location, direction, bufferZone, basicColor)
        this.initFieldsNumberStringHud()
        this.prependString = prependString
        this.PREPEND_STRING = jToCharArray(prependString)
        this.valueString = PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0]
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(max +% 1)
        this.max = max
        this.value = 0
        if direction == 0:
            raise newJException("RuntimeException", BasicHudFactory.getInstance().DIRECTION_EXCEPTION)

proc newNumberStringHud*(prependString: string, max: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): NumberStringHud =
    result = NumberStringHud()
    initNumberStringHud(result, prependString, max, location, direction, bufferZone, basicColor)

method updateMeasurement*(this: NumberStringHud, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.offset = font.stringWidth(this.prependString) +% MyFontProcessor.defaultCharWidth(font)
        jSuperStatement(procCall BasicHud(this).updateMeasurement(graphics))

method get*(this: NumberStringHud): int32 {.base, discardable.} =
        return this.value

method add*(this: NumberStringHud, value: int32) {.base.} =
        this.set(this.value +% value)

method set*(this: NumberStringHud, value: int32) {.base.} =
        this.value = value
        if this.value > this.max:
            this.value = 0
        this.valueString = this.primitiveLongUtil.getCharArray(this.value)
        this.valueTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits()

method reduce*(this: NumberStringHud, value: int32) {.base.} =
        this.set(this.value -% value)

method paint*(this: NumberStringHud, graphics: Graphics) =
        jSuperStatement(procCall BasicHud(this).paintDX(graphics, this.PREPEND_STRING, 0, this.PREPEND_STRING.length, this.valueString, 0, this.valueTotalDigits, this.offset))

method paintXY*(this: NumberStringHud, graphics: Graphics, x: int32, y: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        var charArray: JArray[uint16] = this.PREPEND_STRING
        var len: int32 = this.PREPEND_STRING.length
        var charArray2: JArray[uint16] = this.valueString
        var len2: int32 = this.valueTotalDigits
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        graphics.drawChars(charArray, 0, len, x, y, 0)
        graphics.drawChars(charArray2, 0, len2, x -% this.offset, y, 0)

method paintThreed*(this: NumberStringHud, graphics: Graphics) =
        discard

when declared(newNumberStringHudHook6):
    newNumberStringHudHook6 = proc (prependString: string, max: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): BasicHud = newNumberStringHud(prependString, max, location, direction, bufferZone, basicColor)

