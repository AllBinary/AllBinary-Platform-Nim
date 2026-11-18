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
# package org.allbinary.input.accelerometer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/gyro/AllBinaryOrientationSensor as AllBinaryOrientationSensorModule
export AllBinaryOrientationSensorModule

type
    AccelerometerSensorFactory* = ref object of JObject

proc newAccelerometerSensorFactory*(): AccelerometerSensorFactory
proc init*(t: typedesc[AccelerometerSensorFactory])
proc getInstance*(t: typedesc[AccelerometerSensorFactory]): AllBinaryOrientationSensor {.discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/input/accelerometer/NoAccelerometerSensor as NoAccelerometerSensorModule
export NoAccelerometerSensorModule

var AccelerometerSensorFactory_allBinaryAccelerometerSensorValue: AllBinaryOrientationSensor
var AccelerometerSensorFactory_allBinaryAccelerometerSensorSet = false
proc allBinaryAccelerometerSensor*(t: typedesc[AccelerometerSensorFactory]): AllBinaryOrientationSensor =
    if not AccelerometerSensorFactory_allBinaryAccelerometerSensorSet:
        AccelerometerSensorFactory_allBinaryAccelerometerSensorSet = true
        AccelerometerSensorFactory_allBinaryAccelerometerSensorValue = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR
    AccelerometerSensorFactory_allBinaryAccelerometerSensorValue
proc `allBinaryAccelerometerSensor=`*(t: typedesc[AccelerometerSensorFactory], value: AllBinaryOrientationSensor) =
    AccelerometerSensorFactory_allBinaryAccelerometerSensorSet = true
    AccelerometerSensorFactory_allBinaryAccelerometerSensorValue = value

proc initAccelerometerSensorFactory*(this: AccelerometerSensorFactory) =
    discard

proc newAccelerometerSensorFactory*(): AccelerometerSensorFactory =
    result = AccelerometerSensorFactory()
    initAccelerometerSensorFactory(result)

proc init*(t: typedesc[AccelerometerSensorFactory]) =
        var features: Features = Features.getInstance()
        var sensorFeatureFactory: SensorFeatureFactory = SensorFeatureFactory.getInstance()
        if features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS):
            raise newJException("Exception", "No Orientation Sensors")
        elif features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS):
            raise newJException("Exception", "No Simulation Sensors")
        elif features.isFeature(sensorFeatureFactory.NO_ORIENTATION):
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = newNoAccelerometerSensor()
        else:
            raise newJException("Exception", "Not Such SensorFeature")

proc getInstance*(t: typedesc[AccelerometerSensorFactory]): AllBinaryOrientationSensor {.discardable.} =
        return AccelerometerSensorFactory.allBinaryAccelerometerSensor

