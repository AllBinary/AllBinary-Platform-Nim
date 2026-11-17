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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Long as LongModule
export LongModule

type
    BasicDecimal* = ref object of JObject
        units*: int64
        scaled*: int32
        factor*: int32
        factorValue*: int32

proc newBasicDecimal*(units: int64): BasicDecimal
proc initBasicDecimal*(this: BasicDecimal, units: int64)
proc createBigDecimal*(t: typedesc[BasicDecimal], bigDecimal: BasicDecimal): BasicDecimal {.discardable.}
method setint*(this: BasicDecimal, value: int32) {.base.}
method setlong*(this: BasicDecimal, value: int64) {.base.}
method set*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.}
method addint*(this: BasicDecimal, value: int32) {.base.}
method addlong*(this: BasicDecimal, value: int64) {.base.}
method add*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.}
method subtractint*(this: BasicDecimal, value: int32) {.base.}
method subtractlong*(this: BasicDecimal, value: int64) {.base.}
method subtract*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.}
method multiplyint*(this: BasicDecimal, value: int32) {.base.}
method multiplylong*(this: BasicDecimal, value: int64) {.base.}
method multiply*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.}
method divideint*(this: BasicDecimal, value: int32) {.base.}
method dividelong*(this: BasicDecimal, value: int64) {.base.}
method divide*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.}
method getUnscaled*(this: BasicDecimal): int64 {.base, discardable.}
method updateScaled*(this: BasicDecimal) {.base.}
method getScaled*(this: BasicDecimal): int32 {.base, discardable.}
method toString*(this: BasicDecimal): string {.discardable.}
method getScaledFactor*(this: BasicDecimal): int32 {.base, discardable.}
method getScaledFactorValue*(this: BasicDecimal): int32 {.base, discardable.}
import org/allbinary/logic/math/ScaleFactorFactory as ScaleFactorFactoryModule
export ScaleFactorFactoryModule

var BasicDecimal_ZERO_BIGDECIMALValue: BasicDecimal
var BasicDecimal_ZERO_BIGDECIMALSet = false
proc ZERO_BIGDECIMAL*(t: typedesc[BasicDecimal]): BasicDecimal =
    if not BasicDecimal_ZERO_BIGDECIMALSet:
        BasicDecimal_ZERO_BIGDECIMALSet = true
        BasicDecimal_ZERO_BIGDECIMALValue = newBasicDecimal(0)
    BasicDecimal_ZERO_BIGDECIMALValue

# Java field initializers run after the base initializer
proc initFieldsBasicDecimal(this: BasicDecimal) =
    
    this.scaled = 0
    this.factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    discard

proc createBigDecimal*(t: typedesc[BasicDecimal], bigDecimal: BasicDecimal): BasicDecimal {.discardable.} =
        return newBasicDecimal(bigDecimal.getUnscaled())

proc initBasicDecimal*(this: BasicDecimal, units: int64) =
        this.initFieldsBasicDecimal()
        this.units = units
        this.updateScaled()

proc newBasicDecimal*(units: int64): BasicDecimal =
    result = BasicDecimal()
    initBasicDecimal(result, units)

method setint*(this: BasicDecimal, value: int32) {.base.} =
        this.units = int64(value)
        this.updateScaled()

method setlong*(this: BasicDecimal, value: int64) {.base.} =
        this.units = value
        this.updateScaled()

method set*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.} =
        this.units = bigDecimal.getUnscaled()
        this.updateScaled()

method addint*(this: BasicDecimal, value: int32) {.base.} =
        this.units = this.units +% int64(value)
        this.updateScaled()

method addlong*(this: BasicDecimal, value: int64) {.base.} =
        this.units = this.units +% value
        this.updateScaled()

method add*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.} =
        this.units = this.units +% bigDecimal.getUnscaled()
        this.updateScaled()

method subtractint*(this: BasicDecimal, value: int32) {.base.} =
        this.units = this.units -% int64(value)
        this.updateScaled()

method subtractlong*(this: BasicDecimal, value: int64) {.base.} =
        this.units = this.units -% value
        this.updateScaled()

method subtract*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.} =
        this.units = this.units -% bigDecimal.getUnscaled()
        this.updateScaled()

method multiplyint*(this: BasicDecimal, value: int32) {.base.} =
        this.units = this.units *% int64(value)
        this.updateScaled()

method multiplylong*(this: BasicDecimal, value: int64) {.base.} =
        this.units = this.units *% value
        this.updateScaled()

method multiply*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.} =
        this.units = this.units *% bigDecimal.getUnscaled()
        this.updateScaled()

method divideint*(this: BasicDecimal, value: int32) {.base.} =
        this.units = this.units div int64(value)
        this.updateScaled()

method dividelong*(this: BasicDecimal, value: int64) {.base.} =
        this.units = this.units div value
        this.updateScaled()

method divide*(this: BasicDecimal, bigDecimal: BasicDecimal) {.base.} =
        this.units = this.units div bigDecimal.getUnscaled()
        this.updateScaled()

method getUnscaled*(this: BasicDecimal): int64 {.base, discardable.} =
        return this.units

method updateScaled*(this: BasicDecimal) {.base.} =
        this.scaled = jToInt32((this.units div int64(this.factorValue)))

method getScaled*(this: BasicDecimal): int32 {.base, discardable.} =
        return this.scaled

method toString*(this: BasicDecimal): string {.discardable.} =
        return jstr(this.units)

method getScaledFactor*(this: BasicDecimal): int32 {.base, discardable.} =
        return this.factor

method getScaledFactorValue*(this: BasicDecimal): int32 {.base, discardable.} =
        return this.factorValue

