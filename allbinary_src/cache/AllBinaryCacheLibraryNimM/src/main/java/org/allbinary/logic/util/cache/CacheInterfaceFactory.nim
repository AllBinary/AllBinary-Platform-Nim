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
import org/allbinary/logic/util/cache/CacheInterface as CacheInterfaceModule
export CacheInterfaceModule
import org/allbinary/logic/util/cache/CacheType as CacheTypeModule
export CacheTypeModule
import org/allbinary/logic/util/cache/CachePolicy as CachePolicyModule
export CachePolicyModule

type
    CacheInterfaceFactory* = ref object of JObject

proc newCacheInterfaceFactory*(): CacheInterfaceFactory
proc initCacheInterfaceFactory*(this: CacheInterfaceFactory)
proc getInstance*(t: typedesc[CacheInterfaceFactory], cacheType: CacheType, cachePolicy: CachePolicy): CacheInterface {.discardable.}


proc initCacheInterfaceFactory*(this: CacheInterfaceFactory) =
        discard
        discard

proc newCacheInterfaceFactory*(): CacheInterfaceFactory =
    result = CacheInterfaceFactory()
    initCacheInterfaceFactory(result)

proc getInstance*(t: typedesc[CacheInterfaceFactory], cacheType: CacheType, cachePolicy: CachePolicy): CacheInterface {.discardable.} =
        raise newJException("Exception", jstr("No such ") & jstr(cacheType.toString()))

