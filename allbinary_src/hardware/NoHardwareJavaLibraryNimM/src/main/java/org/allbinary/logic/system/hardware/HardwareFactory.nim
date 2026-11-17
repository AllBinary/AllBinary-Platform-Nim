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
import org/allbinary/logic/system/os/OperatingSystemInterface as OperatingSystemInterfaceModule
export OperatingSystemInterfaceModule
import org/allbinary/logic/system/hardware/HardwareInterface as HardwareInterfaceModule
export HardwareInterfaceModule

type
    HardwareFactory* = ref object of JObject
        SINGLETON*: HardwareInterface

proc newHardwareFactory*(): HardwareFactory
proc initHardwareFactory*(this: HardwareFactory)
proc getInstance*(t: typedesc[HardwareFactory]): HardwareFactory {.discardable.}
method getInstance*(this: HardwareFactory, os: OperatingSystemInterface): HardwareInterface {.base, discardable.}
import org/allbinary/logic/system/hardware/NoHardware as NoHardwareModule
export NoHardwareModule

var HardwareFactory_instanceValue: HardwareFactory
var HardwareFactory_instanceSet = false
proc instance*(t: typedesc[HardwareFactory]): HardwareFactory =
    if not HardwareFactory_instanceSet:
        HardwareFactory_instanceSet = true
        HardwareFactory_instanceValue = newHardwareFactory()
    HardwareFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsHardwareFactory(this: HardwareFactory) =
    this.SINGLETON = NoHardware.getInstance()
    discard

proc getInstance*(t: typedesc[HardwareFactory]): HardwareFactory {.discardable.} =
        return HardwareFactory.instance

proc initHardwareFactory*(this: HardwareFactory) =
        this.initFieldsHardwareFactory()
        discard

proc newHardwareFactory*(): HardwareFactory =
    result = HardwareFactory()
    initHardwareFactory(result)

method getInstance*(this: HardwareFactory, os: OperatingSystemInterface): HardwareInterface {.base, discardable.} =
        try:
            return this.SINGLETON
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e

