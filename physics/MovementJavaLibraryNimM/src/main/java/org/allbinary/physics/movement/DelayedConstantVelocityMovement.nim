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
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/physics/movement/BasicConstantVelocityMovement as BasicConstantVelocityMovementModule
export BasicConstantVelocityMovementModule

type
    DelayedConstantVelocityMovement* = ref object of BasicConstantVelocityMovement
        timeDelayHelper*: TimeDelayHelper

proc newDelayedConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): DelayedConstantVelocityMovement
proc initDelayedConstantVelocityMovement*(this: DelayedConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties)
method init*(this: DelayedConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32)
method process*(this: DelayedConstantVelocityMovement, layer: AllBinaryGameLayer)
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsDelayedConstantVelocityMovement(this: DelayedConstantVelocityMovement) =
    this.timeDelayHelper = newTimeDelayHelper(60)
    discard

proc initDelayedConstantVelocityMovement*(this: DelayedConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties) =
        initBasicConstantVelocityMovement(this, basicDecimal, velocityProperties)
        this.initFieldsDelayedConstantVelocityMovement()

proc newDelayedConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): DelayedConstantVelocityMovement =
    result = DelayedConstantVelocityMovement()
    initDelayedConstantVelocityMovement(result, basicDecimal, velocityProperties)

method init*(this: DelayedConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) =
        discard

method process*(this: DelayedConstantVelocityMovement, layer: AllBinaryGameLayer) =
        if this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
            procCall BasicConstantVelocityMovement(this).process(layer)

when declared(newDelayedConstantVelocityMovementHook2):
    newDelayedConstantVelocityMovementHook2 = proc (basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): BasicConstantVelocityMovement = newDelayedConstantVelocityMovement(basicDecimal, velocityProperties)

