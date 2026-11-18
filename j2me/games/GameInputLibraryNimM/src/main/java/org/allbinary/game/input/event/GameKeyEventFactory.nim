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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule

type
    GameKeyEventFactory* = ref object of JObject
        logUtil*: LogUtil
        TOUCH_BUTTON_SOURCE_ID*: int32
        MOTION_GESTURE_SOURCE_ID*: int32
        MAX_SOURCES*: int32
        ARRAY*: JArray[JArray[GameKeyEvent]]

proc newGameKeyEventFactory*(): GameKeyEventFactory
proc initGameKeyEventFactory*(this: GameKeyEventFactory)
proc getInstance*(t: typedesc[GameKeyEventFactory]): GameKeyEventFactory {.discardable.}
method init*(this: GameKeyEventFactory) {.base.}
method getInstanceForKey*(this: GameKeyEventFactory, anyType: GameKeyEventSourceInterface, key: int32): GameKeyEvent {.base, discardable.}
method getInstanceForInput*(this: GameKeyEventFactory, anyType: GameKeyEventSourceInterface, input: Input): GameKeyEvent {.base, discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var GameKeyEventFactory_instanceValue: JObject
var GameKeyEventFactory_instanceSet = false
proc instance*(t: typedesc[GameKeyEventFactory]): JObject =
    if not GameKeyEventFactory_instanceSet:
        GameKeyEventFactory_instanceSet = true
        GameKeyEventFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GameKeyEventFactory_instanceValue
proc `instance=`*(t: typedesc[GameKeyEventFactory], value: JObject) =
    GameKeyEventFactory_instanceSet = true
    GameKeyEventFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGameKeyEventFactory(this: GameKeyEventFactory) =
    this.logUtil = LogUtil.getInstance()
    this.TOUCH_BUTTON_SOURCE_ID = 2
    this.MOTION_GESTURE_SOURCE_ID = 3
    this.MAX_SOURCES = 4
    this.ARRAY = newJArrayOf[JArray[GameKeyEvent]](this.MAX_SOURCES, proc (): JArray[GameKeyEvent] = newJArray[GameKeyEvent](InputFactory.getInstance().MAX, default(GameKeyEvent)))
    discard

proc getInstance*(t: typedesc[GameKeyEventFactory]): GameKeyEventFactory {.discardable.} =
        if GameKeyEventFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            GameKeyEventFactory.instance = newGameKeyEventFactory()
        return GameKeyEventFactory(JObject(GameKeyEventFactory.instance))

proc initGameKeyEventFactory*(this: GameKeyEventFactory) =
        this.initFieldsGameKeyEventFactory()
        discard

proc newGameKeyEventFactory*(): GameKeyEventFactory =
    result = GameKeyEventFactory()
    initGameKeyEventFactory(result)

method init*(this: GameKeyEventFactory) {.base.} =
        let nullUtil: NullUtil = NullUtil.getInstance()
        let size: int32 = InputFactory.getInstance().MAX
        block:
            var index: int32 = this.MAX_SOURCES
            while jPreDecrement(index) >= 0:
                block:
                    var index2: int32 = size
                    while jPreDecrement(index2) >= 0:
                        this.ARRAY[index][index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2)

method getInstanceForKey*(this: GameKeyEventFactory, anyType: GameKeyEventSourceInterface, key: int32): GameKeyEvent {.base, discardable.} =
        let gameKeyEvent: GameKeyEvent = this.ARRAY[anyType.getSourceId()][key]
        return gameKeyEvent

method getInstanceForInput*(this: GameKeyEventFactory, anyType: GameKeyEventSourceInterface, input: Input): GameKeyEvent {.base, discardable.} =
        let gameKeyEvent: GameKeyEvent = this.ARRAY[anyType.getSourceId()][input.getId()]
        return gameKeyEvent

