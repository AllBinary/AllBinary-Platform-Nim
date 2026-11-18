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
# package org.allbinary.game.ag.layer.hud.basic.health

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/graphics/hud/BasicHud as BasicHudModule
export BasicHudModule
import org/allbinary/game/health/Health as HealthModule
export HealthModule
import org/allbinary/game/health/HealthListenerInterface as HealthListenerInterfaceModule
export HealthListenerInterfaceModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    HealthHudWidget* = ref object of BasicHud
        healthScale*: int32
        animationInterface*: Animation
        healthInterface*: Health
        max*: int32
        xArray*: JArray[int32]
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper
        timeDelayHelper*: TimeDelayHelper
        slowBeatTimeDelayHelper*: TimeDelayHelper
        mediumBeatTimeDelayHelper*: TimeDelayHelper
        fastBeatTimeDelayHelper*: TimeDelayHelper

converter jAsPaintableInterface*(value: HealthHudWidget): PaintableInterface = cast[PaintableInterface](value)
converter jAsHealthListenerInterface*(value: HealthHudWidget): HealthListenerInterface = cast[HealthListenerInterface](value)
proc newHealthHudWidget*(animationInterface: Animation, healthInterface: Health, location: int32, direction: int32): HealthHudWidget
proc initHealthHudWidget*(this: HealthHudWidget, animationInterface: Animation, healthInterface: Health, location: int32, direction: int32)
method update*(this: HealthHudWidget) {.base.}
method setX*(this: HealthHudWidget, x: int32)
method onHealthChange*(this: HealthHudWidget)
method paint*(this: HealthHudWidget, graphics: Graphics)
method paintThreed*(this: HealthHudWidget, graphics: Graphics)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/time/NoTimeDelayHelper as NoTimeDelayHelperModule
export NoTimeDelayHelperModule


# Java field initializers run after the base initializer
proc initFieldsHealthHudWidget(this: HealthHudWidget) =
    
    
    
    this.max = 0
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    this.timeDelayHelper = NoTimeDelayHelper.SINGLETON
    this.slowBeatTimeDelayHelper = newTimeDelayHelper(1280)
    this.mediumBeatTimeDelayHelper = newTimeDelayHelper(640)
    this.fastBeatTimeDelayHelper = newTimeDelayHelper(320)
    discard

proc initHealthHudWidget*(this: HealthHudWidget, animationInterface: Animation, healthInterface: Health, location: int32, direction: int32) =
        initBasicHud(this, location, direction, 2, BasicColorFactory.getInstance().WHITE)
        this.initFieldsHealthHudWidget()
        this.animationInterface = animationInterface
        this.healthInterface = healthInterface
        this.healthInterface.addListener(this)
        this.healthScale = (this.healthInterface.getMaxHealth() div 6) +% 1
        this.onHealthChange()
        this.updateMaxWidth = healthInterface.getMaxHealth() *% 16
        this.updateMaxHeight = 16
        this.xArray = newJArray[int32](30, default(int32))
        this.update()

proc newHealthHudWidget*(animationInterface: Animation, healthInterface: Health, location: int32, direction: int32): HealthHudWidget =
    result = HealthHudWidget()
    initHealthHudWidget(result, animationInterface, healthInterface, location, direction)

method update*(this: HealthHudWidget) {.base.} =
        if (not jIsNil(this.xArray)):
            block:
                var index: int32 = 0
                while index < this.xArray.length:
                    defer: index = index +% 1
                    this.xArray[index] = this.getX() +% (index *% 16)

method setX*(this: HealthHudWidget, x: int32) =
        procCall BasicHud(this).setX(x)
        this.update()

method onHealthChange*(this: HealthHudWidget) =
        this.max = (this.healthInterface.getHealth() div this.healthScale)
        this.timeDelayHelper = NoTimeDelayHelper.SINGLETON
        if this.max <= 1 and this.healthInterface.isAlive():
            this.max = 1
            if this.healthScale -% this.healthInterface.getHealth() > (this.healthScale *% 2) div 3:
                this.timeDelayHelper = this.slowBeatTimeDelayHelper
            elif this.healthScale -% this.healthInterface.getHealth() > this.healthScale div 3:
                this.timeDelayHelper = this.mediumBeatTimeDelayHelper
            else:
                this.timeDelayHelper = this.fastBeatTimeDelayHelper

method paint*(this: HealthHudWidget, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        block:
            var index: int32 = 0
            while index < this.max:
                defer: index = index +% 1
                if this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime):
                    this.animationInterface.paintXY(graphics, this.xArray[index], this.getY())

method paintThreed*(this: HealthHudWidget, graphics: Graphics) =
        discard

when declared(newHealthHudWidgetHook4):
    newHealthHudWidgetHook4 = proc (animationInterface: Animation, healthInterface: Health, location: int32, direction: int32): BasicHud = newHealthHudWidget(animationInterface, healthInterface, location, direction)

