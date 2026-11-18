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
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    BasicArrayListCacheableInterfaceFactory* = ref object of CacheableInterfaceFactoryInterface

proc newBasicArrayListCacheableInterfaceFactory*(): BasicArrayListCacheableInterfaceFactory
method getInstance*(this: BasicArrayListCacheableInterfaceFactory, key: JObject): CacheableInterface {.discardable.}
import org/allbinary/logic/util/cache/BasicArrayListCacheable as BasicArrayListCacheableModule
export BasicArrayListCacheableModule


proc initBasicArrayListCacheableInterfaceFactory*(this: BasicArrayListCacheableInterfaceFactory) =
    discard

proc newBasicArrayListCacheableInterfaceFactory*(): BasicArrayListCacheableInterfaceFactory =
    result = BasicArrayListCacheableInterfaceFactory()
    initBasicArrayListCacheableInterfaceFactory(result)

method getInstance*(this: BasicArrayListCacheableInterfaceFactory, key: JObject): CacheableInterface {.discardable.} =
        return newBasicArrayListCacheable()

