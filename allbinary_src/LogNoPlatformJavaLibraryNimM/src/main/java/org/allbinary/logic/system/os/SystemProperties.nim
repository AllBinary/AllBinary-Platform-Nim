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
# package org.allbinary.logic.system.os

{.warning[UnusedImport]: off.}
import allbinary_java

#NoPlatform
type
    SystemProperties* = ref object of JObject

proc newSystemProperties*(): SystemProperties
proc initSystemProperties*(this: SystemProperties)
proc getInstance*(t: typedesc[SystemProperties]): SystemProperties {.discardable.}
method getName*(this: SystemProperties): string {.base, discardable.}
method getArch*(this: SystemProperties): string {.base, discardable.}
method getVersion*(this: SystemProperties): string {.base, discardable.}
method getUserHomePath*(this: SystemProperties): string {.base, discardable.}

var SystemProperties_instanceValue: SystemProperties
var SystemProperties_instanceSet = false
proc instance*(t: typedesc[SystemProperties]): SystemProperties =
    if not SystemProperties_instanceSet:
        SystemProperties_instanceSet = true
        SystemProperties_instanceValue = newSystemProperties()
    SystemProperties_instanceValue

proc getInstance*(t: typedesc[SystemProperties]): SystemProperties {.discardable.} =
        return SystemProperties.instance

proc initSystemProperties*(this: SystemProperties) =
        discard
        discard

proc newSystemProperties*(): SystemProperties =
    result = SystemProperties()
    initSystemProperties(result)

method getName*(this: SystemProperties): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getArch*(this: SystemProperties): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getVersion*(this: SystemProperties): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getUserHomePath*(this: SystemProperties): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

