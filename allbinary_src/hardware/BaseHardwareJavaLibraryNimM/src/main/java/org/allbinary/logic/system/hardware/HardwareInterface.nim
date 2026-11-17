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

type
    HardwareInterface* = ref object of JObject


method getComponent*(this: HardwareInterface, index: int32): HardwareComponentInterface {.base, discardable.} =
        raise newJException("AbstractMethodError", "getComponent")

method toString*(this: HardwareInterface): string {.discardable.} =
        raise newJException("AbstractMethodError", "toString")

method compareTo*(this: HardwareInterface, hardwareInterface: HardwareInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "compareTo")

method difference*(this: HardwareInterface, hardwareInterface: HardwareInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "difference")

