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
import org/allbinary/logic/math/Orientation as OrientationModule
export OrientationModule
import org/allbinary/input/gyro/AllBinaryOrientationSensor as AllBinaryOrientationSensorModule
export AllBinaryOrientationSensorModule

type
    OrientationToGameKeyEvent* = ref object of JObject
        allBinaryGyroSensor*: AllBinaryOrientationSensor
        MIN*: int32

proc newOrientationToGameKeyEvent*(): OrientationToGameKeyEvent
proc initOrientationToGameKeyEvent*(this: OrientationToGameKeyEvent)
method setAllBinaryGyroSensor*(this: OrientationToGameKeyEvent, allBinaryGyroSensor: AllBinaryOrientationSensor) {.base.}
method getAllBinaryGyroSensor*(this: OrientationToGameKeyEvent): AllBinaryOrientationSensor {.base, discardable.}
method process*(this: OrientationToGameKeyEvent) {.base.}
method updateGameKeyEvents*(this: OrientationToGameKeyEvent, orientation: Orientation, yaw: int32, pitch: int32, roll: int32) {.base.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/input/gyro/NoGyroSensor as NoGyroSensorModule
export NoGyroSensorModule


# Java field initializers run after the base initializer
proc initFieldsOrientationToGameKeyEvent(this: OrientationToGameKeyEvent) =
    
    this.MIN = 15
    discard

proc initOrientationToGameKeyEvent*(this: OrientationToGameKeyEvent) =
        this.initFieldsOrientationToGameKeyEvent()
        if Features.getInstance().isFeature(SensorFeatureFactory.getInstance().NO_ORIENTATION):
            this.allBinaryGyroSensor = newNoGyroSensor()
        else:
            raise newJException("Exception", "Not Such Feature")

proc newOrientationToGameKeyEvent*(): OrientationToGameKeyEvent =
    result = OrientationToGameKeyEvent()
    initOrientationToGameKeyEvent(result)

method setAllBinaryGyroSensor*(this: OrientationToGameKeyEvent, allBinaryGyroSensor: AllBinaryOrientationSensor) {.base.} =
        this.allBinaryGyroSensor = allBinaryGyroSensor

method getAllBinaryGyroSensor*(this: OrientationToGameKeyEvent): AllBinaryOrientationSensor {.base, discardable.} =
        return this.allBinaryGyroSensor

method process*(this: OrientationToGameKeyEvent) {.base.} =
        discard

method updateGameKeyEvents*(this: OrientationToGameKeyEvent, orientation: Orientation, yaw: int32, pitch: int32, roll: int32) {.base.} =
        discard

