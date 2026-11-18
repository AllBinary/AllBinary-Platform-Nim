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
import org/allbinary/input/gyro/SensorGameUpdateProcessor as SensorGameUpdateProcessorModule
export SensorGameUpdateProcessorModule

type
    SingleSensorGameUpdateProcessor* = ref object of SensorGameUpdateProcessor

proc newSingleSensorGameUpdateProcessor*(): SingleSensorGameUpdateProcessor
method process*(this: SingleSensorGameUpdateProcessor, anyType: JObject)
method sendNotifications*(this: SingleSensorGameUpdateProcessor, anyType: JObject)


proc initSingleSensorGameUpdateProcessor*(this: SingleSensorGameUpdateProcessor) =
    initSensorGameUpdateProcessor(this)

proc newSingleSensorGameUpdateProcessor*(): SingleSensorGameUpdateProcessor =
    result = SingleSensorGameUpdateProcessor()
    initSingleSensorGameUpdateProcessor(result)

method process*(this: SingleSensorGameUpdateProcessor, anyType: JObject) =
        discard

method sendNotifications*(this: SingleSensorGameUpdateProcessor, anyType: JObject) =
        discard

when declared(newSingleSensorGameUpdateProcessorHook0):
    newSingleSensorGameUpdateProcessorHook0 = proc (): SensorGameUpdateProcessor = newSingleSensorGameUpdateProcessor()

