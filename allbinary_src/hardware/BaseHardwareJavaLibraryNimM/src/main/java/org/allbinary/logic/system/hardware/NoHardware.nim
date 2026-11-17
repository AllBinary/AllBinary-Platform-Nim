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
import org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface as HardwareComponentInterfaceModule
export HardwareComponentInterfaceModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/logic/system/hardware/HardwareInterface as HardwareInterfaceModule
export HardwareInterfaceModule

type
    NoHardware* = ref object of HardwareInterface

proc newNoHardware*(): NoHardware
proc getInstance*(t: typedesc[NoHardware]): HardwareInterface {.discardable.}
method getComponent*(this: NoHardware, index: int32): HardwareComponentInterface {.discardable.}
method toString*(this: NoHardware): string {.discardable.}
method compareTo*(this: NoHardware, hardwareInterface: HardwareInterface): bool {.discardable.}
method difference*(this: NoHardware, hardwareInterface: HardwareInterface): ABHashtable {.discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent as NoHardwareComponentModule
export NoHardwareComponentModule

var NoHardware_instanceValue: HardwareInterface
var NoHardware_instanceSet = false
proc instance*(t: typedesc[NoHardware]): HardwareInterface =
    if not NoHardware_instanceSet:
        NoHardware_instanceSet = true
        NoHardware_instanceValue = newNoHardware()
    NoHardware_instanceValue

proc initNoHardware*(this: NoHardware) =
    discard

proc newNoHardware*(): NoHardware =
    result = NoHardware()
    initNoHardware(result)

proc getInstance*(t: typedesc[NoHardware]): HardwareInterface {.discardable.} =
        return NoHardware.instance

method getComponent*(this: NoHardware, index: int32): HardwareComponentInterface {.discardable.} =
        return NoHardwareComponent.getInstance()

method toString*(this: NoHardware): string {.discardable.} =
        return "No Hardware"

method compareTo*(this: NoHardware, hardwareInterface: HardwareInterface): bool {.discardable.} =
        return true

method difference*(this: NoHardware, hardwareInterface: HardwareInterface): ABHashtable {.discardable.} =
        return StdUtil.getInstance().NULL_TABLE

