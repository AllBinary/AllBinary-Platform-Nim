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
# package org.allbinary.logic.system.os.solaris

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    SolarisOS* = ref object of GenericOperatingSystem

proc newSolarisOS*(): SolarisOS
proc initSolarisOS*(this: SolarisOS)
method isAutoHide*(this: SolarisOS): bool {.discardable.}


proc initSolarisOS*(this: SolarisOS) =
        initGenericOperatingSystem(this)
        this.scalable = true

proc newSolarisOS*(): SolarisOS =
    result = SolarisOS()
    initSolarisOS(result)

method isAutoHide*(this: SolarisOS): bool {.discardable.} =
        return true

when declared(newSolarisOSHook0):
    newSolarisOSHook0 = proc (): GenericOperatingSystem = newSolarisOS()

