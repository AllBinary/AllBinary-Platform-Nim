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
    CustomGravityConstantVelocityMovement* = ref object of BasicConstantVelocityMovement
        customGravity*: int32
        gravityUtil*: GravityUtil

proc newCustomGravityConstantVelocityMovement*(speedBasicDecimal: BasicDecimal, customGravity: int32): CustomGravityConstantVelocityMovement
proc initCustomGravityConstantVelocityMovement*(this: CustomGravityConstantVelocityMovement, speedBasicDecimal: BasicDecimal, customGravity: int32)
method process*(this: CustomGravityConstantVelocityMovement, layer: AllBinaryGameLayer)
import org/allbinary/game/physics/velocity/VelocityProperties as VelocityPropertiesModule
export VelocityPropertiesModule


# Java field initializers run after the base initializer
proc initFieldsCustomGravityConstantVelocityMovement(this: CustomGravityConstantVelocityMovement) =
    
    this.gravityUtil = GravityUtil.getInstance()
    discard

proc initCustomGravityConstantVelocityMovement*(this: CustomGravityConstantVelocityMovement, speedBasicDecimal: BasicDecimal, customGravity: int32) =
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(jToInt32(speedBasicDecimal.getUnscaled()), jToInt32(speedBasicDecimal.getUnscaled())))
        this.initFieldsCustomGravityConstantVelocityMovement()
        this.customGravity = customGravity

proc newCustomGravityConstantVelocityMovement*(speedBasicDecimal: BasicDecimal, customGravity: int32): CustomGravityConstantVelocityMovement =
    result = CustomGravityConstantVelocityMovement()
    initCustomGravityConstantVelocityMovement(result, speedBasicDecimal, customGravity)

method process*(this: CustomGravityConstantVelocityMovement, layer: AllBinaryGameLayer) =
        jSuperStatement(procCall BasicConstantVelocityMovement(this).process(layer))
        this.gravityUtil.process(this.getVelocityProperties(), this.customGravity)
        let velocityProperties: VelocityProperties = VelocityProperties(JObject(this.getVelocityProperties()))
        velocityProperties.limitMaxYForwardVelocity()

when declared(newCustomGravityConstantVelocityMovementHook2):
    newCustomGravityConstantVelocityMovementHook2 = proc (speedBasicDecimal: BasicDecimal, customGravity: int32): BasicConstantVelocityMovement = newCustomGravityConstantVelocityMovement(speedBasicDecimal, customGravity)

