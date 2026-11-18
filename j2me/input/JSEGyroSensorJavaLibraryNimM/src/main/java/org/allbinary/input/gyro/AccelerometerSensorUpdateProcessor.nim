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
    AccelerometerSensorUpdateProcessor* = ref object of Processor

proc newAccelerometerSensorUpdateProcessor*(): AccelerometerSensorUpdateProcessor
method process*(this: AccelerometerSensorUpdateProcessor)
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener as NoCompleteMotionGestureInputEventListenerModule
export NoCompleteMotionGestureInputEventListenerModule
import org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener as SingleKeyPressGameKeyFromMotionGestureEventListenerModule
export SingleKeyPressGameKeyFromMotionGestureEventListenerModule
import org/allbinary/input/accelerometer/AccelerometerSensorFactory as AccelerometerSensorFactoryModule
export AccelerometerSensorFactoryModule


proc initAccelerometerSensorUpdateProcessor*(this: AccelerometerSensorUpdateProcessor) =
    initProcessor(this)

proc newAccelerometerSensorUpdateProcessor*(): AccelerometerSensorUpdateProcessor =
    result = AccelerometerSensorUpdateProcessor()
    initAccelerometerSensorUpdateProcessor(result)

method process*(this: AccelerometerSensorUpdateProcessor) =
        var sensorFeatureFactory: SensorFeatureFactory = SensorFeatureFactory.getInstance()
        if Features.getInstance().isFeature(sensorFeatureFactory.ORIENTATION_SENSORS):
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(newSingleKeyPressGameKeyFromMotionGestureEventListener())
        elif Features.getInstance().isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS):
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(newSingleKeyPressGameKeyFromMotionGestureEventListener())
        elif Features.getInstance().isFeature(sensorFeatureFactory.NO_ORIENTATION):
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance())
        else:
            raise newJException("Exception", "Sensor Feature Not Set")

when declared(newAccelerometerSensorUpdateProcessorHook0):
    newAccelerometerSensorUpdateProcessorHook0 = proc (): Processor = newAccelerometerSensorUpdateProcessor()

