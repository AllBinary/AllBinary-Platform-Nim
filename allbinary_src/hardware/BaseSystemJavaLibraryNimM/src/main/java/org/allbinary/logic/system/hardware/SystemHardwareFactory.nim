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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/system/hardware/HardwareInterface as HardwareInterfaceModule
export HardwareInterfaceModule

type
    SystemHardwareFactory* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        hardwareInterface*: HardwareInterface

proc newSystemHardwareFactory*(): SystemHardwareFactory
proc initSystemHardwareFactory*(this: SystemHardwareFactory)
proc getInstance*(t: typedesc[SystemHardwareFactory]): SystemHardwareFactory {.discardable.}
method getInstance*(this: SystemHardwareFactory, operatingSystemInterface: GenericOperatingSystem): HardwareInterface {.base, discardable.}
proc static_toString*(t: typedesc[SystemHardwareFactory]): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/system/hardware/NoHardware as NoHardwareModule
export NoHardwareModule
import org/allbinary/logic/system/hardware/HardwareFactory as HardwareFactoryModule
export HardwareFactoryModule

var SystemHardwareFactory_instanceValue: SystemHardwareFactory
var SystemHardwareFactory_instanceSet = false
proc instance*(t: typedesc[SystemHardwareFactory]): SystemHardwareFactory =
    if not SystemHardwareFactory_instanceSet:
        SystemHardwareFactory_instanceSet = true
        SystemHardwareFactory_instanceValue = newSystemHardwareFactory()
    SystemHardwareFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSystemHardwareFactory(this: SystemHardwareFactory) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.hardwareInterface = NoHardware.getInstance()
    discard

proc getInstance*(t: typedesc[SystemHardwareFactory]): SystemHardwareFactory {.discardable.} =
        return SystemHardwareFactory.instance

proc initSystemHardwareFactory*(this: SystemHardwareFactory) =
        this.initFieldsSystemHardwareFactory()
        discard

proc newSystemHardwareFactory*(): SystemHardwareFactory =
    result = SystemHardwareFactory()
    initSystemHardwareFactory(result)

method getInstance*(this: SystemHardwareFactory, operatingSystemInterface: GenericOperatingSystem): HardwareInterface {.base, discardable.} =
        try:
            if this.hardwareInterface == NoHardware.getInstance():
                this.hardwareInterface = HardwareFactory.getInstance().getInstance(operatingSystemInterface)
            this.logUtil.putF("Found Hardware", this, this.commonStrings.CONSTRUCTOR)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e)
        return this.hardwareInterface

proc static_toString*(t: typedesc[SystemHardwareFactory]): string {.discardable.} =
        let systemHardwareFactory: SystemHardwareFactory = SystemHardwareFactory.getInstance()
        let osBuffer: StringMaker = newStringMaker()
        osBuffer.append("Hardware Info: \n")
        if (not jIsNil(systemHardwareFactory.hardwareInterface)):
            osBuffer.append(systemHardwareFactory.hardwareInterface.toString())
        else:
            osBuffer.append(StringUtil.getInstance().NULL_STRING)
        return osBuffer.toString()

