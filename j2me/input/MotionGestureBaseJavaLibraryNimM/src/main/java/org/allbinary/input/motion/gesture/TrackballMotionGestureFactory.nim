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
# package org.allbinary.input.motion.gesture

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule

type
    TrackballMotionGestureFactory* = ref object of JObject
        LEFT*: MotionGestureInput
        RIGHT*: MotionGestureInput
        UP*: MotionGestureInput
        DOWN*: MotionGestureInput

proc newTrackballMotionGestureFactory*(): TrackballMotionGestureFactory
proc initTrackballMotionGestureFactory*(this: TrackballMotionGestureFactory)
proc getInstance*(t: typedesc[TrackballMotionGestureFactory]): TrackballMotionGestureFactory {.discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var TrackballMotionGestureFactory_instanceValue: JObject
var TrackballMotionGestureFactory_instanceSet = false
proc instance*(t: typedesc[TrackballMotionGestureFactory]): JObject =
    if not TrackballMotionGestureFactory_instanceSet:
        TrackballMotionGestureFactory_instanceSet = true
        TrackballMotionGestureFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    TrackballMotionGestureFactory_instanceValue
proc `instance=`*(t: typedesc[TrackballMotionGestureFactory], value: JObject) =
    TrackballMotionGestureFactory_instanceSet = true
    TrackballMotionGestureFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsTrackballMotionGestureFactory(this: TrackballMotionGestureFactory) =
    
    
    
    
    discard

proc getInstance*(t: typedesc[TrackballMotionGestureFactory]): TrackballMotionGestureFactory {.discardable.} =
        if TrackballMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            TrackballMotionGestureFactory.instance = newTrackballMotionGestureFactory()
        return TrackballMotionGestureFactory(JObject(TrackballMotionGestureFactory.instance))

proc initTrackballMotionGestureFactory*(this: TrackballMotionGestureFactory) =
        this.initFieldsTrackballMotionGestureFactory()
        var MAX: int32 = InputFactory.getInstance().MAX
        this.LEFT = newMotionGestureInput(MAX -% 26, "L Trackball")
        this.RIGHT = newMotionGestureInput(MAX -% 27, "R Trackball")
        this.UP = newMotionGestureInput(MAX -% 28, "Up Trackball")
        this.DOWN = newMotionGestureInput(MAX -% 29, "D Trackball")

proc newTrackballMotionGestureFactory*(): TrackballMotionGestureFactory =
    result = TrackballMotionGestureFactory()
    initTrackballMotionGestureFactory(result)

