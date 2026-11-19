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
# package org.allbinary.physics.movement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule
import org/allbinary/game/physics/acceleration/GravityUtil as GravityUtilModule
export GravityUtilModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/physics/movement/BasicConstantVelocityMovement as BasicConstantVelocityMovementModule
export BasicConstantVelocityMovementModule

type
    BasicGravityConstantVelocityMovement* = ref object of BasicConstantVelocityMovement
        gravityUtil*: GravityUtil

proc newBasicGravityConstantVelocityMovement*(speedBasicDecimal: BasicDecimal): BasicGravityConstantVelocityMovement
proc initBasicGravityConstantVelocityMovement*(this: BasicGravityConstantVelocityMovement, speedBasicDecimal: BasicDecimal)
method process*(this: BasicGravityConstantVelocityMovement, layer: AllBinaryGameLayer)
import org/allbinary/game/physics/velocity/VelocityProperties as VelocityPropertiesModule
export VelocityPropertiesModule


# Java field initializers run after the base initializer
proc initFieldsBasicGravityConstantVelocityMovement(this: BasicGravityConstantVelocityMovement) =
    this.gravityUtil = GravityUtil.getInstance()
    discard

proc initBasicGravityConstantVelocityMovement*(this: BasicGravityConstantVelocityMovement, speedBasicDecimal: BasicDecimal) =
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(jToInt32(speedBasicDecimal.getUnscaled()), jToInt32(speedBasicDecimal.getUnscaled())))
        this.initFieldsBasicGravityConstantVelocityMovement()

proc newBasicGravityConstantVelocityMovement*(speedBasicDecimal: BasicDecimal): BasicGravityConstantVelocityMovement =
    result = BasicGravityConstantVelocityMovement()
    initBasicGravityConstantVelocityMovement(result, speedBasicDecimal)

method process*(this: BasicGravityConstantVelocityMovement, layer: AllBinaryGameLayer) =
        jSuperStatement(procCall BasicConstantVelocityMovement(this).process(layer))
        this.gravityUtil.process(this.getVelocityProperties(), this.gravityUtil.GAME_GRAVITY_VELOCITY)

when declared(newBasicGravityConstantVelocityMovementHook1):
    newBasicGravityConstantVelocityMovementHook1 = proc (speedBasicDecimal: BasicDecimal): BasicConstantVelocityMovement = newBasicGravityConstantVelocityMovement(speedBasicDecimal)

