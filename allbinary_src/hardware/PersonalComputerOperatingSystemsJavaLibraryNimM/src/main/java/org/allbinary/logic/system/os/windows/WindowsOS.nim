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
# package org.allbinary.logic.system.os.windows

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    WindowsOS* = ref object of GenericOperatingSystem

proc newWindowsOS*(): WindowsOS
proc initWindowsOS*(this: WindowsOS)
method isAutoHide*(this: WindowsOS): bool {.discardable.}


proc initWindowsOS*(this: WindowsOS) =
        initGenericOperatingSystem(this)
        this.scalable = true

proc newWindowsOS*(): WindowsOS =
    result = WindowsOS()
    initWindowsOS(result)

method isAutoHide*(this: WindowsOS): bool {.discardable.} =
        return true

when declared(newWindowsOSHook0):
    newWindowsOSHook0 = proc (): GenericOperatingSystem = newWindowsOS()

