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
# package org.allbinary.logic.system.hardware.components

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/hardware/components/Component as ComponentModule
export ComponentModule

type
    ComponentFactory* = ref object of JObject
        VGA*: Component
        IDE*: Component
        SCSI*: Component
        BRIDGE*: Component
        ETHERNET*: Component
        USB*: Component
        MULTIMEDIA*: Component
        PCI*: Component
        RAID*: Component
        SMBUS*: Component
        PIC*: Component
        Class*: Component
        UNKNOWN*: Component

proc newComponentFactory*(): ComponentFactory
proc getInstance*(t: typedesc[ComponentFactory]): ComponentFactory {.discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var ComponentFactory_instanceValue: ComponentFactory
var ComponentFactory_instanceSet = false
proc instance*(t: typedesc[ComponentFactory]): ComponentFactory =
    if not ComponentFactory_instanceSet:
        ComponentFactory_instanceSet = true
        ComponentFactory_instanceValue = newComponentFactory()
    ComponentFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsComponentFactory(this: ComponentFactory) =
    this.VGA = newComponent("VGA")
    this.IDE = newComponent("IDE")
    this.SCSI = newComponent("SCSI")
    this.BRIDGE = newComponent("bridge")
    this.ETHERNET = newComponent("Ethernet")
    this.USB = newComponent("USB")
    this.MULTIMEDIA = newComponent("Multimedia")
    this.PCI = newComponent("PCI")
    this.RAID = newComponent("RAID")
    this.SMBUS = newComponent("SMBus")
    this.PIC = newComponent("PIC")
    this.Class = newComponent("Class")
    this.UNKNOWN = newComponent(CommonStrings.getInstance().UNKNOWN)
    discard

proc initComponentFactory*(this: ComponentFactory) =
    this.initFieldsComponentFactory()

proc newComponentFactory*(): ComponentFactory =
    result = ComponentFactory()
    initComponentFactory(result)

proc getInstance*(t: typedesc[ComponentFactory]): ComponentFactory {.discardable.} =
        return ComponentFactory.instance

