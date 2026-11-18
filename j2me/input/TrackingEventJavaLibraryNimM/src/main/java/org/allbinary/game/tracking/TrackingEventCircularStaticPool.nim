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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/util/event/AllBinaryEventCircularPool as AllBinaryEventCircularPoolModule
export AllBinaryEventCircularPoolModule
import org/allbinary/game/tracking/TrackingEvent as TrackingEventModule
export TrackingEventModule

type
    TrackingEventCircularStaticPool* = ref object of JObject
        EVENT_POOL*: AllBinaryEventCircularPool

proc newTrackingEventCircularStaticPool*(): TrackingEventCircularStaticPool
proc getInstance*(t: typedesc[TrackingEventCircularStaticPool]): TrackingEventCircularStaticPool {.discardable.}
method init*(this: TrackingEventCircularStaticPool) {.base.}
method getNextInstance*(this: TrackingEventCircularStaticPool, layerInterface: AllBinaryLayer): TrackingEvent {.base, discardable.}
import org/allbinary/game/tracking/TrackingEventFactory as TrackingEventFactoryModule
export TrackingEventFactoryModule

var TrackingEventCircularStaticPool_instanceValue: TrackingEventCircularStaticPool
var TrackingEventCircularStaticPool_instanceSet = false
proc instance*(t: typedesc[TrackingEventCircularStaticPool]): TrackingEventCircularStaticPool =
    if not TrackingEventCircularStaticPool_instanceSet:
        TrackingEventCircularStaticPool_instanceSet = true
        TrackingEventCircularStaticPool_instanceValue = newTrackingEventCircularStaticPool()
    TrackingEventCircularStaticPool_instanceValue
proc `instance=`*(t: typedesc[TrackingEventCircularStaticPool], value: TrackingEventCircularStaticPool) =
    TrackingEventCircularStaticPool_instanceSet = true
    TrackingEventCircularStaticPool_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsTrackingEventCircularStaticPool(this: TrackingEventCircularStaticPool) =
    this.EVENT_POOL = newAllBinaryEventCircularPool(20)
    discard

proc initTrackingEventCircularStaticPool*(this: TrackingEventCircularStaticPool) =
    this.initFieldsTrackingEventCircularStaticPool()

proc newTrackingEventCircularStaticPool*(): TrackingEventCircularStaticPool =
    result = TrackingEventCircularStaticPool()
    initTrackingEventCircularStaticPool(result)

proc getInstance*(t: typedesc[TrackingEventCircularStaticPool]): TrackingEventCircularStaticPool {.discardable.} =
        return TrackingEventCircularStaticPool.instance

method init*(this: TrackingEventCircularStaticPool) {.base.} =
        this.EVENT_POOL.initAllBinaryEventCircularPool(newTrackingEventFactory())

method getNextInstance*(this: TrackingEventCircularStaticPool, layerInterface: AllBinaryLayer): TrackingEvent {.base, discardable.} =
        var trackingEvent: TrackingEvent = TrackingEvent(JObject(this.EVENT_POOL.getNextInstance()))
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return trackingEvent

