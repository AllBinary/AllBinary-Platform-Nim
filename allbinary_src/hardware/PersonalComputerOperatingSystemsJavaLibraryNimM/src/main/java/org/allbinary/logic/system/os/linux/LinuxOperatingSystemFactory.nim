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
# package org.allbinary.logic.system.os.linux

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    LinuxOperatingSystemFactory* = ref object of JObject
        logUtil*: LogUtil

proc newLinuxOperatingSystemFactory*(): LinuxOperatingSystemFactory
proc initLinuxOperatingSystemFactory*(this: LinuxOperatingSystemFactory)
proc getInstance*(t: typedesc[LinuxOperatingSystemFactory]): LinuxOperatingSystemFactory {.discardable.}
method getOperatingSystemInstance*(this: LinuxOperatingSystemFactory): GenericOperatingSystem {.base, discardable.}
import org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory as LogConfigTypeFactoryModule
export LogConfigTypeFactoryModule
import org/allbinary/logic/communication/log/config/type/LogConfigTypes as LogConfigTypesModule
export LogConfigTypesModule
import org/allbinary/logic/system/os/NoOperatingSystem as NoOperatingSystemModule
export NoOperatingSystemModule
import org/allbinary/logic/system/os/OperatingSystems as OperatingSystemsModule
export OperatingSystemsModule
import org/allbinary/logic/system/os/SystemProperties as SystemPropertiesModule
export SystemPropertiesModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/system/os/linux/LinuxOS as LinuxOSModule
export LinuxOSModule

var LinuxOperatingSystemFactory_instanceValue: LinuxOperatingSystemFactory
var LinuxOperatingSystemFactory_instanceSet = false
proc instance*(t: typedesc[LinuxOperatingSystemFactory]): LinuxOperatingSystemFactory =
    if not LinuxOperatingSystemFactory_instanceSet:
        LinuxOperatingSystemFactory_instanceSet = true
        LinuxOperatingSystemFactory_instanceValue = newLinuxOperatingSystemFactory()
    LinuxOperatingSystemFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLinuxOperatingSystemFactory(this: LinuxOperatingSystemFactory) =
    this.logUtil = LogUtil.getInstance()
    discard

proc getInstance*(t: typedesc[LinuxOperatingSystemFactory]): LinuxOperatingSystemFactory {.discardable.} =
        return LinuxOperatingSystemFactory.instance

proc initLinuxOperatingSystemFactory*(this: LinuxOperatingSystemFactory) =
        this.initFieldsLinuxOperatingSystemFactory()
        discard

proc newLinuxOperatingSystemFactory*(): LinuxOperatingSystemFactory =
    result = LinuxOperatingSystemFactory()
    initLinuxOperatingSystemFactory(result)

method getOperatingSystemInstance*(this: LinuxOperatingSystemFactory): GenericOperatingSystem {.base, discardable.} =
        try:
            let operatingSystems: OperatingSystems = OperatingSystems.getInstance()
            let osName: string = SystemProperties.getInstance().getName()
            var operatingSystemInterface: GenericOperatingSystem = nil
            if jCompareTo(osName, operatingSystems.LINUX) == 0:
                operatingSystemInterface = newLinuxOS()
            else:
                if operatingSystems.isUnknownSpecificOSAllowed():
                    operatingSystemInterface = newLinuxOS()
                else:
                    raise newJException("Exception", jstr("Specific Linux OS Not Supported: ") & jstr(osName))
            return operatingSystemInterface
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NoOperatingSystem.NO_OPERATING_SYSTEMStatic

