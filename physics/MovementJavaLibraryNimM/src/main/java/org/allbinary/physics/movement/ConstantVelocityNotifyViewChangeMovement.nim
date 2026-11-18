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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/logic/math/vector/AxisMathVectorUtil as AxisMathVectorUtilModule
export AxisMathVectorUtilModule
import org/allbinary/physics/movement/Movement as MovementModule
export MovementModule

type
    ConstantVelocityNotifyViewChangeMovement* = ref object of Movement
        basicVelocityProperties*: BasicVelocityProperties
        speedBasicDecimal*: BasicDecimal
        axisMathVectorUtil*: AxisMathVectorUtil

proc newConstantVelocityNotifyViewChangeMovement*(): ConstantVelocityNotifyViewChangeMovement
proc initConstantVelocityNotifyViewChangeMovement*(this: ConstantVelocityNotifyViewChangeMovement)
method init*(this: ConstantVelocityNotifyViewChangeMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32)
method moveOutsideRadius*(this: ConstantVelocityNotifyViewChangeMovement, layer: AllBinaryLayer, radius: int64, angle: int32, otherAngle: int32) {.base.}
method process*(this: ConstantVelocityNotifyViewChangeMovement, layer: AllBinaryGameLayer)
method stop*(this: ConstantVelocityNotifyViewChangeMovement)
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


# Java field initializers run after the base initializer
proc initFieldsConstantVelocityNotifyViewChangeMovement(this: ConstantVelocityNotifyViewChangeMovement) =
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    discard

proc initConstantVelocityNotifyViewChangeMovement*(this: ConstantVelocityNotifyViewChangeMovement) =
        initMovement(this)
        this.initFieldsConstantVelocityNotifyViewChangeMovement()
        this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
        this.basicVelocityProperties = newBasicVelocityProperties()

proc newConstantVelocityNotifyViewChangeMovement*(): ConstantVelocityNotifyViewChangeMovement =
    result = ConstantVelocityNotifyViewChangeMovement()
    initConstantVelocityNotifyViewChangeMovement(result)

method init*(this: ConstantVelocityNotifyViewChangeMovement, speedBasicDecimal: BasicDecimal, angle: int32, otherAngle: int32) =
        this.speedBasicDecimal = speedBasicDecimal
        var angleFactory: AngleFactory = AngleFactory.getInstance()
        this.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))

method moveOutsideRadius*(this: ConstantVelocityNotifyViewChangeMovement, layer: AllBinaryLayer, radius: int64, angle: int32, otherAngle: int32) {.base.} =
        var scaleFactorValue: int32 = this.speedBasicDecimal.getScaledFactorValue()
        var xVector: int32 = jToInt32((this.axisMathVectorUtil.calculateX(radius, angle) div int64(scaleFactorValue)))
        var yVector: int32 = jToInt32((this.axisMathVectorUtil.calculateY(radius, angle) div int64(scaleFactorValue)))
        var zVector: int32 = jToInt32((this.axisMathVectorUtil.calculateZ(radius, otherAngle) div int64(scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, zVector)

method process*(this: ConstantVelocityNotifyViewChangeMovement, layer: AllBinaryGameLayer) =
        var x: int32 = this.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled()
        var y: int32 = this.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled()
        var z: int32 = this.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled()
        layer.moveDXYZ(x, y, z)
        if x != 0 or y != 0 or z != 0:
            layer.onViewPositionChangeEvent()

method stop*(this: ConstantVelocityNotifyViewChangeMovement) =
        this.basicVelocityProperties.zero()

when declared(newConstantVelocityNotifyViewChangeMovementHook0):
    newConstantVelocityNotifyViewChangeMovementHook0 = proc (): Movement = newConstantVelocityNotifyViewChangeMovement()

