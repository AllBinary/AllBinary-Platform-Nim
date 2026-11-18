#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
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
import org/allbinary/logic/util/cache/PoolInterface as PoolInterfaceModule
export PoolInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/PoolType as PoolTypeModule
export PoolTypeModule
import org/allbinary/logic/util/cache/CachePolicy as CachePolicyModule
export CachePolicyModule

type
    PoolInterfaceFactory* = ref object of JObject

proc newPoolInterfaceFactory*(): PoolInterfaceFactory
proc initPoolInterfaceFactory*(this: PoolInterfaceFactory)
proc getInstance*(t: typedesc[PoolInterfaceFactory], cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface, poolType: PoolType, cachePolicy: CachePolicy): PoolInterface {.discardable.}


proc initPoolInterfaceFactory*(this: PoolInterfaceFactory) =
        discard
        discard

proc newPoolInterfaceFactory*(): PoolInterfaceFactory =
    result = PoolInterfaceFactory()
    initPoolInterfaceFactory(result)

proc getInstance*(t: typedesc[PoolInterfaceFactory], cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface, poolType: PoolType, cachePolicy: CachePolicy): PoolInterface {.discardable.} =
        raise newJException("Exception", jstr("No Such PoolType: ") & jstr(poolType.toString()))

