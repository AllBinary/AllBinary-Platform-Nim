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
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/logic/util/event/AllBinaryEventCircularPool as AllBinaryEventCircularPoolModule
export AllBinaryEventCircularPoolModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

type
    MotionEventCircularPool* = ref object of JObject
        MIN*: int32
        eventPool*: AllBinaryEventCircularPool

proc newMotionEventCircularPool*(id: int32): MotionEventCircularPool
proc initMotionEventCircularPool*(this: MotionEventCircularPool, id: int32)
proc createPool*(t: typedesc[MotionEventCircularPool], id: int32): MotionEventCircularPool {.discardable.}
method getInstance*(this: MotionEventCircularPool, motionGestureInput: MotionGestureInput): MotionGestureEvent {.base, discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/input/motion/gesture/observer/MotionEventFactory as MotionEventFactoryModule
export MotionEventFactoryModule


# Java field initializers run after the base initializer
proc initFieldsMotionEventCircularPool(this: MotionEventCircularPool) =
    this.MIN = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
    this.eventPool = newAllBinaryEventCircularPool((InputFactory.getInstance().MAX -% 1) -% this.MIN)
    discard

proc createPool*(t: typedesc[MotionEventCircularPool], id: int32): MotionEventCircularPool {.discardable.} =
        return newMotionEventCircularPool(id)

proc initMotionEventCircularPool*(this: MotionEventCircularPool, id: int32) =
        this.initFieldsMotionEventCircularPool()
        this.eventPool.initAllBinaryEventCircularPool(newMotionEventFactory(this.eventPool, id))

proc newMotionEventCircularPool*(id: int32): MotionEventCircularPool =
    result = MotionEventCircularPool()
    initMotionEventCircularPool(result, id)

method getInstance*(this: MotionEventCircularPool, motionGestureInput: MotionGestureInput): MotionGestureEvent {.base, discardable.} =
        return MotionGestureEvent(JObject(this.eventPool.getInstance(motionGestureInput.getId() -% this.MIN)))

