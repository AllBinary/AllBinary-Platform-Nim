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
# package org.allbinary.game.combat.destroy.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/util/event/AllBinaryEventCircularPool as AllBinaryEventCircularPoolModule
export AllBinaryEventCircularPoolModule
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule

type
    DestroyEventCircularStaticPool* = ref object of JObject
        EVENT_POOL*: AllBinaryEventCircularPool

proc newDestroyEventCircularStaticPool*(): DestroyEventCircularStaticPool
proc initDestroyEventCircularStaticPool*(this: DestroyEventCircularStaticPool)
proc getInstance*(t: typedesc[DestroyEventCircularStaticPool]): DestroyEventCircularStaticPool {.discardable.}
method init*(this: DestroyEventCircularStaticPool, combatGameCanvas: AllBinaryGameCanvas) {.base.}
method getInstanceForLayer*(this: DestroyEventCircularStaticPool, layerInterface: AllBinaryLayer): DestroyedEvent {.base, discardable.}
import org/allbinary/game/combat/destroy/event/DestroyEventFactory as DestroyEventFactoryModule
export DestroyEventFactoryModule

var DestroyEventCircularStaticPool_instanceValue: DestroyEventCircularStaticPool
var DestroyEventCircularStaticPool_instanceSet = false
proc instance*(t: typedesc[DestroyEventCircularStaticPool]): DestroyEventCircularStaticPool =
    if not DestroyEventCircularStaticPool_instanceSet:
        DestroyEventCircularStaticPool_instanceSet = true
        DestroyEventCircularStaticPool_instanceValue = newDestroyEventCircularStaticPool()
    DestroyEventCircularStaticPool_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDestroyEventCircularStaticPool(this: DestroyEventCircularStaticPool) =
    this.EVENT_POOL = newAllBinaryEventCircularPool(20)
    discard

proc getInstance*(t: typedesc[DestroyEventCircularStaticPool]): DestroyEventCircularStaticPool {.discardable.} =
        return DestroyEventCircularStaticPool.instance

proc initDestroyEventCircularStaticPool*(this: DestroyEventCircularStaticPool) =
        this.initFieldsDestroyEventCircularStaticPool()
        discard

proc newDestroyEventCircularStaticPool*(): DestroyEventCircularStaticPool =
    result = DestroyEventCircularStaticPool()
    initDestroyEventCircularStaticPool(result)

method init*(this: DestroyEventCircularStaticPool, combatGameCanvas: AllBinaryGameCanvas) {.base.} =
        this.EVENT_POOL.initAllBinaryEventCircularPool(newDestroyEventFactory(combatGameCanvas))

method getInstanceForLayer*(this: DestroyEventCircularStaticPool, layerInterface: AllBinaryLayer): DestroyedEvent {.base, discardable.} =
        var destroyedEvent: DestroyedEvent = DestroyedEvent(JObject(this.EVENT_POOL.getNextInstance()))
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return destroyedEvent

