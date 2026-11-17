#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.hardware.components.interfaces

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface as HardwareComponentInterfaceModule
export HardwareComponentInterfaceModule

type
    NoHardwareComponent* = ref object of HardwareComponentInterface

proc newNoHardwareComponent*(): NoHardwareComponent
proc getInstance*(t: typedesc[NoHardwareComponent]): NoHardwareComponent {.discardable.}
method compareTo*(this: NoHardwareComponent, componentInterface: HardwareComponentInterface): bool {.discardable.}
method toString*(this: NoHardwareComponent): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var NoHardwareComponent_instanceValue: NoHardwareComponent
var NoHardwareComponent_instanceSet = false
proc instance*(t: typedesc[NoHardwareComponent]): NoHardwareComponent =
    if not NoHardwareComponent_instanceSet:
        NoHardwareComponent_instanceSet = true
        NoHardwareComponent_instanceValue = newNoHardwareComponent()
    NoHardwareComponent_instanceValue

proc initNoHardwareComponent*(this: NoHardwareComponent) =
    discard

proc newNoHardwareComponent*(): NoHardwareComponent =
    result = NoHardwareComponent()
    initNoHardwareComponent(result)

proc getInstance*(t: typedesc[NoHardwareComponent]): NoHardwareComponent {.discardable.} =
        return NoHardwareComponent.instance

method compareTo*(this: NoHardwareComponent, componentInterface: HardwareComponentInterface): bool {.discardable.} =
        if (jSame(this, componentInterface)):
            return true
        return false

method toString*(this: NoHardwareComponent): string {.discardable.} =
        return StringUtil.getInstance().NULL_STRING

