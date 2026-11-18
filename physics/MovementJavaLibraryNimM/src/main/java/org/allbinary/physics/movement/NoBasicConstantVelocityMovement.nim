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
import org/allbinary/physics/movement/BasicConstantVelocityMovement as BasicConstantVelocityMovementModule
export BasicConstantVelocityMovementModule

type
    NoBasicConstantVelocityMovement* = ref object of BasicConstantVelocityMovement

proc newNoBasicConstantVelocityMovement*(): NoBasicConstantVelocityMovement
proc initNoBasicConstantVelocityMovement*(this: NoBasicConstantVelocityMovement)
method process*(this: NoBasicConstantVelocityMovement, layer: AllBinaryGameLayer)
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule


proc initNoBasicConstantVelocityMovement*(this: NoBasicConstantVelocityMovement) =
        initBasicConstantVelocityMovement(this, BasicDecimal.ZERO_BIGDECIMAL, newBasicVelocityProperties())

proc newNoBasicConstantVelocityMovement*(): NoBasicConstantVelocityMovement =
    result = NoBasicConstantVelocityMovement()
    initNoBasicConstantVelocityMovement(result)

method process*(this: NoBasicConstantVelocityMovement, layer: AllBinaryGameLayer) =
        discard

when declared(newNoBasicConstantVelocityMovementHook0):
    newNoBasicConstantVelocityMovementHook0 = proc (): BasicConstantVelocityMovement = newNoBasicConstantVelocityMovement()

