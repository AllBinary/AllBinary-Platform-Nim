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
import org/allbinary/physics/movement/BasicConstantVelocityMovement as BasicConstantVelocityMovementModule
export BasicConstantVelocityMovementModule

type
    PreciseConstantVelocityMovement* = ref object of BasicConstantVelocityMovement
        accumulatedX*: int32
        accumulatedY*: int32
        accumulatedZ*: int32
        factorValue*: int32

proc newPreciseConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): PreciseConstantVelocityMovement
proc initPreciseConstantVelocityMovement*(this: PreciseConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties)
method init*(this: PreciseConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32)
method process*(this: PreciseConstantVelocityMovement, layer: AllBinaryGameLayer)
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule
import org/allbinary/logic/math/ScaleFactorFactory as ScaleFactorFactoryModule
export ScaleFactorFactoryModule


# Java field initializers run after the base initializer
proc initFieldsPreciseConstantVelocityMovement(this: PreciseConstantVelocityMovement) =
    this.accumulatedX = 0
    this.accumulatedY = 0
    this.accumulatedZ = 0
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    discard

proc initPreciseConstantVelocityMovement*(this: PreciseConstantVelocityMovement, basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties) =
        initBasicConstantVelocityMovement(this, basicDecimal, velocityProperties)
        this.initFieldsPreciseConstantVelocityMovement()

proc newPreciseConstantVelocityMovement*(basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): PreciseConstantVelocityMovement =
    result = PreciseConstantVelocityMovement()
    initPreciseConstantVelocityMovement(result, basicDecimal, velocityProperties)

method init*(this: PreciseConstantVelocityMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) =
        discard

method process*(this: PreciseConstantVelocityMovement, layer: AllBinaryGameLayer) =
        let mathUtil: MathUtil = MathUtil.getInstance()
        let velocityProperties: BasicVelocityProperties = this.getVelocityProperties()
        this.accumulatedX = jToInt32((int64(this.accumulatedX) +% velocityProperties.getVelocityXBasicDecimalP().getUnscaled()))
        this.accumulatedY = jToInt32((int64(this.accumulatedY) +% velocityProperties.getVelocityYBasicDecimalP().getUnscaled()))
        this.accumulatedZ = jToInt32((int64(this.accumulatedZ) +% velocityProperties.getVelocityZBasicDecimalP().getUnscaled()))
        layer.moveDXYZ(this.accumulatedX div this.factorValue, this.accumulatedY div this.factorValue, this.accumulatedZ div this.factorValue)
        if mathUtil.abs(this.accumulatedX) > this.factorValue:
            this.accumulatedX = 0
        if mathUtil.abs(this.accumulatedY) > this.factorValue:
            this.accumulatedY = 0
        if mathUtil.abs(this.accumulatedZ) > this.factorValue:
            this.accumulatedZ = 0

when declared(newPreciseConstantVelocityMovementHook2):
    newPreciseConstantVelocityMovementHook2 = proc (basicDecimal: BasicDecimal, velocityProperties: BasicVelocityProperties): BasicConstantVelocityMovement = newPreciseConstantVelocityMovement(basicDecimal, velocityProperties)

