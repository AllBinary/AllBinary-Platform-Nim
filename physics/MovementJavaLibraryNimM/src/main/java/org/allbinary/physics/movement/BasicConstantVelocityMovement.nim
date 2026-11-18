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
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/logic/math/vector/AxisMathVectorUtil as AxisMathVectorUtilModule
export AxisMathVectorUtilModule
import org/allbinary/physics/movement/Movement as MovementModule
export MovementModule

type
    BasicConstantVelocityMovement* = ref object of Movement
        velocityProperties*: BasicVelocityProperties
        speedBasicDecimal*: BasicDecimal
        axisMathVectorUtil*: AxisMathVectorUtil

converter jAsVelocityInterfaceCompositeInterface*(value: BasicConstantVelocityMovement): VelocityInterfaceCompositeInterface = cast[VelocityInterfaceCompositeInterface](value)
proc newBasicConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): BasicConstantVelocityMovement
proc initBasicConstantVelocityMovement*(this: BasicConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties)
method init*(this: BasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32)
method moveOutsideRadius*(this: BasicConstantVelocityMovement, layer: AllBinaryLayer, radius: int64, angle: int32, otherAngle: int32) {.base.}
method process*(this: BasicConstantVelocityMovement, layer: AllBinaryGameLayer)
method toString*(this: BasicConstantVelocityMovement): string {.discardable.}
method stop*(this: BasicConstantVelocityMovement)
method getVelocityProperties*(this: BasicConstantVelocityMovement): BasicVelocityProperties {.discardable.}
method setVelocityProperties*(this: BasicConstantVelocityMovement, velocityProperties: BasicVelocityProperties) {.base.}
method setSpeedBasicDecimal*(this: BasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal) {.base.}
method getSpeedBasicDecimal*(this: BasicConstantVelocityMovement): BasicDecimal {.base, discardable.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBasicConstantVelocityMovement(this: BasicConstantVelocityMovement) =
    
    this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    discard

proc initBasicConstantVelocityMovement*(this: BasicConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties) =
        initMovement(this)
        this.initFieldsBasicConstantVelocityMovement()
        this.setSpeedBasicDecimal(basicDecimal)
        this.velocityProperties = velocityProperties

proc newBasicConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): BasicConstantVelocityMovement =
    result = BasicConstantVelocityMovement()
    initBasicConstantVelocityMovement(result, basicDecimal, velocityProperties)

method init*(this: BasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) =
        this.speedBasicDecimal = speedBasicDecimal
        var angleFactory: AngleFactory = AngleFactory.getInstance()
        this.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))

method moveOutsideRadius*(this: BasicConstantVelocityMovement, layer: AllBinaryLayer, radius: int64, angle: int32, otherAngle: int32) {.base.} =
        var scaleFactorValue: int32 = this.speedBasicDecimal.getScaledFactorValue()
        var xVector: int32 = jToInt32((this.axisMathVectorUtil.calculateX(radius, angle) div int64(scaleFactorValue)))
        var yVector: int32 = jToInt32((this.axisMathVectorUtil.calculateY(radius, angle) div int64(scaleFactorValue)))
        var zVector: int32 = jToInt32((this.axisMathVectorUtil.calculateZ(radius, otherAngle) div int64(scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, zVector)

method process*(this: BasicConstantVelocityMovement, layer: AllBinaryGameLayer) =
        layer.moveDXYZ(this.velocityProperties.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties.getVelocityYBasicDecimalP().getScaled(), this.velocityProperties.getVelocityZBasicDecimalP().getScaled())

method toString*(this: BasicConstantVelocityMovement): string {.discardable.} =
        return this.velocityProperties.toString()

method stop*(this: BasicConstantVelocityMovement) =
        this.velocityProperties.zero()

method getVelocityProperties*(this: BasicConstantVelocityMovement): BasicVelocityProperties {.discardable.} =
        return this.velocityProperties

method setVelocityProperties*(this: BasicConstantVelocityMovement, velocityProperties: BasicVelocityProperties) {.base.} =
        this.velocityProperties = velocityProperties

method setSpeedBasicDecimal*(this: BasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal) {.base.} =
        this.speedBasicDecimal = speedBasicDecimal

method getSpeedBasicDecimal*(this: BasicConstantVelocityMovement): BasicDecimal {.base, discardable.} =
        return this.speedBasicDecimal

when declared(newBasicConstantVelocityMovementHook2):
    newBasicConstantVelocityMovementHook2 = proc (basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): Movement = newBasicConstantVelocityMovement(basicDecimal, velocityProperties)

