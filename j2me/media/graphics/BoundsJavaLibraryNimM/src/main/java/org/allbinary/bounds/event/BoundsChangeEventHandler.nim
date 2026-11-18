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
# package org.allbinary.bounds.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    BoundsChangeEventHandler* = ref object of BasicEventHandler

proc newBoundsChangeEventHandler*(): BoundsChangeEventHandler
proc initBoundsChangeEventHandler*(this: BoundsChangeEventHandler)
proc getInstance*(t: typedesc[BoundsChangeEventHandler]): BasicEventHandler {.discardable.}
method process*(this: BoundsChangeEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/bounds/event/BoundsChangeEventListener as BoundsChangeEventListenerModule
export BoundsChangeEventListenerModule
import org/allbinary/bounds/event/BoundsChangeEvent as BoundsChangeEventModule
export BoundsChangeEventModule

var BoundsChangeEventHandler_SINGLETONValue: BasicEventHandler
var BoundsChangeEventHandler_SINGLETONSet = false
proc SINGLETON*(t: typedesc[BoundsChangeEventHandler]): BasicEventHandler =
    if not BoundsChangeEventHandler_SINGLETONSet:
        BoundsChangeEventHandler_SINGLETONSet = true
        BoundsChangeEventHandler_SINGLETONValue = newBoundsChangeEventHandler()
    BoundsChangeEventHandler_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[BoundsChangeEventHandler], value: BasicEventHandler) =
    BoundsChangeEventHandler_SINGLETONSet = true
    BoundsChangeEventHandler_SINGLETONValue = value

proc initBoundsChangeEventHandler*(this: BoundsChangeEventHandler) =
        initBasicEventHandler(this)
        discard

proc newBoundsChangeEventHandler*(): BoundsChangeEventHandler =
    result = BoundsChangeEventHandler()
    initBoundsChangeEventHandler(result)

proc getInstance*(t: typedesc[BoundsChangeEventHandler]): BasicEventHandler {.discardable.} =
        return BoundsChangeEventHandler.SINGLETON

method process*(this: BoundsChangeEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let boundsChangeEventListener: BoundsChangeEventListener = BoundsChangeEventListener(JObject(eventListenerInterface))
        boundsChangeEventListener.onBoundsChangeEvent(BoundsChangeEvent(JObject(eventObject)))

when declared(newBoundsChangeEventHandlerHook0):
    newBoundsChangeEventHandlerHook0 = proc (): BasicEventHandler = newBoundsChangeEventHandler()

