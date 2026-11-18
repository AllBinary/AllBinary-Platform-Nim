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
# package org.allbinary.business.init

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/business/init/LicenseInitInfo as LicenseInitInfoModule
export LicenseInitInfoModule

type
    LicenseInitInfoUtil* = ref object of JObject
        INITFILENAME*: string
        ABOUT*: string
        PRIVACY_POLICY*: string
        OFFICIAL_ALLBINARY_SERVICES_SERVER*: string

proc newLicenseInitInfoUtil*(): LicenseInitInfoUtil
proc initLicenseInitInfoUtil*(this: LicenseInitInfoUtil)
proc getInstance*(t: typedesc[LicenseInitInfoUtil]): LicenseInitInfoUtil {.discardable.}
method setFilePath*(this: LicenseInitInfoUtil, filePath: string) {.base.}
method write*(this: LicenseInitInfoUtil, initData: LicenseInitInfo) {.base.}
method read*(this: LicenseInitInfoUtil): LicenseInitInfo {.base, discardable.}
method readAgain*(this: LicenseInitInfoUtil, initializeCounter: int32): LicenseInitInfo {.base, discardable.}

var LicenseInitInfoUtil_instanceValue: LicenseInitInfoUtil
var LicenseInitInfoUtil_instanceSet = false
proc instance*(t: typedesc[LicenseInitInfoUtil]): LicenseInitInfoUtil =
    if not LicenseInitInfoUtil_instanceSet:
        LicenseInitInfoUtil_instanceSet = true
        LicenseInitInfoUtil_instanceValue = newLicenseInitInfoUtil()
    LicenseInitInfoUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLicenseInitInfoUtil(this: LicenseInitInfoUtil) =
    this.INITFILENAME = "licenseinitdata.dat"
    this.ABOUT = "about"
    this.PRIVACY_POLICY = "privacy_policy"
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php"
    discard

proc getInstance*(t: typedesc[LicenseInitInfoUtil]): LicenseInitInfoUtil {.discardable.} =
        return LicenseInitInfoUtil.instance

method setFilePath*(this: LicenseInitInfoUtil, filePath: string) {.base.} =
        discard

proc initLicenseInitInfoUtil*(this: LicenseInitInfoUtil) =
        this.initFieldsLicenseInitInfoUtil()
        discard

proc newLicenseInitInfoUtil*(): LicenseInitInfoUtil =
    result = LicenseInitInfoUtil()
    initLicenseInitInfoUtil(result)

method write*(this: LicenseInitInfoUtil, initData: LicenseInitInfo) {.base.} =
        discard

method read*(this: LicenseInitInfoUtil): LicenseInitInfo {.base, discardable.} =
        return this.readAgain(0)

method readAgain*(this: LicenseInitInfoUtil, initializeCounter: int32): LicenseInitInfo {.base, discardable.} =
        var licenseInitInfo: LicenseInitInfo = newLicenseInitInfo()
        licenseInitInfo.clearServers()
        licenseInitInfo.addServer(this.OFFICIAL_ALLBINARY_SERVICES_SERVER)
        return licenseInitInfo

