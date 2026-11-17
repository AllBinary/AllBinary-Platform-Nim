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
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    NoOperatingSystem* = ref object of GenericOperatingSystem

proc newNoOperatingSystem*(): NoOperatingSystem
proc initNoOperatingSystem*(this: NoOperatingSystem)

var NoOperatingSystem_NO_OPERATING_SYSTEMValue: GenericOperatingSystem
var NoOperatingSystem_NO_OPERATING_SYSTEMSet = false
proc NO_OPERATING_SYSTEMStatic*(t: typedesc[NoOperatingSystem]): GenericOperatingSystem =
    if not NoOperatingSystem_NO_OPERATING_SYSTEMSet:
        NoOperatingSystem_NO_OPERATING_SYSTEMSet = true
        NoOperatingSystem_NO_OPERATING_SYSTEMValue = newGenericOperatingSystem()
    NoOperatingSystem_NO_OPERATING_SYSTEMValue

proc initNoOperatingSystem*(this: NoOperatingSystem) =
        initGenericOperatingSystem(this)
        discard

proc newNoOperatingSystem*(): NoOperatingSystem =
    result = NoOperatingSystem()
    initNoOperatingSystem(result)

when declared(newNoOperatingSystemHook0):
    newNoOperatingSystemHook0 = proc (): GenericOperatingSystem = newNoOperatingSystem()

