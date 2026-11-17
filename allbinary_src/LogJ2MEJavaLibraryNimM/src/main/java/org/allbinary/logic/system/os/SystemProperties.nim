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
import java/lang/System as SystemModule
export SystemModule

#ActualPlatform
type
    SystemProperties* = ref object of JObject
        OS_NAME*: string
        OS_ARCH*: string
        OS_VERSION*: string
        USER_HOME*: string

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

# Java field initializers run after the base initializer
proc initFieldsSystemProperties(this: SystemProperties) =
    this.OS_NAME = "os.name"
    this.OS_ARCH = "os.arch"
    this.OS_VERSION = "os.version"
    this.USER_HOME = "user.home"
    discard

proc getInstance*(t: typedesc[SystemProperties]): SystemProperties {.discardable.} =
        return SystemProperties.instance

proc initSystemProperties*(this: SystemProperties) =
        this.initFieldsSystemProperties()
        discard

proc newSystemProperties*(): SystemProperties =
    result = SystemProperties()
    initSystemProperties(result)

method getName*(this: SystemProperties): string {.base, discardable.} =
        return System.getProperty(this.OS_NAME)

method getArch*(this: SystemProperties): string {.base, discardable.} =
        return System.getProperty(this.OS_ARCH)

method getVersion*(this: SystemProperties): string {.base, discardable.} =
        return System.getProperty(this.OS_VERSION)

method getUserHomePath*(this: SystemProperties): string {.base, discardable.} =
        return System.getProperty(this.USER_HOME)

