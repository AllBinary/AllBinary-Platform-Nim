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
    NoCacheableFactory* = ref object of CacheableInterfaceFactoryInterface

proc newNoCacheableFactory*(): NoCacheableFactory
proc initNoCacheableFactory*(this: NoCacheableFactory)
method getInstance*(this: NoCacheableFactory, key: JObject): CacheableInterface {.discardable.}


proc initNoCacheableFactory*(this: NoCacheableFactory) =
        discard
        discard

proc newNoCacheableFactory*(): NoCacheableFactory =
    result = NoCacheableFactory()
    initNoCacheableFactory(result)

method getInstance*(this: NoCacheableFactory, key: JObject): CacheableInterface {.discardable.} =
        raise newJException("Exception", "This Factory Does Not")

