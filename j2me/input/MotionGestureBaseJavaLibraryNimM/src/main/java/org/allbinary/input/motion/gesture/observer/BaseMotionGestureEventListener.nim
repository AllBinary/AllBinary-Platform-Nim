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
# package org.allbinary.input.motion.gesture.observer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

type
    BaseMotionGestureEventListener* = ref object of EventListenerInterface


method onMotionGestureEvent*(this: BaseMotionGestureEventListener, motionGestureEvent: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onMotionGestureEvent")

method onScrolledMotionGestureEvent*(this: BaseMotionGestureEventListener, motionGestureEvent: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onScrolledMotionGestureEvent")

