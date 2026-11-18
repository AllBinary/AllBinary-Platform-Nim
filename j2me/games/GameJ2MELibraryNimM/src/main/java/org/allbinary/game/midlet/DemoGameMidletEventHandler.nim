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
    DemoGameMidletEventHandler* = ref object of BasicEventHandler

proc newDemoGameMidletEventHandler*(): DemoGameMidletEventHandler
proc initDemoGameMidletEventHandler*(this: DemoGameMidletEventHandler)
proc getInstance*(t: typedesc[DemoGameMidletEventHandler]): DemoGameMidletEventHandler {.discardable.}
method process*(this: DemoGameMidletEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/game/midlet/DemoGameMidletEventListener as DemoGameMidletEventListenerModule
export DemoGameMidletEventListenerModule
import org/allbinary/game/midlet/DemoGameMidletEvent as DemoGameMidletEventModule
export DemoGameMidletEventModule

var DemoGameMidletEventHandler_gameKeyEventHandlerValue: DemoGameMidletEventHandler
var DemoGameMidletEventHandler_gameKeyEventHandlerSet = false
proc gameKeyEventHandler*(t: typedesc[DemoGameMidletEventHandler]): DemoGameMidletEventHandler =
    if not DemoGameMidletEventHandler_gameKeyEventHandlerSet:
        DemoGameMidletEventHandler_gameKeyEventHandlerSet = true
        DemoGameMidletEventHandler_gameKeyEventHandlerValue = newDemoGameMidletEventHandler()
    DemoGameMidletEventHandler_gameKeyEventHandlerValue

proc initDemoGameMidletEventHandler*(this: DemoGameMidletEventHandler) =
        initBasicEventHandler(this)
        discard

proc newDemoGameMidletEventHandler*(): DemoGameMidletEventHandler =
    result = DemoGameMidletEventHandler()
    initDemoGameMidletEventHandler(result)

proc getInstance*(t: typedesc[DemoGameMidletEventHandler]): DemoGameMidletEventHandler {.discardable.} =
        return DemoGameMidletEventHandler.gameKeyEventHandler

method process*(this: DemoGameMidletEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let demoGameMidletEventListener: DemoGameMidletEventListener = DemoGameMidletEventListener(JObject(eventListenerInterface))
        demoGameMidletEventListener.onDemoGameMidletEvent(DemoGameMidletEvent(JObject(eventObject)))

when declared(newDemoGameMidletEventHandlerHook0):
    newDemoGameMidletEventHandlerHook0 = proc (): BasicEventHandler = newDemoGameMidletEventHandler()

