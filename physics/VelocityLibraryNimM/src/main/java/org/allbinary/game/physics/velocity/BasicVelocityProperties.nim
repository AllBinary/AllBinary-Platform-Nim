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
import org/allbinary/direction/DirectionUtil as DirectionUtilModule
export DirectionUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule
import org/allbinary/logic/math/vector/AxisMathVectorUtil as AxisMathVectorUtilModule
export AxisMathVectorUtilModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/game/physics/velocity/BasicVelocityInterface as BasicVelocityInterfaceModule
export BasicVelocityInterfaceModule

type
    BasicVelocityProperties* = ref object of BasicVelocityInterface
        logUtil*: LogUtil
        velocityXBasicDecimal*: BasicDecimal
        velocityYBasicDecimal*: BasicDecimal
        velocityZBasicDecimal*: BasicDecimal
        axisMathVectorUtil*: AxisMathVectorUtil
        directionUtil*: DirectionUtil

proc newBasicVelocityProperties*(): BasicVelocityProperties
proc initBasicVelocityProperties*(this: BasicVelocityProperties)
method zero*(this: BasicVelocityProperties)
method getVelocityXBasicDecimalP*(this: BasicVelocityProperties): BasicDecimal {.discardable.}
method getVelocityYBasicDecimalP*(this: BasicVelocityProperties): BasicDecimal {.discardable.}
method getVelocityZBasicDecimalP*(this: BasicVelocityProperties): BasicDecimal {.base, discardable.}
method setVelocityWithBigDecimalAndDirection*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, direction: Direction, otherDirection: Direction)
method setVelocityWithDirection*(this: BasicVelocityProperties, magnitude: int64, direction: Direction, otherDirection: Direction)
method addVelocityWithBigDecimalAndDirection*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, direction: Direction, otherDirection: Direction)
method addVelocityWithDirection*(this: BasicVelocityProperties, magnitude: int64, direction: Direction, otherDirection: Direction)
method setVelocityWithBigDecimal*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, angle: Angle, otherAngle: Angle)
method addVelocityWithBigDecimal*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, angle: Angle, otherAngle: Angle)
method setVelocity*(this: BasicVelocityProperties, magnitude: int64, angle: Angle, otherAngle: Angle)
method addVelocity*(this: BasicVelocityProperties, magnitude: int64, angle: Angle, otherAngle: Angle)
method setVelocityi*(this: BasicVelocityProperties, magnitude: int64, angle: int32, otherAngle: int32) {.base.}
method addVelocityi*(this: BasicVelocityProperties, magnitude: int64, angle: int32, otherAngle: int32)
method toString*(this: BasicVelocityProperties): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsBasicVelocityProperties(this: BasicVelocityProperties) =
    this.logUtil = LogUtil.getInstance()
    
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    this.directionUtil = DirectionUtil.getInstance()
    discard

proc initBasicVelocityProperties*(this: BasicVelocityProperties) =
        this.initFieldsBasicVelocityProperties()
        this.velocityXBasicDecimal = newBasicDecimal(0)
        this.velocityYBasicDecimal = newBasicDecimal(0)
        this.velocityZBasicDecimal = newBasicDecimal(0)

proc newBasicVelocityProperties*(): BasicVelocityProperties =
    result = BasicVelocityProperties()
    initBasicVelocityProperties(result)

method zero*(this: BasicVelocityProperties) =
        this.velocityXBasicDecimal.setint(0)
        this.velocityYBasicDecimal.setint(0)
        this.velocityZBasicDecimal.setint(0)

method getVelocityXBasicDecimalP*(this: BasicVelocityProperties): BasicDecimal {.discardable.} =
        return this.velocityXBasicDecimal

method getVelocityYBasicDecimalP*(this: BasicVelocityProperties): BasicDecimal {.discardable.} =
        return this.velocityYBasicDecimal

method getVelocityZBasicDecimalP*(this: BasicVelocityProperties): BasicDecimal {.base, discardable.} =
        return this.velocityZBasicDecimal

