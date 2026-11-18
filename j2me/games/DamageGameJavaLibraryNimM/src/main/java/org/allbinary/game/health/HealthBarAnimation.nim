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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    HealthBarAnimation* = ref object of Animation
        basicColorFactory*: BasicColorFactory
        x2*: int32
        thickness*: int32
        location*: int32
        allbinaryLayer*: AllBinaryLayer

proc newHealthBarAnimation*(layerInterface: AllBinaryLayer, location: int32): HealthBarAnimation
proc initHealthBarAnimation*(this: HealthBarAnimation, layerInterface: AllBinaryLayer, location: int32)
method onHealthChange*(this: HealthBarAnimation, newX2: int32) {.base.}
method getY*(this: HealthBarAnimation): int32 {.base, discardable.}
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule


# Java field initializers run after the base initializer
proc initFieldsHealthBarAnimation(this: HealthBarAnimation) =
    this.basicColorFactory = BasicColorFactory.getInstance()
    this.x2 = 0
    this.thickness = 0
    
    
    discard

proc initHealthBarAnimation*(this: HealthBarAnimation, layerInterface: AllBinaryLayer, location: int32) =
        initAnimation(this)
        this.initFieldsHealthBarAnimation()
        this.allbinaryLayer = layerInterface
        this.location = location
        let basicHudFactory: BasicHudFactory = BasicHudFactory.getInstance()
        if this.location != basicHudFactory.TOPLEFT and this.location != basicHudFactory.BOTTOMLEFT:
            raise newJException("Exception", "Location Not Valid")
        if layerInterface.getWidth() > 40:
            this.thickness = 3
        elif layerInterface.getWidth() > 20:
            this.thickness = 2
        else:
            this.thickness = 1

proc newHealthBarAnimation*(layerInterface: AllBinaryLayer, location: int32): HealthBarAnimation =
    result = HealthBarAnimation()
    initHealthBarAnimation(result, layerInterface, location)

method onHealthChange*(this: HealthBarAnimation, newX2: int32) {.base.} =
        this.x2 = newX2
        var quarter: int32 = (ashr(this.allbinaryLayer.getWidth(), 2))
        if this.x2 > quarter *% 3:
            this.basicColor = this.basicColorFactory.GREEN
            this.colorP = this.basicColor.intValue()
        elif this.x2 > quarter *% 2:
            this.basicColor = this.basicColorFactory.YELLOW
            this.colorP = this.basicColor.intValue()
        elif this.x2 > quarter:
            this.basicColor = this.basicColorFactory.ORANGE
            this.colorP = this.basicColor.intValue()
        else:
            this.basicColor = this.basicColorFactory.RED
            this.colorP = this.basicColor.intValue()

method getY*(this: HealthBarAnimation): int32 {.base, discardable.} =
        let basicHudFactory: BasicHudFactory = BasicHudFactory.getInstance()
        if this.location == basicHudFactory.TOPLEFT:
            return this.allbinaryLayer.getViewPosition().getY() -% 4
        elif this.location == basicHudFactory.BOTTOMLEFT:
            return this.allbinaryLayer.getViewPosition().getY2() +% 4
        return -1

when declared(newHealthBarAnimationHook2):
    newHealthBarAnimationHook2 = proc (layerInterface: AllBinaryLayer, location: int32): Animation = newHealthBarAnimation(layerInterface, location)

