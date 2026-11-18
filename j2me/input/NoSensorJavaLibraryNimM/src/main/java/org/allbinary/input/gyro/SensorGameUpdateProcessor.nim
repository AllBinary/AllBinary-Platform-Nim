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
# package org.allbinary.input.gyro

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/AllBinarySensor as AllBinarySensorModule
export AllBinarySensorModule

type
    SensorGameUpdateProcessor* = ref object of JObject
        inputSensor*: AllBinarySensor

proc newSensorGameUpdateProcessor*(): SensorGameUpdateProcessor
method setInputSensor*(this: SensorGameUpdateProcessor, inputSensor: AllBinarySensor) {.base.}
method getInputSensor*(this: SensorGameUpdateProcessor): AllBinarySensor {.base, discardable.}
method process*(this: SensorGameUpdateProcessor, anyType: JObject) {.base.}
method sendNotifications*(this: SensorGameUpdateProcessor, anyType: JObject) {.base.}
method isAnySensor*(this: SensorGameUpdateProcessor): bool {.base, discardable.}
method setNoSensors*(this: SensorGameUpdateProcessor) {.base.}
import org/allbinary/input/NoAllBinarySensor as NoAllBinarySensorModule
export NoAllBinarySensorModule


# Java field initializers run after the base initializer
proc initFieldsSensorGameUpdateProcessor(this: SensorGameUpdateProcessor) =
    this.inputSensor = NoAllBinarySensor.getInstance()
    discard

proc initSensorGameUpdateProcessor*(this: SensorGameUpdateProcessor) =
    this.initFieldsSensorGameUpdateProcessor()

proc newSensorGameUpdateProcessor*(): SensorGameUpdateProcessor =
    result = SensorGameUpdateProcessor()
    initSensorGameUpdateProcessor(result)

method setInputSensor*(this: SensorGameUpdateProcessor, inputSensor: AllBinarySensor) {.base.} =
        this.inputSensor = inputSensor

method getInputSensor*(this: SensorGameUpdateProcessor): AllBinarySensor {.base, discardable.} =
        return this.inputSensor

method process*(this: SensorGameUpdateProcessor, anyType: JObject) {.base.} =
        discard

method sendNotifications*(this: SensorGameUpdateProcessor, anyType: JObject) {.base.} =
        discard

method isAnySensor*(this: SensorGameUpdateProcessor): bool {.base, discardable.} =
        if this.inputSensor == NoAllBinarySensor.getInstance():
            return false
        else:
            return true

method setNoSensors*(this: SensorGameUpdateProcessor) {.base.} =
        this.setInputSensor(NoAllBinarySensor.getInstance())

