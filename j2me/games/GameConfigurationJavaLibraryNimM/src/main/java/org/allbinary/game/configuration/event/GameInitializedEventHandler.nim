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
# package org.allbinary.game.configuration.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    GameInitializedEventHandler* = ref object of BasicEventHandler

proc newGameInitializedEventHandler*(): GameInitializedEventHandler
proc initGameInitializedEventHandler*(this: GameInitializedEventHandler)
proc getInstance*(t: typedesc[GameInitializedEventHandler]): GameInitializedEventHandler {.discardable.}
method process*(this: GameInitializedEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/game/configuration/event/GameInitializedListenerInterface as GameInitializedListenerInterfaceModule
export GameInitializedListenerInterfaceModule
import org/allbinary/game/configuration/event/GameInitializedEvent as GameInitializedEventModule
export GameInitializedEventModule

var GameInitializedEventHandler_gameKeyEventHandlerValue: GameInitializedEventHandler
var GameInitializedEventHandler_gameKeyEventHandlerSet = false
proc gameKeyEventHandler*(t: typedesc[GameInitializedEventHandler]): GameInitializedEventHandler =
    if not GameInitializedEventHandler_gameKeyEventHandlerSet:
        GameInitializedEventHandler_gameKeyEventHandlerSet = true
        GameInitializedEventHandler_gameKeyEventHandlerValue = newGameInitializedEventHandler()
    GameInitializedEventHandler_gameKeyEventHandlerValue

proc initGameInitializedEventHandler*(this: GameInitializedEventHandler) =
        initBasicEventHandler(this)
        discard

proc newGameInitializedEventHandler*(): GameInitializedEventHandler =
    result = GameInitializedEventHandler()
    initGameInitializedEventHandler(result)

proc getInstance*(t: typedesc[GameInitializedEventHandler]): GameInitializedEventHandler {.discardable.} =
        return GameInitializedEventHandler.gameKeyEventHandler

method process*(this: GameInitializedEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let gameInitializedListenerInterface: GameInitializedListenerInterface = (GameInitializedListenerInterface(JObject(eventListenerInterface)))
        gameInitializedListenerInterface.onGameInitialized(GameInitializedEvent(JObject(eventObject)))

when declared(newGameInitializedEventHandlerHook0):
    newGameInitializedEventHandlerHook0 = proc (): BasicEventHandler = newGameInitializedEventHandler()

