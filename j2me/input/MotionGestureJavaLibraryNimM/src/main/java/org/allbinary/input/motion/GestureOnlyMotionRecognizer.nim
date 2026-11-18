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
import org/allbinary/input/motion/gesture/MotionGestureRecognizer as MotionGestureRecognizerModule
export MotionGestureRecognizerModule
import org/allbinary/input/motion/MotionRecognizer as MotionRecognizerModule
export MotionRecognizerModule

type
    GestureOnlyMotionRecognizer* = ref object of MotionRecognizer
        motionGestureRecognizer*: MotionGestureRecognizer
        id*: int32

proc newGestureOnlyMotionRecognizer*(): GestureOnlyMotionRecognizer
proc initGestureOnlyMotionRecognizer*(this: GestureOnlyMotionRecognizer)
method processStartMotionEvent*(this: GestureOnlyMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processEndMotionEvent*(this: GestureOnlyMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processDraggedMotionEvent*(this: GestureOnlyMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
import org/allbinary/graphics/CustomGPoint as CustomGPointModule
export CustomGPointModule

var GestureOnlyMotionRecognizer_indexValue: int32
var GestureOnlyMotionRecognizer_indexSet = false
proc index*(t: typedesc[GestureOnlyMotionRecognizer]): int32 =
    if not GestureOnlyMotionRecognizer_indexSet:
        GestureOnlyMotionRecognizer_indexSet = true
        GestureOnlyMotionRecognizer_indexValue = 0
    GestureOnlyMotionRecognizer_indexValue
proc `index=`*(t: typedesc[GestureOnlyMotionRecognizer], value: int32) =
    GestureOnlyMotionRecognizer_indexSet = true
    GestureOnlyMotionRecognizer_indexValue = value
var GestureOnlyMotionRecognizer_pointCircularPoolValue: GPointCircularPool
var GestureOnlyMotionRecognizer_pointCircularPoolSet = false
proc pointCircularPool*(t: typedesc[GestureOnlyMotionRecognizer]): GPointCircularPool =
    if not GestureOnlyMotionRecognizer_pointCircularPoolSet:
        GestureOnlyMotionRecognizer_pointCircularPoolSet = true
        GestureOnlyMotionRecognizer_pointCircularPoolValue = newGPointCircularPool(40)
    GestureOnlyMotionRecognizer_pointCircularPoolValue

# Java field initializers run after the base initializer
proc initFieldsGestureOnlyMotionRecognizer(this: GestureOnlyMotionRecognizer) =
    
    
    discard

proc initGestureOnlyMotionRecognizer*(this: GestureOnlyMotionRecognizer) =
        initMotionRecognizer(this)
        this.initFieldsGestureOnlyMotionRecognizer()
        this.id = jPostIncrement(GestureOnlyMotionRecognizer.index)
        this.motionGestureRecognizer = newMotionGestureRecognizer(this.id)

proc newGestureOnlyMotionRecognizer*(): GestureOnlyMotionRecognizer =
    result = GestureOnlyMotionRecognizer()
    initGestureOnlyMotionRecognizer(result)

method processStartMotionEvent*(this: GestureOnlyMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        var point: CustomGPoint = CustomGPoint(JObject(GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()))
        point.setX(x)
        point.setY(y)
        this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)

method processEndMotionEvent*(this: GestureOnlyMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        var point: CustomGPoint = CustomGPoint(JObject(GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()))
        point.setX(x)
        point.setY(y)
        this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)

method processDraggedMotionEvent*(this: GestureOnlyMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        var point: CustomGPoint = CustomGPoint(JObject(GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()))
        point.setX(x)
        point.setY(y)
        this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)

when declared(newGestureOnlyMotionRecognizerHook0):
    newGestureOnlyMotionRecognizerHook0 = proc (): MotionRecognizer = newGestureOnlyMotionRecognizer()

