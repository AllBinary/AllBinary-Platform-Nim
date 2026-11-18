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
import org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener as BaseMotionGestureEventListenerModule
export BaseMotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

type
    MotionGestureEventListener* = ref object of BaseMotionGestureEventListener


method onPressedMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onPressedMotionGestureEvent")

method onUpMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onUpMotionGestureEvent")

method onDownMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDownMotionGestureEvent")

method onLeftMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onLeftMotionGestureEvent")

method onRightMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onRightMotionGestureEvent")

method onDiagonalDownRightMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDiagonalDownRightMotionGestureEvent")

method onDiagonalDownLeftMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDiagonalDownLeftMotionGestureEvent")

method onDiagonalUpRightMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDiagonalUpRightMotionGestureEvent")

method onDiagonalUpLeftMotionGestureEvent*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDiagonalUpLeftMotionGestureEvent")

method released*(this: MotionGestureEventListener, ev: MotionGestureEvent) {.base.} =
        raise newJException("AbstractMethodError", "released")

