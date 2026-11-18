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

type
    LockedResources* = ref object of JObject
        LOCKED_DEMO_GAME_FEATURE_RESOURCE*: string

proc newLockedResources*(): LockedResources
proc getInstance*(t: typedesc[LockedResources]): LockedResources {.discardable.}

var LockedResources_instanceValue: LockedResources
var LockedResources_instanceSet = false
proc instance*(t: typedesc[LockedResources]): LockedResources =
    if not LockedResources_instanceSet:
        LockedResources_instanceSet = true
        LockedResources_instanceValue = newLockedResources()
    LockedResources_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLockedResources(this: LockedResources) =
    this.LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png"
    discard

proc initLockedResources*(this: LockedResources) =
    this.initFieldsLockedResources()

proc newLockedResources*(): LockedResources =
    result = LockedResources()
    initLockedResources(result)

proc getInstance*(t: typedesc[LockedResources]): LockedResources {.discardable.} =
        return LockedResources.instance

