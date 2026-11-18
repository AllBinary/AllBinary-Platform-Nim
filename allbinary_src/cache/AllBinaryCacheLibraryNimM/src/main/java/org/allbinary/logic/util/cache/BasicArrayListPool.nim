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
# package org.allbinary.logic.util.cache

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/util/cache/AbstractArrayListPool as AbstractArrayListPoolModule
export AbstractArrayListPoolModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    BasicArrayListPool* = ref object of AbstractArrayListPool

proc newBasicArrayListPool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): BasicArrayListPool
proc initBasicArrayListPool*(this: BasicArrayListPool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface)
method clear*(this: BasicArrayListPool)
method remove*(this: BasicArrayListPool, key: JObject): CacheableInterface {.discardable.}
method addAll*(this: BasicArrayListPool, usedList: BasicArrayList) {.base.}
method releaseUsedBackToPool*(this: BasicArrayListPool, usedList: BasicArrayList) {.base.}
import org/allbinary/logic/util/cache/BasicArrayListCacheable as BasicArrayListCacheableModule
export BasicArrayListCacheableModule


proc initBasicArrayListPool*(this: BasicArrayListPool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface) =
        initAbstractArrayListPool(this, cacheableInterfaceFactoryInterface)

proc newBasicArrayListPool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): BasicArrayListPool =
    result = BasicArrayListPool()
    initBasicArrayListPool(result, cacheableInterfaceFactoryInterface)

method clear*(this: BasicArrayListPool) =
        this.buffers.clear()

method remove*(this: BasicArrayListPool, key: JObject): CacheableInterface {.discardable.} =
        var size: int32 = this.buffers.size()
        if size > 0:
            return CacheableInterface(JObject(this.buffers.removeAt(size -% 1)))
        else:
            return this.cacheableInterfaceFactoryInterface.getInstance(key)

method addAll*(this: BasicArrayListPool, usedList: BasicArrayList) {.base.} =
        block:
            var index: int32 = usedList.size()
            while jPreDecrement(index) >= 0:
                var anyType: CacheableInterface = CacheableInterface(JObject(usedList.objectArray[index]))
                this.add(anyType)
        usedList.clear()

method releaseUsedBackToPool*(this: BasicArrayListPool, usedList: BasicArrayList) {.base.} =
        block:
            var index: int32 = usedList.size()
            while jPreDecrement(index) >= 0:
                var list: BasicArrayListCacheable = BasicArrayListCacheable(JObject(usedList.objectArray[index]))
                if list.size() == 0:
                    usedList.removeAt(index)
                    this.add(list)

when declared(newBasicArrayListPoolHook1):
    newBasicArrayListPoolHook1 = proc (cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): AbstractArrayListPool = newBasicArrayListPool(cacheableInterfaceFactoryInterface)

