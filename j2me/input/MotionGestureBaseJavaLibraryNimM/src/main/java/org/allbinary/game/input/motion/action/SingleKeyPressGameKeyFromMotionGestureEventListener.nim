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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    SingleKeyPressGameKeyFromMotionGestureEventListener* = ref object of CompleteMotionGestureInputEventListener
        logUtil*: LogUtil

proc newSingleKeyPressGameKeyFromMotionGestureEventListener*(): SingleKeyPressGameKeyFromMotionGestureEventListener
method onEvent*(this: SingleKeyPressGameKeyFromMotionGestureEventListener, eventObject: AllBinaryEventObject)
method onCompleteMotionGestureInputEvent*(this: SingleKeyPressGameKeyFromMotionGestureEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent)
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/PressGameKeyEventHandler as PressGameKeyEventHandlerModule
export PressGameKeyEventHandlerModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule


# Java field initializers run after the base initializer
proc initFieldsSingleKeyPressGameKeyFromMotionGestureEventListener(this: SingleKeyPressGameKeyFromMotionGestureEventListener) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initSingleKeyPressGameKeyFromMotionGestureEventListener*(this: SingleKeyPressGameKeyFromMotionGestureEventListener) =
    initCompleteMotionGestureInputEventListener(this)
    this.initFieldsSingleKeyPressGameKeyFromMotionGestureEventListener()

proc newSingleKeyPressGameKeyFromMotionGestureEventListener*(): SingleKeyPressGameKeyFromMotionGestureEventListener =
    result = SingleKeyPressGameKeyFromMotionGestureEventListener()
    initSingleKeyPressGameKeyFromMotionGestureEventListener(result)

method onEvent*(this: SingleKeyPressGameKeyFromMotionGestureEventListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onCompleteMotionGestureInputEvent*(this: SingleKeyPressGameKeyFromMotionGestureEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent) =
        try:
            let gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent = GameKeyCompleteMotionGestureInputEvent(JObject(completeMotionGestureInputEvent))
            let gameKeyEvent: GameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent()
            PressGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e)

when declared(newSingleKeyPressGameKeyFromMotionGestureEventListenerHook0):
    newSingleKeyPressGameKeyFromMotionGestureEventListenerHook0 = proc (): CompleteMotionGestureInputEventListener = newSingleKeyPressGameKeyFromMotionGestureEventListener()

