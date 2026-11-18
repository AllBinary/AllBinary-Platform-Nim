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
# package org.allbinary.game.tracking

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    TrackingEventHandler* = ref object of BasicEventHandler

proc newTrackingEventHandler*(): TrackingEventHandler
proc initTrackingEventHandler*(this: TrackingEventHandler)
proc getInstance*(t: typedesc[TrackingEventHandler]): TrackingEventHandler {.discardable.}
method process*(this: TrackingEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/game/tracking/TrackingEventListenerInterface as TrackingEventListenerInterfaceModule
export TrackingEventListenerInterfaceModule
import org/allbinary/game/tracking/TrackingEvent as TrackingEventModule
export TrackingEventModule

var TrackingEventHandler_instanceValue: TrackingEventHandler
var TrackingEventHandler_instanceSet = false
proc instance*(t: typedesc[TrackingEventHandler]): TrackingEventHandler =
    if not TrackingEventHandler_instanceSet:
        TrackingEventHandler_instanceSet = true
        TrackingEventHandler_instanceValue = newTrackingEventHandler()
    TrackingEventHandler_instanceValue

proc getInstance*(t: typedesc[TrackingEventHandler]): TrackingEventHandler {.discardable.} =
        return TrackingEventHandler.instance

proc initTrackingEventHandler*(this: TrackingEventHandler) =
        initBasicEventHandler(this)
        discard

proc newTrackingEventHandler*(): TrackingEventHandler =
    result = TrackingEventHandler()
    initTrackingEventHandler(result)

method process*(this: TrackingEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let trackingEventListenerInterface: TrackingEventListenerInterface = TrackingEventListenerInterface(JObject(eventListenerInterface))
        trackingEventListenerInterface.onMovement(TrackingEvent(JObject(eventObject)))

when declared(newTrackingEventHandlerHook0):
    newTrackingEventHandlerHook0 = proc (): BasicEventHandler = newTrackingEventHandler()

