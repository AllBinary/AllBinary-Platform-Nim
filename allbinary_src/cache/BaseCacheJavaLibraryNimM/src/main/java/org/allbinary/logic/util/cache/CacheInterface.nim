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
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    CacheInterface* = ref object of JObject


method add*(this: CacheInterface, cacheableInterface: CacheableInterface) {.base.} =
        raise newJException("AbstractMethodError", "add")

method addArray*(this: CacheInterface, cacheableInterfaces: JArray[CacheableInterface]) {.base.} =
        raise newJException("AbstractMethodError", "addArray")

method clear*(this: CacheInterface) {.base.} =
        raise newJException("AbstractMethodError", "clear")

