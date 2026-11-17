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
# package org.allbinary.logic.system.hardware.windows

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/hardware/HardwareInterface as HardwareInterfaceModule
export HardwareInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface as BridgeInterfaceModule
export BridgeInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/CpuInterface as CpuInterfaceModule
export CpuInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface as EthernetInterfaceModule
export EthernetInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface as FireWireInterfaceModule
export FireWireInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface as HardDriveControllerInterfaceModule
export HardDriveControllerInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface as HardDriveInterfaceModule
export HardDriveInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface as HardwareComponentInterfaceModule
export HardwareComponentInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface as MachineAccessControlAddressInterfaceModule
export MachineAccessControlAddressInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/MediaInterface as MediaInterfaceModule
export MediaInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface as MonitorInterfaceModule
export MonitorInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/UsbInterface as UsbInterfaceModule
export UsbInterfaceModule
import org/allbinary/logic/system/hardware/components/interfaces/VideoInterface as VideoInterfaceModule
export VideoInterfaceModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    WindowsHardware* = ref object of HardwareInterface

proc newWindowsHardware*(): WindowsHardware
proc initWindowsHardware*(this: WindowsHardware)
method getMultimedia*(this: WindowsHardware, index: int32): MediaInterface {.base, discardable.}
method getBridge*(this: WindowsHardware, index: int32): BridgeInterface {.base, discardable.}
method getCpu*(this: WindowsHardware, index: int32): CpuInterface {.base, discardable.}
method getEthernet*(this: WindowsHardware, index: int32): EthernetInterface {.base, discardable.}
method getFireWire*(this: WindowsHardware, index: int32): FireWireInterface {.base, discardable.}
method getHardDriveController*(this: WindowsHardware, index: int32): HardDriveControllerInterface {.base, discardable.}
method getHardDrive*(this: WindowsHardware, index: int32): HardDriveInterface {.base, discardable.}
method getMachineAccessControlAddress*(this: WindowsHardware, index: int32): MachineAccessControlAddressInterface {.base, discardable.}
method getMonitor*(this: WindowsHardware, index: int32): MonitorInterface {.base, discardable.}
method getUsb*(this: WindowsHardware, index: int32): UsbInterface {.base, discardable.}
method getVideo*(this: WindowsHardware, index: int32): VideoInterface {.base, discardable.}
method getComponent*(this: WindowsHardware, index: int32): HardwareComponentInterface {.discardable.}
method toString*(this: WindowsHardware): string {.discardable.}
method compareTo*(this: WindowsHardware, hardwareInterface: HardwareInterface): bool {.discardable.}
method difference*(this: WindowsHardware, hardwareInterface: HardwareInterface): ABHashtable {.discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initWindowsHardware*(this: WindowsHardware) =
        discard
        discard

proc newWindowsHardware*(): WindowsHardware =
    result = WindowsHardware()
    initWindowsHardware(result)

method getMultimedia*(this: WindowsHardware, index: int32): MediaInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getBridge*(this: WindowsHardware, index: int32): BridgeInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getCpu*(this: WindowsHardware, index: int32): CpuInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getEthernet*(this: WindowsHardware, index: int32): EthernetInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getFireWire*(this: WindowsHardware, index: int32): FireWireInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getHardDriveController*(this: WindowsHardware, index: int32): HardDriveControllerInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getHardDrive*(this: WindowsHardware, index: int32): HardDriveInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getMachineAccessControlAddress*(this: WindowsHardware, index: int32): MachineAccessControlAddressInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getMonitor*(this: WindowsHardware, index: int32): MonitorInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getUsb*(this: WindowsHardware, index: int32): UsbInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getVideo*(this: WindowsHardware, index: int32): VideoInterface {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getComponent*(this: WindowsHardware, index: int32): HardwareComponentInterface {.discardable.} =
        raise newJException("RuntimeException", "")

method toString*(this: WindowsHardware): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method compareTo*(this: WindowsHardware, hardwareInterface: HardwareInterface): bool {.discardable.} =
        return true

method difference*(this: WindowsHardware, hardwareInterface: HardwareInterface): ABHashtable {.discardable.} =
        return StdUtil.getInstance().NULL_TABLE

