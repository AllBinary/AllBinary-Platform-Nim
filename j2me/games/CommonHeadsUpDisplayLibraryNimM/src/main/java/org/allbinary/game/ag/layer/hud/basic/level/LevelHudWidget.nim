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
# package org.allbinary.game.ag.layer.hud.basic.level

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/graphics/hud/BasicHud as BasicHudModule
export BasicHudModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/logic/math/PrimitiveLongUtil as PrimitiveLongUtilModule
export PrimitiveLongUtilModule

type
    LevelHudWidget* = ref object of BasicHud
        level*: int32
        maxlevel*: int32
        levelString*: JArray[uint16]
        levelNumberCharArray*: JArray[uint16]
        levelNumberTotalDigits*: int32
        offset*: int32
        primitiveLongUtil*: PrimitiveLongUtil

converter jAsPaintableInterface*(value: LevelHudWidget): PaintableInterface = cast[PaintableInterface](value)
proc newLevelHudWidget*(maxlevel: int32, location: int32, direction: int32): LevelHudWidget
proc initLevelHudWidget*(this: LevelHudWidget, maxlevel: int32, location: int32, direction: int32)
proc createHud*(t: typedesc[LevelHudWidget], maxlevel: int32, location: int32, direction: int32): LevelHudWidget {.discardable.}
method updateMeasurement*(this: LevelHudWidget, graphics: Graphics)
method update*(this: LevelHudWidget) {.base.}
method setLevel*(this: LevelHudWidget, level: int32) {.base.}
method nextLevel*(this: LevelHudWidget) {.base.}
method previousLevel*(this: LevelHudWidget) {.base.}
method isComplete*(this: LevelHudWidget): bool {.base, discardable.}
method paint*(this: LevelHudWidget, graphics: Graphics)
method paintThreed*(this: LevelHudWidget, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule


# Java field initializers run after the base initializer
proc initFieldsLevelHudWidget(this: LevelHudWidget) =
    
    
    
    this.levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY
    this.levelNumberTotalDigits = 0
    this.offset = 0
    
    discard

proc createHud*(t: typedesc[LevelHudWidget], maxlevel: int32, location: int32, direction: int32): LevelHudWidget {.discardable.} =
        return newLevelHudWidget(maxlevel, location, direction)

proc initLevelHudWidget*(this: LevelHudWidget, maxlevel: int32, location: int32, direction: int32) =
        initBasicHud(this, location, direction, 2, BasicColorFactory.getInstance().GREY)
        this.initFieldsLevelHudWidget()
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        let LEVEL: string = "Lv "
        this.levelString = jToCharArray(LEVEL)
        this.maxlevel = maxlevel
        this.level = maxlevel
        this.update()
        this.updateMaxHeight = 14

proc newLevelHudWidget*(maxlevel: int32, location: int32, direction: int32): LevelHudWidget =
    result = LevelHudWidget()
    initLevelHudWidget(result, maxlevel, location, direction)

method updateMeasurement*(this: LevelHudWidget, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.updateMaxWidth = font.getSize() *% 4
        this.offset = font.charsWidth(this.levelString, 0, this.levelString.length) +% font.getSize()
        procCall BasicHud(this).updateMeasurement(graphics)

method update*(this: LevelHudWidget) {.base.} =
        this.levelNumberCharArray = this.primitiveLongUtil.getCharArray(this.level)
        this.levelNumberTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits()

method setLevel*(this: LevelHudWidget, level: int32) {.base.} =
        this.level = level
        this.update()

method nextLevel*(this: LevelHudWidget) {.base.} =
        this.level = this.level +% 1
        this.update()

method previousLevel*(this: LevelHudWidget) {.base.} =
        this.level = this.level -% 1
        if this.level < 0:
            this.level = 0
        this.update()

method isComplete*(this: LevelHudWidget): bool {.base, discardable.} =
        if this.level <= this.maxlevel:
            return false
        else:
            return true

method paint*(this: LevelHudWidget, graphics: Graphics) =
        procCall BasicHud(this).paintDX(graphics, this.levelString, 0, this.levelString.length, this.levelNumberCharArray, 0, this.levelNumberTotalDigits, this.offset)

method paintThreed*(this: LevelHudWidget, graphics: Graphics) =
        discard

when declared(newLevelHudWidgetHook3):
    newLevelHudWidgetHook3 = proc (maxlevel: int32, location: int32, direction: int32): BasicHud = newLevelHudWidget(maxlevel, location, direction)

