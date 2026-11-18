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
# package org.allbinary.game.terrain

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventCircularPool as AllBinaryEventCircularPoolModule
export AllBinaryEventCircularPoolModule
import org/allbinary/game/terrain/TerrainEvent as TerrainEventModule
export TerrainEventModule
import org/allbinary/game/terrain/BasicTerrainInfo as BasicTerrainInfoModule
export BasicTerrainInfoModule

type
    TerrainEventCircularStaticPool* = ref object of JObject
        EVENT_POOL*: AllBinaryEventCircularPool

proc newTerrainEventCircularStaticPool*(): TerrainEventCircularStaticPool
proc getInstance*(t: typedesc[TerrainEventCircularStaticPool]): TerrainEventCircularStaticPool {.discardable.}
method init*(this: TerrainEventCircularStaticPool) {.base.}
method getNext*(this: TerrainEventCircularStaticPool, basicTerrainInfo: BasicTerrainInfo): TerrainEvent {.base, discardable.}
import org/allbinary/game/terrain/TerrainEventFactory as TerrainEventFactoryModule
export TerrainEventFactoryModule

var TerrainEventCircularStaticPool_instanceValue: TerrainEventCircularStaticPool
var TerrainEventCircularStaticPool_instanceSet = false
proc instance*(t: typedesc[TerrainEventCircularStaticPool]): TerrainEventCircularStaticPool =
    if not TerrainEventCircularStaticPool_instanceSet:
        TerrainEventCircularStaticPool_instanceSet = true
        TerrainEventCircularStaticPool_instanceValue = newTerrainEventCircularStaticPool()
    TerrainEventCircularStaticPool_instanceValue

# Java field initializers run after the base initializer
proc initFieldsTerrainEventCircularStaticPool(this: TerrainEventCircularStaticPool) =
    this.EVENT_POOL = newAllBinaryEventCircularPool(20)
    discard

proc initTerrainEventCircularStaticPool*(this: TerrainEventCircularStaticPool) =
    this.initFieldsTerrainEventCircularStaticPool()

proc newTerrainEventCircularStaticPool*(): TerrainEventCircularStaticPool =
    result = TerrainEventCircularStaticPool()
    initTerrainEventCircularStaticPool(result)

proc getInstance*(t: typedesc[TerrainEventCircularStaticPool]): TerrainEventCircularStaticPool {.discardable.} =
        return TerrainEventCircularStaticPool.instance

method init*(this: TerrainEventCircularStaticPool) {.base.} =
        this.EVENT_POOL.initAllBinaryEventCircularPool(newTerrainEventFactory())

method getNext*(this: TerrainEventCircularStaticPool, basicTerrainInfo: BasicTerrainInfo): TerrainEvent {.base, discardable.} =
        var trackingEvent: TerrainEvent = TerrainEvent(JObject(this.EVENT_POOL.getNextInstance()))
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        return trackingEvent

