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
import org/allbinary/input/gyro/AllBinaryOrientationSensor as AllBinaryOrientationSensorModule
export AllBinaryOrientationSensorModule

type
    GyroSensorFactory* = ref object of JObject

proc newGyroSensorFactory*(): GyroSensorFactory
proc init*(t: typedesc[GyroSensorFactory])
proc getInstance*(t: typedesc[GyroSensorFactory]): AllBinaryOrientationSensor {.discardable.}
import org/allbinary/input/gyro/NoGyroSensor as NoGyroSensorModule
export NoGyroSensorModule

var GyroSensorFactory_allBinaryGyroSensorValue: AllBinaryOrientationSensor
var GyroSensorFactory_allBinaryGyroSensorSet = false
proc allBinaryGyroSensor*(t: typedesc[GyroSensorFactory]): AllBinaryOrientationSensor =
    if not GyroSensorFactory_allBinaryGyroSensorSet:
        GyroSensorFactory_allBinaryGyroSensorSet = true
        GyroSensorFactory_allBinaryGyroSensorValue = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR
    GyroSensorFactory_allBinaryGyroSensorValue
proc `allBinaryGyroSensor=`*(t: typedesc[GyroSensorFactory], value: AllBinaryOrientationSensor) =
    GyroSensorFactory_allBinaryGyroSensorSet = true
    GyroSensorFactory_allBinaryGyroSensorValue = value

proc initGyroSensorFactory*(this: GyroSensorFactory) =
    discard

proc newGyroSensorFactory*(): GyroSensorFactory =
    result = GyroSensorFactory()
    initGyroSensorFactory(result)

proc init*(t: typedesc[GyroSensorFactory]) =
        GyroSensorFactory.allBinaryGyroSensor = newNoGyroSensor()

proc getInstance*(t: typedesc[GyroSensorFactory]): AllBinaryOrientationSensor {.discardable.} =
        return GyroSensorFactory.allBinaryGyroSensor

