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
# package org.allbinary.logic.system.hardware

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/logic/system/hardware/HardwareInterface as HardwareInterfaceModule
export HardwareInterfaceModule

type
    HardwareFactory* = ref object of JObject

proc newHardwareFactory*(): HardwareFactory
proc initHardwareFactory*(this: HardwareFactory)
proc getInstance*(t: typedesc[HardwareFactory]): HardwareFactory {.discardable.}
proc getInstance*(t: typedesc[HardwareFactory], os: GenericOperatingSystem): HardwareInterface {.discardable.}
import org/allbinary/logic/system/os/OperatingSystems as OperatingSystemsModule
export OperatingSystemsModule
import org/allbinary/logic/system/hardware/linux/LinuxHardware as LinuxHardwareModule
export LinuxHardwareModule
import org/allbinary/logic/system/hardware/windows/WindowsHardware as WindowsHardwareModule
export WindowsHardwareModule

var HardwareFactory_instanceValue: HardwareFactory
var HardwareFactory_instanceSet = false
proc instance*(t: typedesc[HardwareFactory]): HardwareFactory =
    if not HardwareFactory_instanceSet:
        HardwareFactory_instanceSet = true
        HardwareFactory_instanceValue = newHardwareFactory()
    HardwareFactory_instanceValue

proc getInstance*(t: typedesc[HardwareFactory]): HardwareFactory {.discardable.} =
        return HardwareFactory.instance

proc initHardwareFactory*(this: HardwareFactory) =
        discard
        discard

proc newHardwareFactory*(): HardwareFactory =
    result = HardwareFactory()
    initHardwareFactory(result)

proc getInstance*(t: typedesc[HardwareFactory], os: GenericOperatingSystem): HardwareInterface {.discardable.} =
        try:
            let operatingSystems: OperatingSystems = OperatingSystems.getInstance()
            if os.getName().compareTo(operatingSystems.LINUX) == 0:
                return HardwareInterface(newLinuxHardware())
            elif os.getName().indexOf(operatingSystems.WINDOWS) >= 0:
                return HardwareInterface(newWindowsHardware())
            raise newJException("Exception", jstr("No Hardware Imp for: ") & jstr(os.getName()))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e

