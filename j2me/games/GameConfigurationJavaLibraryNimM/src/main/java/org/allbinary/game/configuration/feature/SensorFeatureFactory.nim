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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/SensorFeature as SensorFeatureModule
export SensorFeatureModule

type
    SensorFeatureFactory* = ref object of JObject
        NO_ORIENTATION*: SensorFeature
        ORIENTATION_SENSORS*: SensorFeature
        SIMULATED_ORIENTATION_SENSORS*: SensorFeature
        YAW*: SensorFeature
        YAW_MINUS_RIGHT_PLUS_LEFT*: SensorFeature
        YAW_MINUS_LEFT_PLUS_RIGHT*: SensorFeature
        PITCH*: SensorFeature
        ROLL*: SensorFeature

proc newSensorFeatureFactory*(): SensorFeatureFactory
proc initSensorFeatureFactory*(this: SensorFeatureFactory)
proc getInstance*(t: typedesc[SensorFeatureFactory]): SensorFeatureFactory {.discardable.}

var SensorFeatureFactory_instanceValue: SensorFeatureFactory
var SensorFeatureFactory_instanceSet = false
proc instance*(t: typedesc[SensorFeatureFactory]): SensorFeatureFactory =
    if not SensorFeatureFactory_instanceSet:
        SensorFeatureFactory_instanceSet = true
        SensorFeatureFactory_instanceValue = newSensorFeatureFactory()
    SensorFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSensorFeatureFactory(this: SensorFeatureFactory) =
    this.NO_ORIENTATION = newSensorFeature("No Orientation")
    this.ORIENTATION_SENSORS = newSensorFeature("Orientation Sensors")
    this.SIMULATED_ORIENTATION_SENSORS = newSensorFeature("Simulated Orientation Sensors")
    this.YAW = newSensorFeature("Yaw")
    this.YAW_MINUS_RIGHT_PLUS_LEFT = newSensorFeature("Yaw -Right +Left")
    this.YAW_MINUS_LEFT_PLUS_RIGHT = newSensorFeature("Yaw -Left +Right ")
    this.PITCH = newSensorFeature("Pitch")
    this.ROLL = newSensorFeature("Roll")
    discard

proc getInstance*(t: typedesc[SensorFeatureFactory]): SensorFeatureFactory {.discardable.} =
        return SensorFeatureFactory.instance

proc initSensorFeatureFactory*(this: SensorFeatureFactory) =
        this.initFieldsSensorFeatureFactory()
        discard

proc newSensorFeatureFactory*(): SensorFeatureFactory =
    result = SensorFeatureFactory()
    initSensorFeatureFactory(result)

