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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/LockedUtilInterface as LockedUtilInterfaceModule
export LockedUtilInterfaceModule
import org/allbinary/logic/system/security/licensing/LockableFeature as LockableFeatureModule
export LockableFeatureModule

type
    LockedUtil* = ref object of LockedUtilInterface

proc newLockedUtil*(): LockedUtil
proc getInstance*(t: typedesc[LockedUtil]): LockedUtil {.discardable.}
method isLocked*(this: LockedUtil): bool {.discardable.}
method isLockedFeature*(this: LockedUtil, lockableFeatrue: LockableFeature): bool {.discardable.}

var LockedUtil_instanceValue: LockedUtil
var LockedUtil_instanceSet = false
proc instance*(t: typedesc[LockedUtil]): LockedUtil =
    if not LockedUtil_instanceSet:
        LockedUtil_instanceSet = true
        LockedUtil_instanceValue = newLockedUtil()
    LockedUtil_instanceValue

proc initLockedUtil*(this: LockedUtil) =
    discard

proc newLockedUtil*(): LockedUtil =
    result = LockedUtil()
    initLockedUtil(result)

proc getInstance*(t: typedesc[LockedUtil]): LockedUtil {.discardable.} =
        return LockedUtil.instance

method isLocked*(this: LockedUtil): bool {.discardable.} =
        return true

method isLockedFeature*(this: LockedUtil, lockableFeatrue: LockableFeature): bool {.discardable.} =
        return true

