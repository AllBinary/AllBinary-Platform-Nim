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
import org/allbinary/logic/util/cache/CacheInterface as CacheInterfaceModule
export CacheInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    AutomaticCacheInterface* = ref object of CacheInterface


method get*(this: AutomaticCacheInterface, key: JObject): CacheableInterface {.base, discardable.} =
        raise newJException("AbstractMethodError", "get")

