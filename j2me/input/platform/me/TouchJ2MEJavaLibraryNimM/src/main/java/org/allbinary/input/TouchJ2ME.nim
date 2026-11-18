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
# package org.allbinary.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/AllMotionRecognizer as AllMotionRecognizerModule
export AllMotionRecognizerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

#TouchJ2ME
type
    TouchJ2ME* = ref object of JObject
        logUtil*: LogUtil
        DEVICE_ID*: int32
        motionRecognizer*: AllMotionRecognizer

proc newTouchJ2ME*(): TouchJ2ME
proc initTouchJ2ME*(this: TouchJ2ME)
method pointerDragged*(this: TouchJ2ME, x: int32, y: int32) {.base.}
method pointerPressed*(this: TouchJ2ME, x: int32, y: int32) {.base.}
method pointerReleased*(this: TouchJ2ME, x: int32, y: int32) {.base.}
import org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler as BasicMotionGesturesHandlerModule
export BasicMotionGesturesHandlerModule
import org/allbinary/input/motion/gesture/observer/GameMotionGestureListener as GameMotionGestureListenerModule
export GameMotionGestureListenerModule
import org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory as MotionGestureReceiveInterfaceFactoryModule
export MotionGestureReceiveInterfaceFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsTouchJ2ME(this: TouchJ2ME) =
    this.logUtil = LogUtil.getInstance()
    this.DEVICE_ID = 0
    this.motionRecognizer = newAllMotionRecognizer()
    discard

proc initTouchJ2ME*(this: TouchJ2ME) =
        this.initFieldsTouchJ2ME()
        var motionGesturesHandler: BasicMotionGesturesHandler = this.motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler()
        motionGesturesHandler.addListenerInterface(newGameMotionGestureListener(MotionGestureReceiveInterfaceFactory.getInstance()))

proc newTouchJ2ME*(): TouchJ2ME =
    result = TouchJ2ME()
    initTouchJ2ME(result)

method pointerDragged*(this: TouchJ2ME, x: int32, y: int32) {.base.} =
        try:
            this.motionRecognizer.processDraggedMotionEvent(x, y, this.DEVICE_ID, 0)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerDragged", e)

method pointerPressed*(this: TouchJ2ME, x: int32, y: int32) {.base.} =
        try:
            this.motionRecognizer.processStartMotionEvent(x, y, this.DEVICE_ID, 0)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerPressed", e)

method pointerReleased*(this: TouchJ2ME, x: int32, y: int32) {.base.} =
        try:
            this.motionRecognizer.processEndMotionEvent(x, y, this.DEVICE_ID, 0)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerReleased", e)

