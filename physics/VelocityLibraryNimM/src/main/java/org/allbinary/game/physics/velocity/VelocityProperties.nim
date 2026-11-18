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
# package org.allbinary.game.physics.velocity

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/game/physics/velocity/VelocityInterface as VelocityInterfaceModule
export VelocityInterfaceModule

type
    VelocityProperties* = ref object of BasicVelocityProperties
        maxForwardVelocity*: int32
        maxReverseVelocity*: int32

converter jAsVelocityInterface*(value: VelocityProperties): VelocityInterface = cast[VelocityInterface](value)
proc newVelocityProperties*(maxForwardVelocity: int32, maxReverseVelocity: int32): VelocityProperties
proc initVelocityProperties*(this: VelocityProperties, maxForwardVelocity: int32, maxReverseVelocity: int32)
method getMaxForwardVelocity*(this: VelocityProperties): int32 {.discardable.}
method setMaxForwardVelocity*(this: VelocityProperties, maxForwardVelocity: int32)
method getMaxReverseVelocity*(this: VelocityProperties): int32 {.discardable.}
method setMaxReverseVelocity*(this: VelocityProperties, maxReverseVelocity: int32)
method limitMaxXYForwardVelocity*(this: VelocityProperties)
method limitMaxXYReverseVelocity*(this: VelocityProperties)
method limitMaxYForwardVelocity*(this: VelocityProperties) {.base.}
method limitMaxYReverseVelocity*(this: VelocityProperties) {.base.}
method limitMaxXForwardVelocity*(this: VelocityProperties) {.base.}
method limitMaxXReverseVelocity*(this: VelocityProperties) {.base.}
method isOverXYMaxForwardVelocity*(this: VelocityProperties): bool {.base, discardable.}
method isOverXYMaxReverseVelocity*(this: VelocityProperties): bool {.base, discardable.}
method limitXYToForwardAndReverseMaxVelocity*(this: VelocityProperties)
method limitMaxXYVelocity*(this: VelocityProperties, maxVelocity: int32)
method limitMaxPositiveYVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.}
method limitMaxNegativeYVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.}
method limitMaxYVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.}
method limitMaxXVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.}
method isOverXYMaxVelocity*(this: VelocityProperties, maxVelocity: int32): bool {.base, discardable.}
method setVelocityi*(this: VelocityProperties, magnitude: int64, angle: int32, otherAngle: int32)
method addVelocityi*(this: VelocityProperties, magnitude: int64, angle: int32, otherAngle: int32)

var VelocityProperties_NULL_VELOCITY_PROPERTIESValue: VelocityProperties
var VelocityProperties_NULL_VELOCITY_PROPERTIESSet = false
proc NULL_VELOCITY_PROPERTIES*(t: typedesc[VelocityProperties]): VelocityProperties =
    if not VelocityProperties_NULL_VELOCITY_PROPERTIESSet:
        VelocityProperties_NULL_VELOCITY_PROPERTIESSet = true
        VelocityProperties_NULL_VELOCITY_PROPERTIESValue = newVelocityProperties(0, 0)
    VelocityProperties_NULL_VELOCITY_PROPERTIESValue

# Java field initializers run after the base initializer
proc initFieldsVelocityProperties(this: VelocityProperties) =
    this.maxForwardVelocity = 0
    this.maxReverseVelocity = 0
    discard

proc initVelocityProperties*(this: VelocityProperties, maxForwardVelocity: int32, maxReverseVelocity: int32) =
        initBasicVelocityProperties(this)
        this.initFieldsVelocityProperties()
        this.setMaxForwardVelocity(maxForwardVelocity)
        this.setMaxReverseVelocity(maxReverseVelocity)

proc newVelocityProperties*(maxForwardVelocity: int32, maxReverseVelocity: int32): VelocityProperties =
    result = VelocityProperties()
    initVelocityProperties(result, maxForwardVelocity, maxReverseVelocity)

method getMaxForwardVelocity*(this: VelocityProperties): int32 {.discardable.} =
        return this.maxForwardVelocity

method setMaxForwardVelocity*(this: VelocityProperties, maxForwardVelocity: int32) =
        this.maxForwardVelocity = maxForwardVelocity

