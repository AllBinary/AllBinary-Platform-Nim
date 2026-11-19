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
# package org.allbinary.game.ag.layer.hud.basic.life

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/ag/life/Life as LifeModule
export LifeModule
import org/allbinary/game/graphics/hud/BasicHud as BasicHudModule
export BasicHudModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule

type
    LivesHudWidget* = ref object of BasicHud
        lifeInterface*: Life
        xArray*: JArray[int32]
        animationInterface*: Animation

converter jAsPaintableInterface*(value: LivesHudWidget): PaintableInterface = cast[PaintableInterface](value)
proc newLivesHudWidget*(animationInterface: Animation, lifeInterface: Life, location: int32, direction: int32): LivesHudWidget
proc initLivesHudWidget*(this: LivesHudWidget, animationInterface: Animation, lifeInterface: Life, location: int32, direction: int32)
method updateMeasurement*(this: LivesHudWidget, graphics: Graphics)
method onDisplayChangeEvent*(this: LivesHudWidget, displayChangeEvent: DisplayChangeEvent)
method setX*(this: LivesHudWidget, x: int32)
method paint*(this: LivesHudWidget, graphics: Graphics)
method paintThreed*(this: LivesHudWidget, graphics: Graphics)
method getLifeInterface*(this: LivesHudWidget): Life {.base, discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsLivesHudWidget(this: LivesHudWidget) =
    
    
    
    discard

proc initLivesHudWidget*(this: LivesHudWidget, animationInterface: Animation, lifeInterface: Life, location: int32, direction: int32) =
        initBasicHud(this, location, direction, 2, BasicColorFactory.getInstance().WHITE)
        this.initFieldsLivesHudWidget()
        this.lifeInterface = lifeInterface
        let size: int32 = int32(this.getLifeInterface().getMaxlives())
        this.xArray = newJArray[int32](size, default(int32))
        this.animationInterface = animationInterface
        this.updateMaxWidth = int32(this.lifeInterface.getMaxlives()) *% 16
        this.updateMaxHeight = 16

proc newLivesHudWidget*(animationInterface: Animation, lifeInterface: Life, location: int32, direction: int32): LivesHudWidget =
    result = LivesHudWidget()
    initLivesHudWidget(result, animationInterface, lifeInterface, location, direction)

method updateMeasurement*(this: LivesHudWidget, graphics: Graphics) =
        jSuperStatement(procCall BasicHud(this).updateMeasurement(graphics))
        var maxLives: int32 = int32(this.getLifeInterface().getMaxlives())
        block:
            var index: int32 = 0
            while index < maxLives:
                defer: index = index +% 1
                this.xArray[index] = this.getX() +% (index *% 16)

method onDisplayChangeEvent*(this: LivesHudWidget, displayChangeEvent: DisplayChangeEvent) =
        jSuperStatement(procCall BasicHud(this).onDisplayChangeEvent(displayChangeEvent))
        this.myFontProcessor = this.updateMyFontProcessor

method setX*(this: LivesHudWidget, x: int32) =
        jSuperStatement(procCall BasicHud(this).setX(x))
        this.myFontProcessor = this.updateMyFontProcessor

method paint*(this: LivesHudWidget, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        block:
            var index: int32 = int32(this.getLifeInterface().get())
            while jPreDecrement(index) >= 0:
                this.animationInterface.paintXY(graphics, this.xArray[index], this.getY())

method paintThreed*(this: LivesHudWidget, graphics: Graphics) =
        discard

method getLifeInterface*(this: LivesHudWidget): Life {.base, discardable.} =
        return this.lifeInterface

when declared(newLivesHudWidgetHook4):
    newLivesHudWidgetHook4 = proc (animationInterface: Animation, lifeInterface: Life, location: int32, direction: int32): BasicHud = newLivesHudWidget(animationInterface, lifeInterface, location, direction)

