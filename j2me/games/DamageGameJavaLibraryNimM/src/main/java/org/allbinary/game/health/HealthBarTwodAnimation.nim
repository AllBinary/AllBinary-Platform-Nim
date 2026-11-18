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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/health/HealthBarAnimation as HealthBarAnimationModule
export HealthBarAnimationModule

type
    HealthBarTwodAnimation* = ref object of HealthBarAnimation

proc newHealthBarTwodAnimation*(layerInterface: AllBinaryLayer, location: int32): HealthBarTwodAnimation
proc initHealthBarTwodAnimation*(this: HealthBarTwodAnimation, layerInterface: AllBinaryLayer, location: int32)
method paintXY*(this: HealthBarTwodAnimation, graphics: Graphics, x: int32, y: int32)


proc initHealthBarTwodAnimation*(this: HealthBarTwodAnimation, layerInterface: AllBinaryLayer, location: int32) =
        initHealthBarAnimation(this, layerInterface, location)

proc newHealthBarTwodAnimation*(layerInterface: AllBinaryLayer, location: int32): HealthBarTwodAnimation =
    result = HealthBarTwodAnimation()
    initHealthBarTwodAnimation(result, layerInterface, location)

method paintXY*(this: HealthBarTwodAnimation, graphics: Graphics, x: int32, y: int32) =
        let ax: int32 = this.allbinaryLayer.getViewPosition().getX()
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.colorP)
        graphics.fillRect(ax, this.getY() -% 1, this.x2, this.thickness)

when declared(newHealthBarTwodAnimationHook2):
    newHealthBarTwodAnimationHook2 = proc (layerInterface: AllBinaryLayer, location: int32): HealthBarAnimation = newHealthBarTwodAnimation(layerInterface, location)

