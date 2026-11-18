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
import org/allbinary/input/motion/button/TouchButtonRecognizer as TouchButtonRecognizerModule
export TouchButtonRecognizerModule
import org/allbinary/input/motion/MotionRecognizer as MotionRecognizerModule
export MotionRecognizerModule

type
    OnlyTouchButtonRecognizer* = ref object of MotionRecognizer
        touchButtonRecognizer*: TouchButtonRecognizer
        touchButtonProcessing*: bool

proc newOnlyTouchButtonRecognizer*(): OnlyTouchButtonRecognizer
proc initOnlyTouchButtonRecognizer*(this: OnlyTouchButtonRecognizer)
method processStartMotionEvent*(this: OnlyTouchButtonRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processEndMotionEvent*(this: OnlyTouchButtonRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)
method processDraggedMotionEvent*(this: OnlyTouchButtonRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32)


# Java field initializers run after the base initializer
proc initFieldsOnlyTouchButtonRecognizer(this: OnlyTouchButtonRecognizer) =
    
    this.touchButtonProcessing = false
    discard

proc initOnlyTouchButtonRecognizer*(this: OnlyTouchButtonRecognizer) =
        initMotionRecognizer(this)
        this.initFieldsOnlyTouchButtonRecognizer()
        this.touchButtonRecognizer = newTouchButtonRecognizer()

proc newOnlyTouchButtonRecognizer*(): OnlyTouchButtonRecognizer =
    result = OnlyTouchButtonRecognizer()
    initOnlyTouchButtonRecognizer(result)

method processStartMotionEvent*(this: OnlyTouchButtonRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        if this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId):
            this.touchButtonProcessing = true

method processEndMotionEvent*(this: OnlyTouchButtonRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        if this.touchButtonProcessing:
            this.touchButtonProcessing = false
        if this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId):
            return

method processDraggedMotionEvent*(this: OnlyTouchButtonRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) =
        if this.touchButtonProcessing:
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)

when declared(newOnlyTouchButtonRecognizerHook0):
    newOnlyTouchButtonRecognizerHook0 = proc (): MotionRecognizer = newOnlyTouchButtonRecognizer()

