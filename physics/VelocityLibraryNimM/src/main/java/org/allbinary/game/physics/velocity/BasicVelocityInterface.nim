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
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/math/Angle as AngleModule
export AngleModule

type
    BasicVelocityInterface* = ref object of JObject


method getVelocityXBasicDecimalP*(this: BasicVelocityInterface): BasicDecimal {.base, discardable.} =
        raise newJException("AbstractMethodError", "getVelocityXBasicDecimalP")

method getVelocityYBasicDecimalP*(this: BasicVelocityInterface): BasicDecimal {.base, discardable.} =
        raise newJException("AbstractMethodError", "getVelocityYBasicDecimalP")

method zero*(this: BasicVelocityInterface) {.base.} =
        raise newJException("AbstractMethodError", "zero")

method setVelocityWithBigDecimalAndDirection*(this: BasicVelocityInterface, magnitudeBasicDecimal: BasicDecimal, direction: Direction, otherDirection: Direction) {.base.} =
        raise newJException("AbstractMethodError", "setVelocityWithBigDecimalAndDirection")

method addVelocityWithBigDecimalAndDirection*(this: BasicVelocityInterface, magnitudeBasicDecimal: BasicDecimal, direction: Direction, otherDirection: Direction) {.base.} =
        raise newJException("AbstractMethodError", "addVelocityWithBigDecimalAndDirection")

method setVelocityWithDirection*(this: BasicVelocityInterface, magnitude: int64, direction: Direction, otherDirection: Direction) {.base.} =
        raise newJException("AbstractMethodError", "setVelocityWithDirection")

method addVelocityWithDirection*(this: BasicVelocityInterface, magnitude: int64, direction: Direction, otherDirection: Direction) {.base.} =
        raise newJException("AbstractMethodError", "addVelocityWithDirection")

method setVelocityWithBigDecimal*(this: BasicVelocityInterface, magnitudeBasicDecimal: BasicDecimal, angle: Angle, otherAngle: Angle) {.base.} =
        raise newJException("AbstractMethodError", "setVelocityWithBigDecimal")

method addVelocityWithBigDecimal*(this: BasicVelocityInterface, magnitudeBasicDecimal: BasicDecimal, angle: Angle, otherAngle: Angle) {.base.} =
        raise newJException("AbstractMethodError", "addVelocityWithBigDecimal")

method setVelocity*(this: BasicVelocityInterface, magnitude: int64, angle: Angle, otherAngle: Angle) {.base.} =
        raise newJException("AbstractMethodError", "setVelocity")

method addVelocity*(this: BasicVelocityInterface, magnitude: int64, angle: Angle, otherAngle: Angle) {.base.} =
        raise newJException("AbstractMethodError", "addVelocity")

method addVelocityi*(this: BasicVelocityInterface, magnitude: int64, angle: int32, otherAngle: int32) {.base.} =
        raise newJException("AbstractMethodError", "addVelocityi")

