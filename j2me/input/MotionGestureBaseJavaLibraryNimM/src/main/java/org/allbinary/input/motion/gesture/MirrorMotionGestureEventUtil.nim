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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/input/motion/gesture/observer/MotionEventCircularPool as MotionEventCircularPoolModule
export MotionEventCircularPoolModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

type
    MirrorMotionGestureEventUtil* = ref object of JObject
        motionEventCircularPool*: MotionEventCircularPool

proc newMirrorMotionGestureEventUtil*(): MirrorMotionGestureEventUtil
proc initMirrorMotionGestureEventUtil*(this: MirrorMotionGestureEventUtil)
method mirrorVerticle*(this: MirrorMotionGestureEventUtil, motionGestureEvent: MotionGestureEvent, halfWidth: int32): MotionGestureEvent {.base, discardable.}
method getNewX*(this: MirrorMotionGestureEventUtil, x: int32, halfWidth: int32): int32 {.base, discardable.}
proc getInstance*(t: typedesc[MirrorMotionGestureEventUtil]): MirrorMotionGestureEventUtil {.discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule

var MirrorMotionGestureEventUtil_instanceValue: MirrorMotionGestureEventUtil
var MirrorMotionGestureEventUtil_instanceSet = false
proc instance*(t: typedesc[MirrorMotionGestureEventUtil]): MirrorMotionGestureEventUtil =
    if not MirrorMotionGestureEventUtil_instanceSet:
        MirrorMotionGestureEventUtil_instanceSet = true
        MirrorMotionGestureEventUtil_instanceValue = newMirrorMotionGestureEventUtil()
    MirrorMotionGestureEventUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMirrorMotionGestureEventUtil(this: MirrorMotionGestureEventUtil) =
    
    discard

proc initMirrorMotionGestureEventUtil*(this: MirrorMotionGestureEventUtil) =
        this.initFieldsMirrorMotionGestureEventUtil()
        this.motionEventCircularPool = MotionEventCircularPool.createPool(Integer.MAX_VALUE)

proc newMirrorMotionGestureEventUtil*(): MirrorMotionGestureEventUtil =
    result = MirrorMotionGestureEventUtil()
    initMirrorMotionGestureEventUtil(result)

method mirrorVerticle*(this: MirrorMotionGestureEventUtil, motionGestureEvent: MotionGestureEvent, halfWidth: int32): MotionGestureEvent {.base, discardable.} =
        let event: MotionGestureEvent = this.motionEventCircularPool.getInstance(motionGestureEvent.getMotionGesture())
        let previousNewX: int32 = this.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth)
        let currentNewX: int32 = this.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth)
        let pointFactory: PointFactory = PointFactory.getInstance()
        let mirroredPreviousPoint: GPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY())
        let mirroredCurrentPoint: GPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY())
        event.setPreviousPoint(mirroredPreviousPoint)
        event.setCurrentPoint(mirroredCurrentPoint)
        return event

method getNewX*(this: MirrorMotionGestureEventUtil, x: int32, halfWidth: int32): int32 {.base, discardable.} =
        var newX: int32 = 0
        if x > halfWidth:
            newX = halfWidth -% (x -% halfWidth)
        else:
            newX = halfWidth +% (halfWidth -% x)
        return newX

proc getInstance*(t: typedesc[MirrorMotionGestureEventUtil]): MirrorMotionGestureEventUtil {.discardable.} =
        return MirrorMotionGestureEventUtil.instance

