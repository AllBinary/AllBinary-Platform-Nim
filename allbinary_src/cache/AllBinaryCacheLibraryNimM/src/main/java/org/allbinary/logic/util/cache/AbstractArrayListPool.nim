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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/util/cache/PoolInterface as PoolInterfaceModule
export PoolInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    AbstractArrayListPool* = ref object of PoolInterface
        commonStrings*: CommonStrings
        buffers*: BasicArrayList
        cacheableInterfaceFactoryInterface*: CacheableInterfaceFactoryInterface

proc newAbstractArrayListPool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): AbstractArrayListPool
proc initAbstractArrayListPool*(this: AbstractArrayListPool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface)
method clear*(this: AbstractArrayListPool)
method remove*(this: AbstractArrayListPool, key: JObject): CacheableInterface {.discardable.}
method add*(this: AbstractArrayListPool, cacheableInterface: CacheableInterface)
method addArray*(this: AbstractArrayListPool, cacheableInterfaces: JArray[CacheableInterface])
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsAbstractArrayListPool(this: AbstractArrayListPool) =
    this.commonStrings = CommonStrings.getInstance()
    this.buffers = newBasicArrayListD()
    
    discard

proc initAbstractArrayListPool*(this: AbstractArrayListPool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface) =
        this.initFieldsAbstractArrayListPool()
        this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface

proc newAbstractArrayListPool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): AbstractArrayListPool =
    result = AbstractArrayListPool()
    initAbstractArrayListPool(result, cacheableInterfaceFactoryInterface)

method clear*(this: AbstractArrayListPool) =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method remove*(this: AbstractArrayListPool, key: JObject): CacheableInterface {.discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method add*(this: AbstractArrayListPool, cacheableInterface: CacheableInterface) =
        this.buffers.add(cacheableInterface)

method addArray*(this: AbstractArrayListPool, cacheableInterfaces: JArray[CacheableInterface]) =
        block:
            var index: int32 = 0
            while index < cacheableInterfaces.length:
                defer: index = index +% 1
                this.buffers.add(cacheableInterfaces[index])

