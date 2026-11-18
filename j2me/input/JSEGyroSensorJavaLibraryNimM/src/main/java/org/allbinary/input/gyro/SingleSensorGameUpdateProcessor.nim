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
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/input/gyro/SensorGameUpdateProcessor as SensorGameUpdateProcessorModule
export SensorGameUpdateProcessorModule

type
    SingleSensorGameUpdateProcessor* = ref object of SensorGameUpdateProcessor
        accelerometerSensorUpdateProcessor*: Processor
        gyroSensorUpdateProcessor*: Processor

proc newSingleSensorGameUpdateProcessor*(): SingleSensorGameUpdateProcessor
method process*(this: SingleSensorGameUpdateProcessor, anyType: JObject)
method sendNotifications*(this: SingleSensorGameUpdateProcessor, anyType: JObject)
import org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor as AccelerometerSensorUpdateProcessorModule
export AccelerometerSensorUpdateProcessorModule
import org/allbinary/input/gyro/GyroSensorUpdateProcessor as GyroSensorUpdateProcessorModule
export GyroSensorUpdateProcessorModule


# Java field initializers run after the base initializer
proc initFieldsSingleSensorGameUpdateProcessor(this: SingleSensorGameUpdateProcessor) =
    this.accelerometerSensorUpdateProcessor = newAccelerometerSensorUpdateProcessor()
    this.gyroSensorUpdateProcessor = newGyroSensorUpdateProcessor()
    discard

proc initSingleSensorGameUpdateProcessor*(this: SingleSensorGameUpdateProcessor) =
    initSensorGameUpdateProcessor(this)
    this.initFieldsSingleSensorGameUpdateProcessor()

proc newSingleSensorGameUpdateProcessor*(): SingleSensorGameUpdateProcessor =
    result = SingleSensorGameUpdateProcessor()
    initSingleSensorGameUpdateProcessor(result)

method process*(this: SingleSensorGameUpdateProcessor, anyType: JObject) =
        this.setNoSensors()

method sendNotifications*(this: SingleSensorGameUpdateProcessor, anyType: JObject) =
        discard

when declared(newSingleSensorGameUpdateProcessorHook0):
    newSingleSensorGameUpdateProcessorHook0 = proc (): SensorGameUpdateProcessor = newSingleSensorGameUpdateProcessor()

