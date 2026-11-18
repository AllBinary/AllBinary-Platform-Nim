# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/CustomGPoint as CustomGPointModule
export CustomGPointModule

type
    AnalogLocationInput* = ref object of JObject
        playerId*: int32
        customGPoint*: CustomGPoint
        rz*: int32
        rightTrigger*: int32
        leftTrigger*: int32

proc newAnalogLocationInput*(playerId: int32): AnalogLocationInput
proc initAnalogLocationInput*(this: AnalogLocationInput, playerId: int32)
method getPlayerId*(this: AnalogLocationInput): int32 {.base, discardable.}
method getCustomGPoint*(this: AnalogLocationInput): CustomGPoint {.base, discardable.}
method getRz*(this: AnalogLocationInput): int32 {.base, discardable.}
method setRz*(this: AnalogLocationInput, rz: int32) {.base.}
method getRightTrigger*(this: AnalogLocationInput): int32 {.base, discardable.}
method setRightTrigger*(this: AnalogLocationInput, rightTrigger: int32) {.base.}
method getLeftTrigger*(this: AnalogLocationInput): int32 {.base, discardable.}
method setLeftTrigger*(this: AnalogLocationInput, leftTrigger: int32) {.base.}

var AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue: AnalogLocationInput
var AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet = false
proc NULL_ANALOG_LOCATION_INPUT*(t: typedesc[AnalogLocationInput]): AnalogLocationInput =
    if not AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet:
        AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet = true
        AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue = newAnalogLocationInput(-1)
    AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue

# Java field initializers run after the base initializer
proc initFieldsAnalogLocationInput(this: AnalogLocationInput) =
    
    
    this.rz = 0
    this.rightTrigger = 0
    this.leftTrigger = 0
    discard

proc initAnalogLocationInput*(this: AnalogLocationInput, playerId: int32) =
        this.initFieldsAnalogLocationInput()
        this.playerId = playerId
        this.customGPoint = newCustomGPoint(0, 0, 0)

proc newAnalogLocationInput*(playerId: int32): AnalogLocationInput =
    result = AnalogLocationInput()
    initAnalogLocationInput(result, playerId)

method getPlayerId*(this: AnalogLocationInput): int32 {.base, discardable.} =
        return this.playerId

method getCustomGPoint*(this: AnalogLocationInput): CustomGPoint {.base, discardable.} =
        return this.customGPoint

method getRz*(this: AnalogLocationInput): int32 {.base, discardable.} =
        return this.rz

method setRz*(this: AnalogLocationInput, rz: int32) {.base.} =
        this.rz = rz

method getRightTrigger*(this: AnalogLocationInput): int32 {.base, discardable.} =
        return this.rightTrigger

method setRightTrigger*(this: AnalogLocationInput, rightTrigger: int32) {.base.} =
        this.rightTrigger = rightTrigger

method getLeftTrigger*(this: AnalogLocationInput): int32 {.base, discardable.} =
        return this.leftTrigger

method setLeftTrigger*(this: AnalogLocationInput, leftTrigger: int32) {.base.} =
        this.leftTrigger = leftTrigger

