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
    NoZBasicConstantVelocityMovement* = ref object of Movement
        velocityProperties*: BasicVelocityProperties
        speedBasicDecimal*: BasicDecimal
        axisMathVectorUtil*: AxisMathVectorUtil

converter jAsVelocityInterfaceCompositeInterface*(value: NoZBasicConstantVelocityMovement): VelocityInterfaceCompositeInterface = cast[VelocityInterfaceCompositeInterface](value)
proc newNoZBasicConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): NoZBasicConstantVelocityMovement
proc initNoZBasicConstantVelocityMovement*(this: NoZBasicConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties)
method init*(this: NoZBasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32)
method moveOutsideRadius*(this: NoZBasicConstantVelocityMovement, layer: AllBinaryLayer, radius: int64, angle: int32, otherAngle: int32) {.base.}
method process*(this: NoZBasicConstantVelocityMovement, layer: AllBinaryGameLayer)
method toString*(this: NoZBasicConstantVelocityMovement): string {.discardable.}
method stop*(this: NoZBasicConstantVelocityMovement)
method getVelocityProperties*(this: NoZBasicConstantVelocityMovement): BasicVelocityProperties {.discardable.}
method setVelocityProperties*(this: NoZBasicConstantVelocityMovement, velocityProperties: BasicVelocityProperties) {.base.}
method setSpeedBasicDecimal*(this: NoZBasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal) {.base.}
method getSpeedBasicDecimal*(this: NoZBasicConstantVelocityMovement): BasicDecimal {.base, discardable.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


# Java field initializers run after the base initializer
proc initFieldsNoZBasicConstantVelocityMovement(this: NoZBasicConstantVelocityMovement) =
    
    this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    discard

proc initNoZBasicConstantVelocityMovement*(this: NoZBasicConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties) =
        initMovement(this)
        this.initFieldsNoZBasicConstantVelocityMovement()
        this.setSpeedBasicDecimal(basicDecimal)
        this.velocityProperties = velocityProperties

proc newNoZBasicConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): NoZBasicConstantVelocityMovement =
    result = NoZBasicConstantVelocityMovement()
    initNoZBasicConstantVelocityMovement(result, basicDecimal, velocityProperties)

method init*(this: NoZBasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) =
        this.speedBasicDecimal = speedBasicDecimal
        var angleFactory: AngleFactory = AngleFactory.getInstance()
        this.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))

method moveOutsideRadius*(this: NoZBasicConstantVelocityMovement, layer: AllBinaryLayer, radius: int64, angle: int32, otherAngle: int32) {.base.} =
        var scaleFactorValue: int32 = this.speedBasicDecimal.getScaledFactorValue()
        var xVector: int32 = jToInt32((this.axisMathVectorUtil.calculateX(radius, angle) div int64(scaleFactorValue)))
        var yVector: int32 = jToInt32((this.axisMathVectorUtil.calculateY(radius, angle) div int64(scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, 0)

method process*(this: NoZBasicConstantVelocityMovement, layer: AllBinaryGameLayer) =
        layer.moveDXYZ(this.velocityProperties.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties.getVelocityYBasicDecimalP().getScaled(), 0)

method toString*(this: NoZBasicConstantVelocityMovement): string {.discardable.} =
        return this.velocityProperties.toString()

method stop*(this: NoZBasicConstantVelocityMovement) =
        this.velocityProperties.zero()

method getVelocityProperties*(this: NoZBasicConstantVelocityMovement): BasicVelocityProperties {.discardable.} =
        return this.velocityProperties

method setVelocityProperties*(this: NoZBasicConstantVelocityMovement, velocityProperties: BasicVelocityProperties) {.base.} =
        this.velocityProperties = velocityProperties

method setSpeedBasicDecimal*(this: NoZBasicConstantVelocityMovement, speedBasicDecimal: BasicDecimal) {.base.} =
        this.speedBasicDecimal = speedBasicDecimal

method getSpeedBasicDecimal*(this: NoZBasicConstantVelocityMovement): BasicDecimal {.base, discardable.} =
        return this.speedBasicDecimal

when declared(newNoZBasicConstantVelocityMovementHook2):
    newNoZBasicConstantVelocityMovementHook2 = proc (basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): Movement = newNoZBasicConstantVelocityMovement(basicDecimal, velocityProperties)

