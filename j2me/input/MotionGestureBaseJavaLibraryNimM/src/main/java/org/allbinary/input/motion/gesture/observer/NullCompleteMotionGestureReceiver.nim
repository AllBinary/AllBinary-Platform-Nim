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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface as CompleteMotionGestureListenerInterfaceModule
export CompleteMotionGestureListenerInterfaceModule

type
    NullCompleteMotionGestureReceiver* = ref object of CompleteMotionGestureListenerInterface
        logUtil*: LogUtil

proc newNullCompleteMotionGestureReceiver*(): NullCompleteMotionGestureReceiver
proc initNullCompleteMotionGestureReceiver*(this: NullCompleteMotionGestureReceiver)
method onMotionGestureCompleted*(this: NullCompleteMotionGestureReceiver, list: BasicArrayList)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsNullCompleteMotionGestureReceiver(this: NullCompleteMotionGestureReceiver) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initNullCompleteMotionGestureReceiver*(this: NullCompleteMotionGestureReceiver) =
        this.initFieldsNullCompleteMotionGestureReceiver()
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF("Null Gesture Reciever", this, commonStrings.CONSTRUCTOR)

proc newNullCompleteMotionGestureReceiver*(): NullCompleteMotionGestureReceiver =
    result = NullCompleteMotionGestureReceiver()
    initNullCompleteMotionGestureReceiver(result)

method onMotionGestureCompleted*(this: NullCompleteMotionGestureReceiver, list: BasicArrayList) =
        discard

