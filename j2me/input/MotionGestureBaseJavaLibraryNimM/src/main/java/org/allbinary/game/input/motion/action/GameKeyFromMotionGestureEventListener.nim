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
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    GameKeyFromMotionGestureEventListener* = ref object of CompleteMotionGestureInputEventListener
        logUtil*: LogUtil
        previousGameKeyEvent*: GameKeyEvent

proc newGameKeyFromMotionGestureEventListener*(): GameKeyFromMotionGestureEventListener
method onEvent*(this: GameKeyFromMotionGestureEventListener, eventObject: AllBinaryEventObject)
method onCompleteMotionGestureInputEvent*(this: GameKeyFromMotionGestureEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent)
import org/allbinary/game/input/event/DownGameKeyEventHandler as DownGameKeyEventHandlerModule
export DownGameKeyEventHandlerModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule


# Java field initializers run after the base initializer
proc initFieldsGameKeyFromMotionGestureEventListener(this: GameKeyFromMotionGestureEventListener) =
    this.logUtil = LogUtil.getInstance()
    this.previousGameKeyEvent = GameKeyEvent.NONE
    discard

proc initGameKeyFromMotionGestureEventListener*(this: GameKeyFromMotionGestureEventListener) =
    initCompleteMotionGestureInputEventListener(this)
    this.initFieldsGameKeyFromMotionGestureEventListener()

proc newGameKeyFromMotionGestureEventListener*(): GameKeyFromMotionGestureEventListener =
    result = GameKeyFromMotionGestureEventListener()
    initGameKeyFromMotionGestureEventListener(result)

method onEvent*(this: GameKeyFromMotionGestureEventListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onCompleteMotionGestureInputEvent*(this: GameKeyFromMotionGestureEventListener, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent) =
        try:
            var gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent = GameKeyCompleteMotionGestureInputEvent(JObject(completeMotionGestureInputEvent))
            var gameKeyEvent: GameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent()
            if gameKeyEvent != this.previousGameKeyEvent:
                if this.previousGameKeyEvent != GameKeyEvent.NONE:
                    UpGameKeyEventHandler.getInstance().fireEvent(this.previousGameKeyEvent)
                this.previousGameKeyEvent = gameKeyEvent
                if (not jIsNil(gameKeyEvent)) and gameKeyEvent != GameKeyEvent.NONE:
                    DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e)

when declared(newGameKeyFromMotionGestureEventListenerHook0):
    newGameKeyFromMotionGestureEventListenerHook0 = proc (): CompleteMotionGestureInputEventListener = newGameKeyFromMotionGestureEventListener()

