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

type
    GyroSensorUpdateProcessor* = ref object of Processor

proc newGyroSensorUpdateProcessor*(): GyroSensorUpdateProcessor
method process*(this: GyroSensorUpdateProcessor)


proc initGyroSensorUpdateProcessor*(this: GyroSensorUpdateProcessor) =
    initProcessor(this)

proc newGyroSensorUpdateProcessor*(): GyroSensorUpdateProcessor =
    result = GyroSensorUpdateProcessor()
    initGyroSensorUpdateProcessor(result)

method process*(this: GyroSensorUpdateProcessor) =
        discard

when declared(newGyroSensorUpdateProcessorHook0):
    newGyroSensorUpdateProcessorHook0 = proc (): Processor = newGyroSensorUpdateProcessor()

