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
# package org.allbinary.game.health

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/health/HealthListenerInterface as HealthListenerInterfaceModule
export HealthListenerInterfaceModule
import org/allbinary/game/health/HealthBarAnimation as HealthBarAnimationModule
export HealthBarAnimationModule
import org/allbinary/game/health/HealthInterface as HealthInterfaceModule
export HealthInterfaceModule
import org/allbinary/game/health/Health as HealthModule
export HealthModule

type
    HealthBar* = ref object of Paintable
        animationInterface*: HealthBarAnimation
        healthInterface*: HealthInterface
        allbinaryLayer*: AllBinaryLayer

converter jAsHealthListenerInterface*(value: HealthBar): HealthListenerInterface = cast[HealthListenerInterface](value)
proc newHealthBar*(layerInterface: AllBinaryLayer, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32): HealthBar
proc initHealthBar*(this: HealthBar, layerInterface: AllBinaryLayer, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32)
method onHealthChange*(this: HealthBar)
method paint*(this: HealthBar, graphics: Graphics)
method paintThreed*(this: HealthBar, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsHealthBar(this: HealthBar) =
    
    
    
    discard

proc initHealthBar*(this: HealthBar, layerInterface: AllBinaryLayer, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32) =
        initPaintable(this)
        this.initFieldsHealthBar()
        this.allbinaryLayer = layerInterface
        this.animationInterface = animationInterface
        this.healthInterface = healthInterface
        this.healthInterface.addListener(this)
        this.onHealthChange()

proc newHealthBar*(layerInterface: AllBinaryLayer, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32): HealthBar =
    result = HealthBar()
    initHealthBar(result, layerInterface, healthInterface, animationInterface, direction)

method onHealthChange*(this: HealthBar) =
        this.animationInterface.onHealthChange(this.healthInterface.getHealth() *% this.allbinaryLayer.getWidth() div this.healthInterface.getMaxHealth())

method paint*(this: HealthBar, graphics: Graphics) =
        this.animationInterface.paintXY(graphics, 0, 0)

method paintThreed*(this: HealthBar, graphics: Graphics) =
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0)

when declared(newHealthBarHook4):
    newHealthBarHook4 = proc (layerInterface: AllBinaryLayer, healthInterface: Health, animationInterface: HealthBarAnimation, direction: int32): Paintable = newHealthBar(layerInterface, healthInterface, animationInterface, direction)

