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
# package org.allbinary.game.input.mapping.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    InputMappingEventHandler* = ref object of BasicEventHandler

proc newInputMappingEventHandler*(): InputMappingEventHandler
proc initInputMappingEventHandler*(this: InputMappingEventHandler)
proc getInstance*(t: typedesc[InputMappingEventHandler]): InputMappingEventHandler {.discardable.}
method process*(this: InputMappingEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface as InputMappingEventListenerInterfaceModule
export InputMappingEventListenerInterfaceModule
import org/allbinary/game/input/mapping/event/InputMappingEvent as InputMappingEventModule
export InputMappingEventModule

var InputMappingEventHandler_gameKeyEventHandlerValue: InputMappingEventHandler
var InputMappingEventHandler_gameKeyEventHandlerSet = false
proc gameKeyEventHandler*(t: typedesc[InputMappingEventHandler]): InputMappingEventHandler =
    if not InputMappingEventHandler_gameKeyEventHandlerSet:
        InputMappingEventHandler_gameKeyEventHandlerSet = true
        InputMappingEventHandler_gameKeyEventHandlerValue = newInputMappingEventHandler()
    InputMappingEventHandler_gameKeyEventHandlerValue

proc initInputMappingEventHandler*(this: InputMappingEventHandler) =
        initBasicEventHandler(this)
        discard

proc newInputMappingEventHandler*(): InputMappingEventHandler =
    result = InputMappingEventHandler()
    initInputMappingEventHandler(result)

proc getInstance*(t: typedesc[InputMappingEventHandler]): InputMappingEventHandler {.discardable.} =
        return InputMappingEventHandler.gameKeyEventHandler

method process*(this: InputMappingEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let inputMappingEventListenerInterface: InputMappingEventListenerInterface = InputMappingEventListenerInterface(JObject(eventListenerInterface))
        inputMappingEventListenerInterface.onInputMappingEvent(InputMappingEvent(JObject(eventObject)))

when declared(newInputMappingEventHandlerHook0):
    newInputMappingEventHandlerHook0 = proc (): BasicEventHandler = newInputMappingEventHandler()

