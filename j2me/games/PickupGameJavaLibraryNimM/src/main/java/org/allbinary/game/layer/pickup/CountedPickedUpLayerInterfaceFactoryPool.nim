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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    CountedPickedUpLayerInterfaceFactoryPool* = ref object of JObject
        list*: BasicArrayList

proc newCountedPickedUpLayerInterfaceFactoryPool*(): CountedPickedUpLayerInterfaceFactoryPool
proc initCountedPickedUpLayerInterfaceFactoryPool*(this: CountedPickedUpLayerInterfaceFactoryPool)
method getList*(this: CountedPickedUpLayerInterfaceFactoryPool): BasicArrayList {.base, discardable.}
proc getInstance*(t: typedesc[CountedPickedUpLayerInterfaceFactoryPool]): CountedPickedUpLayerInterfaceFactoryPool {.discardable.}
proc init*(t: typedesc[CountedPickedUpLayerInterfaceFactoryPool])
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue: CountedPickedUpLayerInterfaceFactoryPool
var CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet = false
proc SINGLETON*(t: typedesc[CountedPickedUpLayerInterfaceFactoryPool]): CountedPickedUpLayerInterfaceFactoryPool =
    if not CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet:
        CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet = true
        CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue = newCountedPickedUpLayerInterfaceFactoryPool()
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[CountedPickedUpLayerInterfaceFactoryPool], value: CountedPickedUpLayerInterfaceFactoryPool) =
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet = true
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsCountedPickedUpLayerInterfaceFactoryPool(this: CountedPickedUpLayerInterfaceFactoryPool) =
    
    discard

proc initCountedPickedUpLayerInterfaceFactoryPool*(this: CountedPickedUpLayerInterfaceFactoryPool) =
        this.initFieldsCountedPickedUpLayerInterfaceFactoryPool()
        this.list = newBasicArrayListD()

proc newCountedPickedUpLayerInterfaceFactoryPool*(): CountedPickedUpLayerInterfaceFactoryPool =
    result = CountedPickedUpLayerInterfaceFactoryPool()
    initCountedPickedUpLayerInterfaceFactoryPool(result)

method getList*(this: CountedPickedUpLayerInterfaceFactoryPool): BasicArrayList {.base, discardable.} =
        return this.list

proc getInstance*(t: typedesc[CountedPickedUpLayerInterfaceFactoryPool]): CountedPickedUpLayerInterfaceFactoryPool {.discardable.} =
        return CountedPickedUpLayerInterfaceFactoryPool.SINGLETON

proc init*(t: typedesc[CountedPickedUpLayerInterfaceFactoryPool]) =
        CountedPickedUpLayerInterfaceFactoryPool.SINGLETON = newCountedPickedUpLayerInterfaceFactoryPool()

