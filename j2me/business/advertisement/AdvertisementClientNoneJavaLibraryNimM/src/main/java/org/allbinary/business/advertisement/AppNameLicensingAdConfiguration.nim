# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/business/advertisement/AdConfiguration as AdConfigurationModule
export AdConfigurationModule

type
    AppNameLicensingAdConfiguration* = ref object of AdConfiguration

proc newAppNameLicensingAdConfiguration*(): AppNameLicensingAdConfiguration
proc initAppNameLicensingAdConfiguration*(this: AppNameLicensingAdConfiguration)
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initAppNameLicensingAdConfiguration*(this: AppNameLicensingAdConfiguration) =
        initAdConfiguration(this, newJArrayFromRefs[JObject](StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING))

proc newAppNameLicensingAdConfiguration*(): AppNameLicensingAdConfiguration =
    result = AppNameLicensingAdConfiguration()
    initAppNameLicensingAdConfiguration(result)

when declared(newAppNameLicensingAdConfigurationHook0):
    newAppNameLicensingAdConfigurationHook0 = proc (): AdConfiguration = newAppNameLicensingAdConfiguration()

