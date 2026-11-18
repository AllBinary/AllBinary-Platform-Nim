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
import org/allbinary/logic/util/cache/AbstractArrayListPool as AbstractArrayListPoolModule
export AbstractArrayListPoolModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    BasicArrayListResetablePool* = ref object of AbstractArrayListPool

proc newBasicArrayListResetablePool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): BasicArrayListResetablePool
proc initBasicArrayListResetablePool*(this: BasicArrayListResetablePool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface)
method clear*(this: BasicArrayListResetablePool)
method remove*(this: BasicArrayListResetablePool, key: JObject): CacheableInterface {.discardable.}


proc initBasicArrayListResetablePool*(this: BasicArrayListResetablePool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface) =
        initAbstractArrayListPool(this, cacheableInterfaceFactoryInterface)

proc newBasicArrayListResetablePool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): BasicArrayListResetablePool =
    result = BasicArrayListResetablePool()
    initBasicArrayListResetablePool(result, cacheableInterfaceFactoryInterface)

method clear*(this: BasicArrayListResetablePool) =
        discard

method remove*(this: BasicArrayListResetablePool, key: JObject): CacheableInterface {.discardable.} =
        var size: int32 = this.buffers.size()
        if size > 0:
            return CacheableInterface(JObject(this.buffers.removeAt(size -% 1)))
        else:
            return this.cacheableInterfaceFactoryInterface.getInstance(key)

when declared(newBasicArrayListResetablePoolHook1):
    newBasicArrayListResetablePoolHook1 = proc (cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): AbstractArrayListPool = newBasicArrayListResetablePool(cacheableInterfaceFactoryInterface)

