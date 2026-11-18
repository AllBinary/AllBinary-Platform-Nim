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
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/physics/movement/BasicConstantVelocityMovement as BasicConstantVelocityMovementModule
export BasicConstantVelocityMovementModule

type
    OscillateVelocityMovement* = ref object of BasicConstantVelocityMovement
        oscillateMin*: int32
        oscillateMax*: int32
        oscillate*: int32
        oscillatePositive*: bool

proc newOscillateVelocityMovement*(speedBasicDecimal: BasicDecimal, oscillateMin: int32, oscillateMax: int32): OscillateVelocityMovement
proc initOscillateVelocityMovement*(this: OscillateVelocityMovement, speedBasicDecimal: BasicDecimal, oscillateMin: int32, oscillateMax: int32)
method process*(this: OscillateVelocityMovement, layer: AllBinaryGameLayer)
import org/allbinary/game/physics/velocity/VelocityProperties as VelocityPropertiesModule
export VelocityPropertiesModule


# Java field initializers run after the base initializer
proc initFieldsOscillateVelocityMovement(this: OscillateVelocityMovement) =
    
    
    this.oscillate = 0
    this.oscillatePositive = false
    discard

proc initOscillateVelocityMovement*(this: OscillateVelocityMovement, speedBasicDecimal: BasicDecimal, oscillateMin: int32, oscillateMax: int32) =
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(jToInt32(speedBasicDecimal.getUnscaled()), jToInt32(speedBasicDecimal.getUnscaled())))
        this.initFieldsOscillateVelocityMovement()
        this.oscillateMin = oscillateMin
        this.oscillateMax = oscillateMax

proc newOscillateVelocityMovement*(speedBasicDecimal: BasicDecimal, oscillateMin: int32, oscillateMax: int32): OscillateVelocityMovement =
    result = OscillateVelocityMovement()
    initOscillateVelocityMovement(result, speedBasicDecimal, oscillateMin, oscillateMax)

method process*(this: OscillateVelocityMovement, layer: AllBinaryGameLayer) =
        procCall BasicConstantVelocityMovement(this).process(layer)
        if this.oscillate < this.oscillateMin:
            this.oscillatePositive = true
        elif this.oscillate > this.oscillateMax:
            this.oscillatePositive = false
        if this.oscillatePositive:
            this.oscillate = this.oscillate +% 1
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(2000)
        else:
            this.oscillate = this.oscillate -% 1
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(2000)

when declared(newOscillateVelocityMovementHook3):
    newOscillateVelocityMovementHook3 = proc (speedBasicDecimal: BasicDecimal, oscillateMin: int32, oscillateMax: int32): BasicConstantVelocityMovement = newOscillateVelocityMovement(speedBasicDecimal, oscillateMin, oscillateMax)

