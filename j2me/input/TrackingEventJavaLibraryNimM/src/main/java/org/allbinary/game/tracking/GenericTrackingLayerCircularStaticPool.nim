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
import org/allbinary/layer/AllBinaryLayerCircularPool as AllBinaryLayerCircularPoolModule
export AllBinaryLayerCircularPoolModule

type
    GenericTrackingLayerCircularStaticPool* = ref object of AllBinaryLayerCircularPool

proc newGenericTrackingLayerCircularStaticPool*(): GenericTrackingLayerCircularStaticPool
proc initGenericTrackingLayerCircularStaticPool*(this: GenericTrackingLayerCircularStaticPool)
proc getInstance*(t: typedesc[GenericTrackingLayerCircularStaticPool]): GenericTrackingLayerCircularStaticPool {.discardable.}

var GenericTrackingLayerCircularStaticPool_SINGLETONValue: GenericTrackingLayerCircularStaticPool
var GenericTrackingLayerCircularStaticPool_SINGLETONSet = false
proc SINGLETON*(t: typedesc[GenericTrackingLayerCircularStaticPool]): GenericTrackingLayerCircularStaticPool =
    if not GenericTrackingLayerCircularStaticPool_SINGLETONSet:
        GenericTrackingLayerCircularStaticPool_SINGLETONSet = true
        GenericTrackingLayerCircularStaticPool_SINGLETONValue = newGenericTrackingLayerCircularStaticPool()
    GenericTrackingLayerCircularStaticPool_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[GenericTrackingLayerCircularStaticPool], value: GenericTrackingLayerCircularStaticPool) =
    GenericTrackingLayerCircularStaticPool_SINGLETONSet = true
    GenericTrackingLayerCircularStaticPool_SINGLETONValue = value

proc initGenericTrackingLayerCircularStaticPool*(this: GenericTrackingLayerCircularStaticPool) =
        initAllBinaryLayerCircularPool(this)
        discard

proc newGenericTrackingLayerCircularStaticPool*(): GenericTrackingLayerCircularStaticPool =
    result = GenericTrackingLayerCircularStaticPool()
    initGenericTrackingLayerCircularStaticPool(result)

proc getInstance*(t: typedesc[GenericTrackingLayerCircularStaticPool]): GenericTrackingLayerCircularStaticPool {.discardable.} =
        return GenericTrackingLayerCircularStaticPool.SINGLETON

when declared(newGenericTrackingLayerCircularStaticPoolHook0):
    newGenericTrackingLayerCircularStaticPoolHook0 = proc (): AllBinaryLayerCircularPool = newGenericTrackingLayerCircularStaticPool()

