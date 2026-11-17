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
# package org.allbinary.logic.system.os.windows

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    WindowsOperatingSystemFactory* = ref object of JObject
        logUtil*: LogUtil

proc newWindowsOperatingSystemFactory*(): WindowsOperatingSystemFactory
proc initWindowsOperatingSystemFactory*(this: WindowsOperatingSystemFactory)
proc getInstance*(t: typedesc[WindowsOperatingSystemFactory]): WindowsOperatingSystemFactory {.discardable.}
method getOperatingSystemInstance*(this: WindowsOperatingSystemFactory): GenericOperatingSystem {.base, discardable.}
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
import org/allbinary/logic/system/os/windows/WindowsOS as WindowsOSModule
export WindowsOSModule

var WindowsOperatingSystemFactory_instanceValue: WindowsOperatingSystemFactory
var WindowsOperatingSystemFactory_instanceSet = false
proc instance*(t: typedesc[WindowsOperatingSystemFactory]): WindowsOperatingSystemFactory =
    if not WindowsOperatingSystemFactory_instanceSet:
        WindowsOperatingSystemFactory_instanceSet = true
        WindowsOperatingSystemFactory_instanceValue = newWindowsOperatingSystemFactory()
    WindowsOperatingSystemFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsWindowsOperatingSystemFactory(this: WindowsOperatingSystemFactory) =
    this.logUtil = LogUtil.getInstance()
    discard

proc getInstance*(t: typedesc[WindowsOperatingSystemFactory]): WindowsOperatingSystemFactory {.discardable.} =
        return WindowsOperatingSystemFactory.instance

proc initWindowsOperatingSystemFactory*(this: WindowsOperatingSystemFactory) =
        this.initFieldsWindowsOperatingSystemFactory()
        discard

proc newWindowsOperatingSystemFactory*(): WindowsOperatingSystemFactory =
    result = WindowsOperatingSystemFactory()
    initWindowsOperatingSystemFactory(result)

method getOperatingSystemInstance*(this: WindowsOperatingSystemFactory): GenericOperatingSystem {.base, discardable.} =
        try:
            let operatingSystems: OperatingSystems = OperatingSystems.getInstance()
            let osName: string = SystemProperties.getInstance().getName()
            var operatingSystemInterface: GenericOperatingSystem = nil
            if jCompareTo(osName, operatingSystems.WINDOWS_NT) == 0:
                operatingSystemInterface = newWindowsOS()
            elif jCompareTo(osName, operatingSystems.WINDOWS_10) == 0:
                operatingSystemInterface = newWindowsOS()
            elif jCompareTo(osName, operatingSystems.WINDOWS_11) == 0:
                operatingSystemInterface = newWindowsOS()
            elif jCompareTo(osName, operatingSystems.WINDOWS2000) == 0:
                operatingSystemInterface = newWindowsOS()
            elif jCompareTo(osName, operatingSystems.WINDOWS_XP) == 0:
                operatingSystemInterface = newWindowsOS()
            elif jCompareTo(osName, operatingSystems.WINDOWS_VISTA) == 0:
                operatingSystemInterface = newWindowsOS()
            else:
                if operatingSystems.isUnknownSpecificOSAllowed():
                    operatingSystemInterface = newWindowsOS()
                else:
                    raise newJException("Exception", jstr("Specific Windows OS Not Supported: ") & jstr(osName))
            return operatingSystemInterface
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            if LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR):
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NoOperatingSystem.NO_OPERATING_SYSTEMStatic

