#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import java/util/Set as SetModule
export SetModule
import org/allbinary/logic/util/cache/AutomaticCacheInterface as AutomaticCacheInterfaceModule
export AutomaticCacheInterfaceModule

type
    J2SECacheInterface* = ref object of AutomaticCacheInterface


method keySet*(this: J2SECacheInterface): Set {.base, discardable.} =
        raise newJException("AbstractMethodError", "keySet")

