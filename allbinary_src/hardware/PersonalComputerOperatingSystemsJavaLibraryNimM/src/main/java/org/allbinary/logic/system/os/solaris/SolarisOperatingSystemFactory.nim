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
# package org.allbinary.logic.system.os.solaris

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    SolarisOperatingSystemFactory* = ref object of JObject
        logUtil*: LogUtil

proc newSolarisOperatingSystemFactory*(): SolarisOperatingSystemFactory
proc initSolarisOperatingSystemFactory*(this: SolarisOperatingSystemFactory)
proc getInstance*(t: typedesc[SolarisOperatingSystemFactory]): SolarisOperatingSystemFactory {.discardable.}
method getOperatingSystemInstance*(this: SolarisOperatingSystemFactory): GenericOperatingSystem {.base, discardable.}
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
import org/allbinary/logic/system/os/solaris/SolarisOS as SolarisOSModule
export SolarisOSModule

var SolarisOperatingSystemFactory_instanceValue: SolarisOperatingSystemFactory
var SolarisOperatingSystemFactory_instanceSet = false
proc instance*(t: typedesc[SolarisOperatingSystemFactory]): SolarisOperatingSystemFactory =
    if not SolarisOperatingSystemFactory_instanceSet:
        SolarisOperatingSystemFactory_instanceSet = true
        SolarisOperatingSystemFactory_instanceValue = newSolarisOperatingSystemFactory()
    SolarisOperatingSystemFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSolarisOperatingSystemFactory(this: SolarisOperatingSystemFactory) =
    this.logUtil = LogUtil.getInstance()
    discard

proc getInstance*(t: typedesc[SolarisOperatingSystemFactory]): SolarisOperatingSystemFactory {.discardable.} =
        return SolarisOperatingSystemFactory.instance

proc initSolarisOperatingSystemFactory*(this: SolarisOperatingSystemFactory) =
        this.initFieldsSolarisOperatingSystemFactory()
        discard

proc newSolarisOperatingSystemFactory*(): SolarisOperatingSystemFactory =
    result = SolarisOperatingSystemFactory()
    initSolarisOperatingSystemFactory(result)

method getOperatingSystemInstance*(this: SolarisOperatingSystemFactory): GenericOperatingSystem {.base, discardable.} =
        try:
            let operatingSystems: OperatingSystems = OperatingSystems.getInstance()
            let osName: string = SystemProperties.getInstance().getName()
            var operatingSystemInterface: GenericOperatingSystem = nil
            if jCompareTo(osName, operatingSystems.SOLARIS) == 0:
                operatingSystemInterface = newSolarisOS()
            else:
                if operatingSystems.isUnknownSpecificOSAllowed():
                    operatingSystemInterface = newSolarisOS()
                else:
                    raise newJException("Exception", jstr("Specific Solaris OS Not Supported: ") & jstr(osName))
            return operatingSystemInterface
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NoOperatingSystem.NO_OPERATING_SYSTEMStatic

