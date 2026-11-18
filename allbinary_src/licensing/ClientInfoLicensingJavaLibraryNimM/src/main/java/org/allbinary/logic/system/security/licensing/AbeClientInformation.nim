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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/ClientInformation as ClientInformationModule
export ClientInformationModule

# This is the information sent to the license server
type
    AbeClientInformation* = ref object of ClientInformation
        logUtil*: LogUtil

proc newAbeClientInformation*(name: string, version: string, specialName: string, shortName: string): AbeClientInformation
proc initAbeClientInformation*(this: AbeClientInformation, name: string, version: string, specialName: string, shortName: string)
method init*(this: AbeClientInformation)
import org/allbinary/business/init/LicenseInitInfo as LicenseInitInfoModule
export LicenseInitInfoModule
import org/allbinary/business/init/LicenseInitInfoUtil as LicenseInitInfoUtilModule
export LicenseInitInfoUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsAbeClientInformation(this: AbeClientInformation) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initAbeClientInformation*(this: AbeClientInformation, name: string, version: string, specialName: string, shortName: string) =
        initClientInformation(this, name, version, specialName, shortName)
        this.initFieldsAbeClientInformation()

proc newAbeClientInformation*(name: string, version: string, specialName: string, shortName: string): AbeClientInformation =
    result = AbeClientInformation()
    initAbeClientInformation(result, name, version, specialName, shortName)

method init*(this: AbeClientInformation) =
        try:
            this.setOperatingSystemInterface(OperatingSystemFactory.getInstance().getOperatingSystemInstance())
            let licenseInitInfo: LicenseInitInfo = LicenseInitInfoUtil.getInstance().read()
            this.setLicenseId(licenseInitInfo.getLicenseId())
            this.setLicenseServers(licenseInitInfo.getServerList())
            let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
            if stringValidationUtil.isEmpty(this.getLicenseId()):
                let NONE: string = "No License Id"
                this.setLicenseId(NONE)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.put(newStringMaker().append("Special Name: ").append(this.getSpecialName()).toString(), this, commonStrings.CONSTRUCTOR)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let logUtil: LogUtil = LogUtil.getInstance()
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)

when declared(newAbeClientInformationHook4):
    newAbeClientInformationHook4 = proc (name: string, version: string, specialName: string, shortName: string): ClientInformation = newAbeClientInformation(name, version, specialName, shortName)

