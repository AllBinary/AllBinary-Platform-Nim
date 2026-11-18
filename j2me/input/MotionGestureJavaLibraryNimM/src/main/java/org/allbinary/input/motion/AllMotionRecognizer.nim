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
# package org.allbinary.input.motion

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPointCircularPool as GPointCircularPoolModule
export GPointCircularPoolModule
import org/allbinary/input/motion/button/TouchButtonRecognizer as TouchButtonRecognizerModule
export TouchButtonRecognizerModule
import org/allbinary/input/motion/gesture/MotionGestureRecognizer as MotionGestureRecognizerModule
export MotionGestureRecognizerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/input/motion/MotionRecognizer as MotionRecognizerModule
export MotionRecognizerModule

type
    AllMotionRecognizer* = ref object of MotionRecognizer
        logUtil*: LogUtil
        motionGestureRecognizer*: MotionGestureRecognizer
        touchButtonProcessing*: bool
        touchButtonRecognizer*: TouchButtonRecognizer
        id*: int32
        lastX*: int32
        lastY*: int32

proc newAllMotionRecognizer*(): AllMotionRecognizer
proc initAllMotionRecognizer*(this: AllMotionRecognizer)
method processStartMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processEndMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processDraggedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processMovedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processScrolledMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method getMotionGestureRecognizer*(this: AllMotionRecognizer): MotionGestureRecognizer {.base, discardable.}
import org/allbinary/graphics/CustomGPoint as CustomGPointModule
export CustomGPointModule

var AllMotionRecognizer_indexValue: int32
var AllMotionRecognizer_indexSet = false
proc index*(t: typedesc[AllMotionRecognizer]): int32 =
    if not AllMotionRecognizer_indexSet:
        AllMotionRecognizer_indexSet = true
        AllMotionRecognizer_indexValue = 0
    AllMotionRecognizer_indexValue
proc `index=`*(t: typedesc[AllMotionRecognizer], value: int32) =
    AllMotionRecognizer_indexSet = true
    AllMotionRecognizer_indexValue = value
var AllMotionRecognizer_pointCircularPoolValue: GPointCircularPool
var AllMotionRecognizer_pointCircularPoolSet = false
proc pointCircularPool*(t: typedesc[AllMotionRecognizer]): GPointCircularPool =
    if not AllMotionRecognizer_pointCircularPoolSet:
        AllMotionRecognizer_pointCircularPoolSet = true
        AllMotionRecognizer_pointCircularPoolValue = newGPointCircularPool(40)
    AllMotionRecognizer_pointCircularPoolValue

# Java field initializers run after the base initializer
proc initFieldsAllMotionRecognizer(this: AllMotionRecognizer) =
    this.logUtil = LogUtil.getInstance()
    
    this.touchButtonProcessing = false
    
    
    this.lastX = 0
    this.lastY = 0
    discard

proc initAllMotionRecognizer*(this: AllMotionRecognizer) =
        initMotionRecognizer(this)
        this.initFieldsAllMotionRecognizer()
        this.id = jPostIncrement(AllMotionRecognizer.index)
        this.motionGestureRecognizer = newMotionGestureRecognizer(this.id)
        this.touchButtonRecognizer = newTouchButtonRecognizer()

proc newAllMotionRecognizer*(): AllMotionRecognizer =
    result = AllMotionRecognizer()
    initAllMotionRecognizer(result)

method processStartMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        if this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId):
            this.touchButtonProcessing = true
        if (not this.touchButtonProcessing):
            let point: CustomGPoint = CustomGPoint(JObject(AllMotionRecognizer.pointCircularPool.getNextInstance()))
            point.setX(x)
            point.setY(y)
            this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)

method processEndMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        if this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId):
            discard
        if (not this.touchButtonProcessing):
            let point: CustomGPoint = CustomGPoint(JObject(AllMotionRecognizer.pointCircularPool.getNextInstance()))
            point.setX(x)
            point.setY(y)
            this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
        if this.touchButtonProcessing:
            this.touchButtonProcessing = false

method processDraggedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        if this.touchButtonProcessing:
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        if (not this.touchButtonProcessing):
            let point: CustomGPoint = CustomGPoint(JObject(AllMotionRecognizer.pointCircularPool.getNextInstance()))
            point.setX(x)
            point.setY(y)
            this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)

method processMovedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        if x != this.lastX or y != this.lastY:
            this.lastX = x
            this.lastY = y
            let point: CustomGPoint = CustomGPoint(JObject(AllMotionRecognizer.pointCircularPool.getNextInstance()))
            point.setX(x)
            point.setY(y)
            this.motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers)

method processScrolledMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        let point: CustomGPoint = CustomGPoint(JObject(AllMotionRecognizer.pointCircularPool.getNextInstance()))
        point.setX(x)
        point.setY(y)
        this.motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers)

method getMotionGestureRecognizer*(this: AllMotionRecognizer): MotionGestureRecognizer {.base, discardable.} =
        return this.motionGestureRecognizer

when declared(newAllMotionRecognizerHook0):
    newAllMotionRecognizerHook0 = proc (): MotionRecognizer = newAllMotionRecognizer()

