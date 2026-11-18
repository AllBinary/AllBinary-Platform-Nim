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
import org/allbinary/logic/math/Orientation as OrientationModule
export OrientationModule

type
    NoAccelerometerSensor* = ref object of AllBinaryOrientationSensor

proc newNoAccelerometerSensor*(): NoAccelerometerSensor
proc initNoAccelerometerSensor*(this: NoAccelerometerSensor)
method getOrientation*(this: NoAccelerometerSensor): Orientation {.discardable.}
method onSensorChange*(this: NoAccelerometerSensor)


proc initNoAccelerometerSensor*(this: NoAccelerometerSensor) =
        initAllBinaryOrientationSensor(this)
        discard

proc newNoAccelerometerSensor*(): NoAccelerometerSensor =
    result = NoAccelerometerSensor()
    initNoAccelerometerSensor(result)

method getOrientation*(this: NoAccelerometerSensor): Orientation {.discardable.} =
        return Orientation.NONE

method onSensorChange*(this: NoAccelerometerSensor) =
        discard

when declared(newNoAccelerometerSensorHook0):
    newNoAccelerometerSensorHook0 = proc (): AllBinaryOrientationSensor = newNoAccelerometerSensor()

