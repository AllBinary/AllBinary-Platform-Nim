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
import org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterfaceModule
export CompleteMotionGestureInputEventListenerInterfaceModule
import org/allbinary/input/AllBinarySensor as AllBinarySensorModule
export AllBinarySensorModule
import org/allbinary/logic/math/Orientation as OrientationModule
export OrientationModule

type
    AllBinaryOrientationSensor* = ref object of AllBinarySensor
        sensorDataFloatArray*: JArray[float32]
        listener*: CompleteMotionGestureInputEventListenerInterface

proc newAllBinaryOrientationSensor*(): AllBinaryOrientationSensor
proc initAllBinaryOrientationSensor*(this: AllBinaryOrientationSensor)
method setCompleteMotionGestureInputEventListener*(this: AllBinaryOrientationSensor, completeMotionGestureInputEventListenerInterface: CompleteMotionGestureInputEventListenerInterface) {.base.}
method getOrientation*(this: AllBinaryOrientationSensor): Orientation {.base, discardable.}
import org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener as NoCompleteMotionGestureInputEventListenerModule
export NoCompleteMotionGestureInputEventListenerModule
import org/allbinary/logic/math/PrimitiveFloatUtil as PrimitiveFloatUtilModule
export PrimitiveFloatUtilModule

var AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue: AllBinaryOrientationSensor
var AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet = false
proc NULL_ALLBINARY_ORIENTATION_SENSOR*(t: typedesc[AllBinaryOrientationSensor]): AllBinaryOrientationSensor =
    if not AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet:
        AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet = true
        AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue = newAllBinaryOrientationSensor()
    AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue

# Java field initializers run after the base initializer
proc initFieldsAllBinaryOrientationSensor(this: AllBinaryOrientationSensor) =
    this.sensorDataFloatArray = PrimitiveFloatUtil.getArrayInstance()
    this.listener = NoCompleteMotionGestureInputEventListener.getInstance()
    discard

method setCompleteMotionGestureInputEventListener*(this: AllBinaryOrientationSensor, completeMotionGestureInputEventListenerInterface: CompleteMotionGestureInputEventListenerInterface) {.base.} =
        this.listener = completeMotionGestureInputEventListenerInterface

proc initAllBinaryOrientationSensor*(this: AllBinaryOrientationSensor) =
        initAllBinarySensor(this)
        this.initFieldsAllBinaryOrientationSensor()
        discard

proc newAllBinaryOrientationSensor*(): AllBinaryOrientationSensor =
    result = AllBinaryOrientationSensor()
    initAllBinaryOrientationSensor(result)

method getOrientation*(this: AllBinaryOrientationSensor): Orientation {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

when declared(newAllBinaryOrientationSensorHook0):
    newAllBinaryOrientationSensorHook0 = proc (): AllBinarySensor = newAllBinaryOrientationSensor()

