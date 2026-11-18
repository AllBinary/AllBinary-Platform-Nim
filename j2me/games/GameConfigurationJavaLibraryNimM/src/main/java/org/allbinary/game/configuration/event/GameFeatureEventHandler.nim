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
    GameFeatureEventHandler* = ref object of BasicEventHandler

proc newGameFeatureEventHandler*(): GameFeatureEventHandler
proc initGameFeatureEventHandler*(this: GameFeatureEventHandler)
proc getInstance*(t: typedesc[GameFeatureEventHandler]): GameFeatureEventHandler {.discardable.}
method process*(this: GameFeatureEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/game/configuration/event/GameFeatureListenerInterface as GameFeatureListenerInterfaceModule
export GameFeatureListenerInterfaceModule
import org/allbinary/game/configuration/event/GameFeatureEvent as GameFeatureEventModule
export GameFeatureEventModule

var GameFeatureEventHandler_gameKeyEventHandlerValue: GameFeatureEventHandler
var GameFeatureEventHandler_gameKeyEventHandlerSet = false
proc gameKeyEventHandler*(t: typedesc[GameFeatureEventHandler]): GameFeatureEventHandler =
    if not GameFeatureEventHandler_gameKeyEventHandlerSet:
        GameFeatureEventHandler_gameKeyEventHandlerSet = true
        GameFeatureEventHandler_gameKeyEventHandlerValue = newGameFeatureEventHandler()
    GameFeatureEventHandler_gameKeyEventHandlerValue

proc initGameFeatureEventHandler*(this: GameFeatureEventHandler) =
        initBasicEventHandler(this)
        discard

proc newGameFeatureEventHandler*(): GameFeatureEventHandler =
    result = GameFeatureEventHandler()
    initGameFeatureEventHandler(result)

proc getInstance*(t: typedesc[GameFeatureEventHandler]): GameFeatureEventHandler {.discardable.} =
        return GameFeatureEventHandler.gameKeyEventHandler

method process*(this: GameFeatureEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let gameFeatureListenerInterface: GameFeatureListenerInterface = (GameFeatureListenerInterface(JObject(eventListenerInterface)))
        gameFeatureListenerInterface.onGameFeatureChange(GameFeatureEvent(JObject(eventObject)))

when declared(newGameFeatureEventHandlerHook0):
    newGameFeatureEventHandlerHook0 = proc (): BasicEventHandler = newGameFeatureEventHandler()