method setVelocityWithBigDecimalAndDirection*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, direction: Direction, otherDirection: Direction) =
        let angle: Angle = this.directionUtil.getAngle(direction)
        let otherAngle: Angle = this.directionUtil.getAngle(otherDirection)
        this.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)

method setVelocityWithDirection*(this: BasicVelocityProperties, magnitude: int64, direction: Direction, otherDirection: Direction) =
        let angle: Angle = this.directionUtil.getAngle(direction)
        let otherAngle: Angle = this.directionUtil.getAngle(otherDirection)
        this.setVelocity(magnitude, angle, otherAngle)

method addVelocityWithBigDecimalAndDirection*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, direction: Direction, otherDirection: Direction) =
        let angle: Angle = this.directionUtil.getAngle(direction)
        let otherAngle: Angle = this.directionUtil.getAngle(otherDirection)
        this.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)

method addVelocityWithDirection*(this: BasicVelocityProperties, magnitude: int64, direction: Direction, otherDirection: Direction) =
        let angle: Angle = this.directionUtil.getAngle(direction)
        let otherAngle: Angle = this.directionUtil.getAngle(otherDirection)
        this.addVelocity(magnitude, angle, otherAngle)

method setVelocityWithBigDecimal*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, angle: Angle, otherAngle: Angle) =
        let magnitude: int64 = magnitudeBasicDecimal.getUnscaled()
        this.setVelocity(magnitude, angle, otherAngle)

method addVelocityWithBigDecimal*(this: BasicVelocityProperties, magnitudeBasicDecimal: BasicDecimal, angle: Angle, otherAngle: Angle) =
        let magnitude: int64 = magnitudeBasicDecimal.getUnscaled()
        this.addVelocity(magnitude, angle, otherAngle)

method setVelocity*(this: BasicVelocityProperties, magnitude: int64, angle: Angle, otherAngle: Angle) =
        this.setVelocityi(magnitude, int32(angle.getValue()), int32(otherAngle.getValue()))

method addVelocity*(this: BasicVelocityProperties, magnitude: int64, angle: Angle, otherAngle: Angle) =
        this.addVelocityi(magnitude, int32(angle.getValue()), int32(otherAngle.getValue()))

method setVelocityi*(this: BasicVelocityProperties, magnitude: int64, angle: int32, otherAngle: int32) {.base.} =
        let xVector: int64 = (this.axisMathVectorUtil.calculateX(magnitude, angle) div int64(this.velocityXBasicDecimal.getScaledFactorValue()))
        let yVector: int64 = (this.axisMathVectorUtil.calculateY(magnitude, angle) div int64(this.velocityYBasicDecimal.getScaledFactorValue()))
        let zVector: int64 = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) div int64(this.velocityZBasicDecimal.getScaledFactorValue()))
        this.velocityXBasicDecimal.setlong(xVector)
        this.velocityYBasicDecimal.setlong(yVector)
        this.velocityZBasicDecimal.setlong(zVector)

method addVelocityi*(this: BasicVelocityProperties, magnitude: int64, angle: int32, otherAngle: int32) =
        let xVector: int64 = (this.axisMathVectorUtil.calculateX(magnitude, angle) div int64(this.velocityXBasicDecimal.getScaledFactorValue()))
        let yVector: int64 = (this.axisMathVectorUtil.calculateY(magnitude, angle) div int64(this.velocityYBasicDecimal.getScaledFactorValue()))
        let zVector: int64 = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) div int64(this.velocityZBasicDecimal.getScaledFactorValue()))
        this.velocityXBasicDecimal.addlong(xVector)
        this.velocityYBasicDecimal.addlong(yVector)
        this.velocityZBasicDecimal.addlong(zVector)

method toString*(this: BasicVelocityProperties): string {.discardable.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let positionStrings: PositionStrings = PositionStrings.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        let stringUtil: StringUtil = StringUtil.getInstance()
        stringBuffer.append("Velocity ")
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(stringUtil.toString(this.velocityXBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(stringUtil.toString(this.velocityYBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(stringUtil.toString(this.velocityZBasicDecimal))
        return stringBuffer.toString()

