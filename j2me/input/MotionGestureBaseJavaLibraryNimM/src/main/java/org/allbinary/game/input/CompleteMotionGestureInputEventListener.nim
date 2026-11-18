# Generated Code Do Not Modify
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterfaceModule
export CompleteMotionGestureInputEventListenerInterfaceModule
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule

type
    CompleteMotionGestureInputEventListener* = ref object of CompleteMotionGestureInputEventListenerInterface

proc newCompleteMotionGestureInputEventListener*(): CompleteMotionGestureInputEventListener
method onEvent*(this: CompleteMotionGestureInputEventListener, eventObject: AllBinaryEventObject)
method onCompleteMotionGestureInputEvent*(this: CompleteMotionGestureInputEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent)


proc initCompleteMotionGestureInputEventListener*(this: CompleteMotionGestureInputEventListener) =
    discard

proc newCompleteMotionGestureInputEventListener*(): CompleteMotionGestureInputEventListener =
    result = CompleteMotionGestureInputEventListener()
    initCompleteMotionGestureInputEventListener(result)

method onEvent*(this: CompleteMotionGestureInputEventListener, eventObject: AllBinaryEventObject) =
        discard

method onCompleteMotionGestureInputEvent*(this: CompleteMotionGestureInputEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent) =
        discard

