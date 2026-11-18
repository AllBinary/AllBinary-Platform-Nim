#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    LastDisplayChangeEventHandler* = ref object of BasicEventHandler

proc newLastDisplayChangeEventHandler*(): LastDisplayChangeEventHandler
proc initLastDisplayChangeEventHandler*(this: LastDisplayChangeEventHandler)
proc getInstance*(t: typedesc[LastDisplayChangeEventHandler]): LastDisplayChangeEventHandler {.discardable.}
method process*(this: LastDisplayChangeEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/graphics/displayable/event/DisplayChangeEventListener as DisplayChangeEventListenerModule
export DisplayChangeEventListenerModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule

var LastDisplayChangeEventHandler_SINGLETONValue: LastDisplayChangeEventHandler
var LastDisplayChangeEventHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[LastDisplayChangeEventHandler]): LastDisplayChangeEventHandler =
    if not LastDisplayChangeEventHandler_SINGLETONSet:
        LastDisplayChangeEventHandler_SINGLETONSet = true
        LastDisplayChangeEventHandler_SINGLETONValue = newLastDisplayChangeEventHandler()
    LastDisplayChangeEventHandler_SINGLETONValue

proc getInstance*(t: typedesc[LastDisplayChangeEventHandler]): LastDisplayChangeEventHandler {.discardable.} =
        return LastDisplayChangeEventHandler.SINGLETON

proc initLastDisplayChangeEventHandler*(this: LastDisplayChangeEventHandler) =
        initBasicEventHandler(this)
        discard

proc newLastDisplayChangeEventHandler*(): LastDisplayChangeEventHandler =
    result = LastDisplayChangeEventHandler()
    initLastDisplayChangeEventHandler(result)

method process*(this: LastDisplayChangeEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let displayChangeEventListener: DisplayChangeEventListener = (DisplayChangeEventListener(JObject(eventListenerInterface)))
        displayChangeEventListener.onDisplayChangeEvent(DisplayChangeEvent(JObject(eventObject)))

when declared(newLastDisplayChangeEventHandlerHook0):
    newLastDisplayChangeEventHandlerHook0 = proc (): BasicEventHandler = newLastDisplayChangeEventHandler()

