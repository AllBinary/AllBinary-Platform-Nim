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
# package org.allbinary.game.ag.life

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/health/Health as HealthModule
export HealthModule
import org/allbinary/game/health/HealthBarAnimation as HealthBarAnimationModule
export HealthBarAnimationModule
import org/allbinary/game/health/HealthInterface as HealthInterfaceModule
export HealthInterfaceModule
import org/allbinary/game/health/HealthListenerInterface as HealthListenerInterfaceModule
export HealthListenerInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/ag/life/Life as LifeModule
export LifeModule

type
    HealthIncludingLifeBar* = ref object of Paintable
        animationInterface*: HealthBarAnimation
        life*: Life
        healthInterface*: HealthInterface
        allbinaryLayer*: AllBinaryLayer

converter jAsHealthListenerInterface*(value: HealthIncludingLifeBar): HealthListenerInterface = cast[HealthListenerInterface](value)
proc newHealthIncludingLifeBar*(layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32): HealthIncludingLifeBar
proc initHealthIncludingLifeBar*(this: HealthIncludingLifeBar, layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32)
proc createHealthIncludingLifeBar*(t: typedesc[HealthIncludingLifeBar], layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, location: int32, direction: int32): HealthIncludingLifeBar {.discardable.}
method onHealthChange*(this: HealthIncludingLifeBar)
method paint*(this: HealthIncludingLifeBar, graphics: Graphics)
method paintThreed*(this: HealthIncludingLifeBar, graphics: Graphics)
import org/allbinary/game/health/HealthBarTwodAnimation as HealthBarTwodAnimationModule
export HealthBarTwodAnimationModule


# Java field initializers run after the base initializer
proc initFieldsHealthIncludingLifeBar(this: HealthIncludingLifeBar) =
    
    
    
    
    discard

proc createHealthIncludingLifeBar*(t: typedesc[HealthIncludingLifeBar], layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, location: int32, direction: int32): HealthIncludingLifeBar {.discardable.} =
        return newHealthIncludingLifeBar(layerInterface, life, healthInterface, newHealthBarTwodAnimation(layerInterface, location), direction)

proc initHealthIncludingLifeBar*(this: HealthIncludingLifeBar, layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32) =
        initPaintable(this)
        this.initFieldsHealthIncludingLifeBar()
        this.allbinaryLayer = layerInterface
        this.animationInterface = animationInterface
        this.life = life
        this.healthInterface = healthInterface
        this.healthInterface.addListener(this)
        this.onHealthChange()

proc newHealthIncludingLifeBar*(layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32): HealthIncludingLifeBar =
    result = HealthIncludingLifeBar()
    initHealthIncludingLifeBar(result, layerInterface, life, healthInterface, animationInterface, direction)

method onHealthChange*(this: HealthIncludingLifeBar) =
        this.animationInterface.onHealthChange(((this.healthInterface.getHealth() +% (this.healthInterface.getMaxHealth() *% int32(this.life.get()))) *% this.allbinaryLayer.getWidth()) div (this.healthInterface.getMaxHealth() +% (this.healthInterface.getMaxHealth() *% int32(this.life.getStartLives()))))

method paint*(this: HealthIncludingLifeBar, graphics: Graphics) =
        this.animationInterface.paintXY(graphics, 0, 0)

method paintThreed*(this: HealthIncludingLifeBar, graphics: Graphics) =
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0)

when declared(newHealthIncludingLifeBarHook5):
    newHealthIncludingLifeBarHook5 = proc (layerInterface: AllBinaryLayer, life: Life, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32): Paintable = newHealthIncludingLifeBar(layerInterface, life, healthInterface, animationInterface, direction)

