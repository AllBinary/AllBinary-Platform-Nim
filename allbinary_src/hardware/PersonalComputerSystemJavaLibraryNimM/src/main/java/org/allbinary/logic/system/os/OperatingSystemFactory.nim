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
# package org.allbinary.logic.system.os

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    OperatingSystemFactory* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        genericOperatingSystem*: GenericOperatingSystem
        hasDetected*: bool

proc newOperatingSystemFactory*(): OperatingSystemFactory
proc initOperatingSystemFactory*(this: OperatingSystemFactory)
proc getInstance*(t: typedesc[OperatingSystemFactory]): OperatingSystemFactory {.discardable.}
method getOperatingSystemInstance*(this: OperatingSystemFactory): GenericOperatingSystem {.base, discardable.}
import org/allbinary/logic/communication/log/Log as LogModule
export LogModule
import org/allbinary/logic/communication/log/LogFactory as LogFactoryModule
export LogFactoryModule
import org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory as LogConfigTypeFactoryModule
export LogConfigTypeFactoryModule
import org/allbinary/logic/communication/log/config/type/LogConfigTypes as LogConfigTypesModule
export LogConfigTypesModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory as LinuxOperatingSystemFactoryModule
export LinuxOperatingSystemFactoryModule
import org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory as SolarisOperatingSystemFactoryModule
export SolarisOperatingSystemFactoryModule
import org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory as WindowsOperatingSystemFactoryModule
export WindowsOperatingSystemFactoryModule
import org/allbinary/logic/system/os/NoOperatingSystem as NoOperatingSystemModule
export NoOperatingSystemModule
import org/allbinary/logic/system/os/OperatingSystems as OperatingSystemsModule
export OperatingSystemsModule
import org/allbinary/logic/system/os/SystemProperties as SystemPropertiesModule
export SystemPropertiesModule

var OperatingSystemFactory_instanceValue: OperatingSystemFactory
var OperatingSystemFactory_instanceSet = false
proc instance*(t: typedesc[OperatingSystemFactory]): OperatingSystemFactory =
    if not OperatingSystemFactory_instanceSet:
        OperatingSystemFactory_instanceSet = true
        OperatingSystemFactory_instanceValue = newOperatingSystemFactory()
    OperatingSystemFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOperatingSystemFactory(this: OperatingSystemFactory) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEMStatic
    this.hasDetected = false
    discard

proc getInstance*(t: typedesc[OperatingSystemFactory]): OperatingSystemFactory {.discardable.} =
        return OperatingSystemFactory.instance

proc initOperatingSystemFactory*(this: OperatingSystemFactory) =
        this.initFieldsOperatingSystemFactory()
        discard

proc newOperatingSystemFactory*(): OperatingSystemFactory =
    result = OperatingSystemFactory()
    initOperatingSystemFactory(result)

method getOperatingSystemInstance*(this: OperatingSystemFactory): GenericOperatingSystem {.base, discardable.} =
        try:
            let operatingSystems: OperatingSystems = OperatingSystems.getInstance()
            let systemProperties: SystemProperties = SystemProperties.getInstance()
            let osName: string = systemProperties.getName()
            let osArch: string = systemProperties.getArch()
            let osVersion: string = systemProperties.getVersion()
            if (not this.hasDetected):
                this.logUtil.putF(jstr("osName: ") & jstr(osName), this, this.commonStrings.GET_INSTANCE)
                this.hasDetected = true
                if jIndexOf(osName, operatingSystems.LINUX) >= 0:
                    if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                        this.logUtil.putF("Found a Linux OS", this, this.commonStrings.GET_INSTANCE)
                    this.genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                elif jIndexOf(osName, operatingSystems.WINDOWS) >= 0:
                    if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                        this.logUtil.putF("Found a Windows OS", this, this.commonStrings.GET_INSTANCE)
                    this.genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                elif jIndexOf(osName, operatingSystems.SOLARIS) >= 0:
                    if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                        this.logUtil.putF("Found a Solaris OS", this, this.commonStrings.GET_INSTANCE)
                    this.genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                else:
                    raise newJException("Exception", newStringMaker().append("OS Not Supported: ").append(osName).toString())
                var log: Log = LogFactory.getInstanceF(newStringMaker().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString(this.genericOperatingSystem)).toString(), this, this.commonStrings.GET_INSTANCE)
                echo jstr(log.toString())
                this.logUtil.putL(log)
            return this.genericOperatingSystem
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_INSTANCE, e)
            return NoOperatingSystem.NO_OPERATING_SYSTEMStatic

