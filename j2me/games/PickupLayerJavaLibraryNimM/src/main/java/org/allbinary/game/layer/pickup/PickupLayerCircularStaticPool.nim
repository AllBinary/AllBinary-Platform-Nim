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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayerCircularPool as AllBinaryLayerCircularPoolModule
export AllBinaryLayerCircularPoolModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterface as PickedUpLayerInterfaceModule
export PickedUpLayerInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule

type
    PickupLayerCircularStaticPool* = ref object of AllBinaryLayerCircularPool

proc newPickupLayerCircularStaticPool*(): PickupLayerCircularStaticPool
proc initPickupLayerCircularStaticPool*(this: PickupLayerCircularStaticPool)
proc getInstance*(t: typedesc[PickupLayerCircularStaticPool]): PickupLayerCircularStaticPool {.discardable.}
method getInstanceXYZ*(this: PickupLayerCircularStaticPool, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, x: int32, y: int32, z: int32): PickedUpLayerInterface {.base, discardable.}
import org/allbinary/game/layer/pickup/PickupLayer as PickupLayerModule
export PickupLayerModule

var PickupLayerCircularStaticPool_SINGLETONValue: PickupLayerCircularStaticPool
var PickupLayerCircularStaticPool_SINGLETONSet = false
proc SINGLETON*(t: typedesc[PickupLayerCircularStaticPool]): PickupLayerCircularStaticPool =
    if not PickupLayerCircularStaticPool_SINGLETONSet:
        PickupLayerCircularStaticPool_SINGLETONSet = true
        PickupLayerCircularStaticPool_SINGLETONValue = newPickupLayerCircularStaticPool()
    PickupLayerCircularStaticPool_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[PickupLayerCircularStaticPool], value: PickupLayerCircularStaticPool) =
    PickupLayerCircularStaticPool_SINGLETONSet = true
    PickupLayerCircularStaticPool_SINGLETONValue = value

proc initPickupLayerCircularStaticPool*(this: PickupLayerCircularStaticPool) =
        initAllBinaryLayerCircularPool(this)
        discard

proc newPickupLayerCircularStaticPool*(): PickupLayerCircularStaticPool =
    result = PickupLayerCircularStaticPool()
    initPickupLayerCircularStaticPool(result)

proc getInstance*(t: typedesc[PickupLayerCircularStaticPool]): PickupLayerCircularStaticPool {.discardable.} =
        return PickupLayerCircularStaticPool.SINGLETON

method getInstanceXYZ*(this: PickupLayerCircularStaticPool, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface, x: int32, y: int32, z: int32): PickedUpLayerInterface {.base, discardable.} =
        let pickupLayer: PickupLayer = PickupLayer(JObject(this.getNextInstance()))
        pickupLayer.initXYZ(x, y, z)
        pickupLayer.init(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface())
        return pickupLayer

when declared(newPickupLayerCircularStaticPoolHook0):
    newPickupLayerCircularStaticPoolHook0 = proc (): AllBinaryLayerCircularPool = newPickupLayerCircularStaticPool()

