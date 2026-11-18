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
import org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterfaceModule
export AllBinaryEventObjectFactoryInterfaceModule

type
    TrackingEventFactory* = ref object of AllBinaryEventObjectFactoryInterface

proc newTrackingEventFactory*(): TrackingEventFactory
proc initTrackingEventFactory*(this: TrackingEventFactory)
method getInstance*(this: TrackingEventFactory): AllBinaryEventObject {.discardable.}
import org/allbinary/game/tracking/TrackingEvent as TrackingEventModule
export TrackingEventModule
import org/allbinary/game/tracking/TrackingEventHandler as TrackingEventHandlerModule
export TrackingEventHandlerModule


proc initTrackingEventFactory*(this: TrackingEventFactory) =
        discard
        discard

proc newTrackingEventFactory*(): TrackingEventFactory =
    result = TrackingEventFactory()
    initTrackingEventFactory(result)

method getInstance*(this: TrackingEventFactory): AllBinaryEventObject {.discardable.} =
        return newTrackingEvent(TrackingEventHandler.getInstance())