method getMaxReverseVelocity*(this: VelocityProperties): int32 {.discardable.} =
        return this.maxReverseVelocity

method setMaxReverseVelocity*(this: VelocityProperties, maxReverseVelocity: int32) =
        this.maxReverseVelocity = maxReverseVelocity

method limitMaxXYForwardVelocity*(this: VelocityProperties) =
        this.limitMaxXYVelocity(this.getMaxForwardVelocity())

method limitMaxXYReverseVelocity*(this: VelocityProperties) =
        this.limitMaxXYVelocity(this.getMaxReverseVelocity())

method limitMaxYForwardVelocity*(this: VelocityProperties) {.base.} =
        this.limitMaxYVelocity(this.getMaxForwardVelocity())

method limitMaxYReverseVelocity*(this: VelocityProperties) {.base.} =
        this.limitMaxYVelocity(this.getMaxReverseVelocity())

method limitMaxXForwardVelocity*(this: VelocityProperties) {.base.} =
        this.limitMaxXVelocity(this.getMaxForwardVelocity())

method limitMaxXReverseVelocity*(this: VelocityProperties) {.base.} =
        this.limitMaxXVelocity(this.getMaxReverseVelocity())

method isOverXYMaxForwardVelocity*(this: VelocityProperties): bool {.base, discardable.} =
        return this.isOverXYMaxVelocity(this.getMaxForwardVelocity())

method isOverXYMaxReverseVelocity*(this: VelocityProperties): bool {.base, discardable.} =
        return this.isOverXYMaxVelocity(this.getMaxReverseVelocity())

method limitXYToForwardAndReverseMaxVelocity*(this: VelocityProperties) =
        this.limitMaxXYForwardVelocity()
        this.limitMaxXYReverseVelocity()

method limitMaxXYVelocity*(this: VelocityProperties, maxVelocity: int32) =
        this.limitMaxXVelocity(maxVelocity)
        this.limitMaxYVelocity(maxVelocity)

method limitMaxPositiveYVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.} =
        if this.velocityYBasicDecimal.getUnscaled() > int64(maxVelocity):
            this.velocityYBasicDecimal.setint(maxVelocity)

method limitMaxNegativeYVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.} =
        if this.velocityYBasicDecimal.getUnscaled() < int64(-maxVelocity):
            this.velocityYBasicDecimal.setint(-maxVelocity)

method limitMaxYVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.} =
        this.limitMaxPositiveYVelocity(maxVelocity)
        this.limitMaxNegativeYVelocity(maxVelocity)

method limitMaxXVelocity*(this: VelocityProperties, maxVelocity: int32) {.base.} =
        if this.velocityXBasicDecimal.getUnscaled() > int64(maxVelocity):
            this.velocityXBasicDecimal.setint(maxVelocity)
        if this.velocityXBasicDecimal.getUnscaled() < int64(-maxVelocity):
            this.velocityXBasicDecimal.setint(-maxVelocity)

method isOverXYMaxVelocity*(this: VelocityProperties, maxVelocity: int32): bool {.base, discardable.} =
        if this.velocityXBasicDecimal.getUnscaled() > int64(maxVelocity):
            return true
        if this.velocityXBasicDecimal.getUnscaled() < int64(-maxVelocity):
            return true
        if this.velocityYBasicDecimal.getUnscaled() > int64(maxVelocity):
            return true
        if this.velocityYBasicDecimal.getUnscaled() < int64(-maxVelocity):
            return true
        return false

method setVelocityi*(this: VelocityProperties, magnitude: int64, angle: int32, otherAngle: int32) =
        procCall BasicVelocityProperties(this).setVelocityi(magnitude, angle, otherAngle)
        this.limitXYToForwardAndReverseMaxVelocity()

method addVelocityi*(this: VelocityProperties, magnitude: int64, angle: int32, otherAngle: int32) =
        procCall BasicVelocityProperties(this).addVelocityi(magnitude, angle, otherAngle)
        this.limitXYToForwardAndReverseMaxVelocity()

when declared(newVelocityPropertiesHook2):
    newVelocityPropertiesHook2 = proc (maxForwardVelocity: int32, maxReverseVelocity: int32): BasicVelocityProperties = newVelocityProperties(maxForwardVelocity, maxReverseVelocity)

