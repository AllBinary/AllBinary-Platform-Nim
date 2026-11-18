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
    DisplayChangeEventHandler* = ref object of BasicEventHandler

proc newDisplayChangeEventHandler*(): DisplayChangeEventHandler
proc initDisplayChangeEventHandler*(this: DisplayChangeEventHandler)
proc getInstance*(t: typedesc[DisplayChangeEventHandler]): DisplayChangeEventHandler {.discardable.}
method process*(this: DisplayChangeEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/graphics/displayable/event/DisplayChangeEventListener as DisplayChangeEventListenerModule
export DisplayChangeEventListenerModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule

var DisplayChangeEventHandler_SINGLETONValue: DisplayChangeEventHandler
var DisplayChangeEventHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[DisplayChangeEventHandler]): DisplayChangeEventHandler =
    if not DisplayChangeEventHandler_SINGLETONSet:
        DisplayChangeEventHandler_SINGLETONSet = true
        DisplayChangeEventHandler_SINGLETONValue = newDisplayChangeEventHandler()
    DisplayChangeEventHandler_SINGLETONValue

proc getInstance*(t: typedesc[DisplayChangeEventHandler]): DisplayChangeEventHandler {.discardable.} =
        return DisplayChangeEventHandler.SINGLETON

proc initDisplayChangeEventHandler*(this: DisplayChangeEventHandler) =
        initBasicEventHandler(this)
        discard

proc newDisplayChangeEventHandler*(): DisplayChangeEventHandler =
    result = DisplayChangeEventHandler()
    initDisplayChangeEventHandler(result)

method process*(this: DisplayChangeEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let displayChangeEventListener: DisplayChangeEventListener = (DisplayChangeEventListener(JObject(eventListenerInterface)))
        displayChangeEventListener.onDisplayChangeEvent(DisplayChangeEvent(JObject(eventObject)))

when declared(newDisplayChangeEventHandlerHook0):
    newDisplayChangeEventHandlerHook0 = proc (): BasicEventHandler = newDisplayChangeEventHandler()

