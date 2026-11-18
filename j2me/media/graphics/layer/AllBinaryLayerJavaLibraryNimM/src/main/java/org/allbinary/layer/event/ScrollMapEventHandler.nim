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
# package org.allbinary.layer.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    ScrollMapEventHandler* = ref object of BasicEventHandler

proc newScrollMapEventHandler*(): ScrollMapEventHandler
proc initScrollMapEventHandler*(this: ScrollMapEventHandler)
proc getInstance*(t: typedesc[ScrollMapEventHandler]): ScrollMapEventHandler {.discardable.}
method process*(this: ScrollMapEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/layer/event/ScrollMapEventListenerInterface as ScrollMapEventListenerInterfaceModule
export ScrollMapEventListenerInterfaceModule
import org/allbinary/layer/event/ScrollMapEvent as ScrollMapEventModule
export ScrollMapEventModule

var ScrollMapEventHandler_SINGLETONValue: ScrollMapEventHandler
var ScrollMapEventHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[ScrollMapEventHandler]): ScrollMapEventHandler =
    if not ScrollMapEventHandler_SINGLETONSet:
        ScrollMapEventHandler_SINGLETONSet = true
        ScrollMapEventHandler_SINGLETONValue = newScrollMapEventHandler()
    ScrollMapEventHandler_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[ScrollMapEventHandler], value: ScrollMapEventHandler) =
    ScrollMapEventHandler_SINGLETONSet = true
    ScrollMapEventHandler_SINGLETONValue = value

proc initScrollMapEventHandler*(this: ScrollMapEventHandler) =
        initBasicEventHandler(this)
        discard

proc newScrollMapEventHandler*(): ScrollMapEventHandler =
    result = ScrollMapEventHandler()
    initScrollMapEventHandler(result)

proc getInstance*(t: typedesc[ScrollMapEventHandler]): ScrollMapEventHandler {.discardable.} =
        return ScrollMapEventHandler.SINGLETON

method process*(this: ScrollMapEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let scrollMapEventListenerInterface: ScrollMapEventListenerInterface = (ScrollMapEventListenerInterface(JObject(eventListenerInterface)))
        scrollMapEventListenerInterface.onMoveEvent(ScrollMapEvent(JObject(eventObject)))

when declared(newScrollMapEventHandlerHook0):
    newScrollMapEventHandlerHook0 = proc (): BasicEventHandler = newScrollMapEventHandler()

