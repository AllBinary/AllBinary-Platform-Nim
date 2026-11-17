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
# package org.allbinary.logic.system.os.linux

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    LinuxOS* = ref object of GenericOperatingSystem

proc newLinuxOS*(): LinuxOS
proc initLinuxOS*(this: LinuxOS)
method isAutoHide*(this: LinuxOS): bool {.discardable.}


proc initLinuxOS*(this: LinuxOS) =
        initGenericOperatingSystem(this)
        this.scalable = true

proc newLinuxOS*(): LinuxOS =
    result = LinuxOS()
    initLinuxOS(result)

method isAutoHide*(this: LinuxOS): bool {.discardable.} =
        return true

when declared(newLinuxOSHook0):
    newLinuxOSHook0 = proc (): GenericOperatingSystem = newLinuxOS()

