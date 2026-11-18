#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/LockableFeature as LockableFeatureModule
export LockableFeatureModule

type
    LockedUtilInterface* = ref object of JObject


method isLocked*(this: LockedUtilInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isLocked")

method isLockedFeature*(this: LockedUtilInterface, lockableFeatrue: LockableFeature): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isLockedFeature")

