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
# package org.allbinary.game.layer.hud.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    GameNotificationEventHandler* = ref object of BasicEventHandler
        enabled*: bool

proc newGameNotificationEventHandler*(): GameNotificationEventHandler
proc initGameNotificationEventHandler*(this: GameNotificationEventHandler)
method removeAllListeners*(this: GameNotificationEventHandler)
proc getInstance*(t: typedesc[GameNotificationEventHandler]): GameNotificationEventHandler {.discardable.}
method process*(this: GameNotificationEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/NullEventListener as NullEventListenerModule
export NullEventListenerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/layer/hud/event/GameNotificationListenerInterface as GameNotificationListenerInterfaceModule
export GameNotificationListenerInterfaceModule
import org/allbinary/game/layer/hud/event/GameNotificationEvent as GameNotificationEventModule
export GameNotificationEventModule

var GameNotificationEventHandler_instanceValue: GameNotificationEventHandler
var GameNotificationEventHandler_instanceSet = false
proc instance*(t: typedesc[GameNotificationEventHandler]): GameNotificationEventHandler =
    if not GameNotificationEventHandler_instanceSet:
        GameNotificationEventHandler_instanceSet = true
        GameNotificationEventHandler_instanceValue = newGameNotificationEventHandler()
    GameNotificationEventHandler_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameNotificationEventHandler(this: GameNotificationEventHandler) =
    this.enabled = true
    discard

proc initGameNotificationEventHandler*(this: GameNotificationEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsGameNotificationEventHandler()
        discard

proc newGameNotificationEventHandler*(): GameNotificationEventHandler =
    result = GameNotificationEventHandler()
    initGameNotificationEventHandler(result)

method removeAllListeners*(this: GameNotificationEventHandler) =
        var eventListenerInterface: EventListenerInterface = NullEventListener.NULL_EVENT_LISTENERStatic
        var list: BasicArrayList = this.eventListenerInterfaceList
        if list.size() > 0:
            eventListenerInterface = EventListenerInterface(JObject(list.objectArray[0]))
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())
        if (not jSame(eventListenerInterface, NullEventListener.NULL_EVENT_LISTENERStatic)):
            this.addListenerInterface(eventListenerInterface)

proc getInstance*(t: typedesc[GameNotificationEventHandler]): GameNotificationEventHandler {.discardable.} =
        return GameNotificationEventHandler.instance

method process*(this: GameNotificationEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        if (not this.enabled):
            return
        let gameNotificationListenerInterface: GameNotificationListenerInterface = GameNotificationListenerInterface(JObject(eventListenerInterface))
        gameNotificationListenerInterface.onGameNotificationEvent(GameNotificationEvent(JObject(eventObject)))

when declared(newGameNotificationEventHandlerHook0):
    newGameNotificationEventHandlerHook0 = proc (): BasicEventHandler = newGameNotificationEventHandler()

