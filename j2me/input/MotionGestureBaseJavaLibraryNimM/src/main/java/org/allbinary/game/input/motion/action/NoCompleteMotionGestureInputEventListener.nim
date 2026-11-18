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
# package org.allbinary.game.input.motion.action

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule
import org/allbinary/game/input/CompleteMotionGestureInputEventListener as CompleteMotionGestureInputEventListenerModule
export CompleteMotionGestureInputEventListenerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    NoCompleteMotionGestureInputEventListener* = ref object of CompleteMotionGestureInputEventListener

proc newNoCompleteMotionGestureInputEventListener*(): NoCompleteMotionGestureInputEventListener
proc initNoCompleteMotionGestureInputEventListener*(this: NoCompleteMotionGestureInputEventListener)
method onEvent*(this: NoCompleteMotionGestureInputEventListener, eventObject: AllBinaryEventObject)
method onCompleteMotionGestureInputEvent*(this: NoCompleteMotionGestureInputEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent)
proc getInstance*(t: typedesc[NoCompleteMotionGestureInputEventListener]): NoCompleteMotionGestureInputEventListener {.discardable.}
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule

var NoCompleteMotionGestureInputEventListener_instanceValue: NoCompleteMotionGestureInputEventListener
var NoCompleteMotionGestureInputEventListener_instanceSet = false
proc instance*(t: typedesc[NoCompleteMotionGestureInputEventListener]): NoCompleteMotionGestureInputEventListener =
    if not NoCompleteMotionGestureInputEventListener_instanceSet:
        NoCompleteMotionGestureInputEventListener_instanceSet = true
        NoCompleteMotionGestureInputEventListener_instanceValue = newNoCompleteMotionGestureInputEventListener()
    NoCompleteMotionGestureInputEventListener_instanceValue

proc initNoCompleteMotionGestureInputEventListener*(this: NoCompleteMotionGestureInputEventListener) =
        initCompleteMotionGestureInputEventListener(this)
        discard

proc newNoCompleteMotionGestureInputEventListener*(): NoCompleteMotionGestureInputEventListener =
    result = NoCompleteMotionGestureInputEventListener()
    initNoCompleteMotionGestureInputEventListener(result)

method onEvent*(this: NoCompleteMotionGestureInputEventListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onCompleteMotionGestureInputEvent*(this: NoCompleteMotionGestureInputEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent) =
        discard

proc getInstance*(t: typedesc[NoCompleteMotionGestureInputEventListener]): NoCompleteMotionGestureInputEventListener {.discardable.} =
        return NoCompleteMotionGestureInputEventListener.instance

when declared(newNoCompleteMotionGestureInputEventListenerHook0):
    newNoCompleteMotionGestureInputEventListenerHook0 = proc (): CompleteMotionGestureInputEventListener = newNoCompleteMotionGestureInputEventListener()

