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
import org/allbinary/input/AllBinarySensorListener as AllBinarySensorListenerModule
export AllBinarySensorListenerModule
import org/allbinary/logic/math/Orientation as OrientationModule
export OrientationModule
import org/allbinary/input/gyro/AllBinaryOrientationSensor as AllBinaryOrientationSensorModule
export AllBinaryOrientationSensorModule

type
    NoGyroSensor* = ref object of AllBinaryOrientationSensor

converter jAsAllBinarySensorListener*(value: NoGyroSensor): AllBinarySensorListener = cast[AllBinarySensorListener](value)
proc newNoGyroSensor*(): NoGyroSensor
proc initNoGyroSensor*(this: NoGyroSensor)
method getOrientation*(this: NoGyroSensor): Orientation {.discardable.}
method onSensorChange*(this: NoGyroSensor)


proc initNoGyroSensor*(this: NoGyroSensor) =
        initAllBinaryOrientationSensor(this)
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)

proc newNoGyroSensor*(): NoGyroSensor =
    result = NoGyroSensor()
    initNoGyroSensor(result)

method getOrientation*(this: NoGyroSensor): Orientation {.discardable.} =
        return Orientation.NONE

method onSensorChange*(this: NoGyroSensor) =
        discard

when declared(newNoGyroSensorHook0):
    newNoGyroSensorHook0 = proc (): AllBinaryOrientationSensor = newNoGyroSensor()

