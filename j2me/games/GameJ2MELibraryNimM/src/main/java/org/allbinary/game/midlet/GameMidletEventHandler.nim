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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    GameMidletEventHandler* = ref object of BasicEventHandler

proc newGameMidletEventHandler*(): GameMidletEventHandler
proc initGameMidletEventHandler*(this: GameMidletEventHandler)
proc getInstance*(t: typedesc[GameMidletEventHandler]): GameMidletEventHandler {.discardable.}
method process*(this: GameMidletEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/game/midlet/GameMidletEventListener as GameMidletEventListenerModule
export GameMidletEventListenerModule

var GameMidletEventHandler_gameKeyEventHandlerValue: GameMidletEventHandler
var GameMidletEventHandler_gameKeyEventHandlerSet = false
proc gameKeyEventHandler*(t: typedesc[GameMidletEventHandler]): GameMidletEventHandler =
    if not GameMidletEventHandler_gameKeyEventHandlerSet:
        GameMidletEventHandler_gameKeyEventHandlerSet = true
        GameMidletEventHandler_gameKeyEventHandlerValue = newGameMidletEventHandler()
    GameMidletEventHandler_gameKeyEventHandlerValue

proc initGameMidletEventHandler*(this: GameMidletEventHandler) =
        initBasicEventHandler(this)
        discard

proc newGameMidletEventHandler*(): GameMidletEventHandler =
    result = GameMidletEventHandler()
    initGameMidletEventHandler(result)

proc getInstance*(t: typedesc[GameMidletEventHandler]): GameMidletEventHandler {.discardable.} =
        return GameMidletEventHandler.gameKeyEventHandler

method process*(this: GameMidletEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let gameMidletEventListener: GameMidletEventListener = GameMidletEventListener(JObject(eventListenerInterface))
        gameMidletEventListener.onGameEnd(eventObject)

when declared(newGameMidletEventHandlerHook0):
    newGameMidletEventHandlerHook0 = proc (): BasicEventHandler = newGameMidletEventHandler()

