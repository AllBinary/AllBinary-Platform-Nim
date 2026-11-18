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
import org/allbinary/logic/util/cache/AutomaticCacheInterface as AutomaticCacheInterfaceModule
export AutomaticCacheInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/CacheType as CacheTypeModule
export CacheTypeModule
import org/allbinary/logic/util/cache/CachePolicy as CachePolicyModule
export CachePolicyModule

type
    AutomaticCacheInterfaceFactory* = ref object of JObject

proc newAutomaticCacheInterfaceFactory*(): AutomaticCacheInterfaceFactory
proc initAutomaticCacheInterfaceFactory*(this: AutomaticCacheInterfaceFactory)
proc getInstance*(t: typedesc[AutomaticCacheInterfaceFactory], cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface, cacheType: CacheType, cachePolicy: CachePolicy): AutomaticCacheInterface {.discardable.}


proc initAutomaticCacheInterfaceFactory*(this: AutomaticCacheInterfaceFactory) =
        discard
        discard

proc newAutomaticCacheInterfaceFactory*(): AutomaticCacheInterfaceFactory =
    result = AutomaticCacheInterfaceFactory()
    initAutomaticCacheInterfaceFactory(result)

proc getInstance*(t: typedesc[AutomaticCacheInterfaceFactory], cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface, cacheType: CacheType, cachePolicy: CachePolicy): AutomaticCacheInterface {.discardable.} =
        raise newJException("Exception", jstr("No such ") & jstr(cacheType.toString()))

