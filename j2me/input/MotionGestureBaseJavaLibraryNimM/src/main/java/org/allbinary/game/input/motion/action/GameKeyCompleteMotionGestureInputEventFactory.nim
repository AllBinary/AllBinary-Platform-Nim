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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule

type
    GameKeyCompleteMotionGestureInputEventFactory* = ref object of JObject
        logUtil*: LogUtil
        eventList*: BasicArrayList

proc newGameKeyCompleteMotionGestureInputEventFactory*(): GameKeyCompleteMotionGestureInputEventFactory
proc getInstance*(t: typedesc[GameKeyCompleteMotionGestureInputEventFactory]): GameKeyCompleteMotionGestureInputEventFactory {.discardable.}
method add*(this: GameKeyCompleteMotionGestureInputEventFactory, gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent) {.base.}
method updateAll*(this: GameKeyCompleteMotionGestureInputEventFactory) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue: GameKeyCompleteMotionGestureInputEventFactory
var GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[GameKeyCompleteMotionGestureInputEventFactory]): GameKeyCompleteMotionGestureInputEventFactory =
    if not GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet:
        GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet = true
        GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue = newGameKeyCompleteMotionGestureInputEventFactory()
    GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsGameKeyCompleteMotionGestureInputEventFactory(this: GameKeyCompleteMotionGestureInputEventFactory) =
    this.logUtil = LogUtil.getInstance()
    this.eventList = newBasicArrayListD()
    discard

proc initGameKeyCompleteMotionGestureInputEventFactory*(this: GameKeyCompleteMotionGestureInputEventFactory) =
    this.initFieldsGameKeyCompleteMotionGestureInputEventFactory()

proc newGameKeyCompleteMotionGestureInputEventFactory*(): GameKeyCompleteMotionGestureInputEventFactory =
    result = GameKeyCompleteMotionGestureInputEventFactory()
    initGameKeyCompleteMotionGestureInputEventFactory(result)

proc getInstance*(t: typedesc[GameKeyCompleteMotionGestureInputEventFactory]): GameKeyCompleteMotionGestureInputEventFactory {.discardable.} =
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON

method add*(this: GameKeyCompleteMotionGestureInputEventFactory, gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent) {.base.} =
        this.eventList.add(gameKeyCompleteMotionGestureInputEvent)

method updateAll*(this: GameKeyCompleteMotionGestureInputEventFactory) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(this.eventList.size()).toString(), this, "updateAll")
        block:
            var index: int32 = this.eventList.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                var gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent = GameKeyCompleteMotionGestureInputEvent(JObject(this.eventList.objectArray[index]))
                gameKeyCompleteMotionGestureInputEvent.update()

