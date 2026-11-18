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

type
    AbeClientInformationData* = ref object of JObject
        KEY*: string
        NAME*: string
        VERSION*: string
        SPECIALNAME*: string
        LICENSEID*: string
        LICENSE_TYPE*: string
        PREVIOUSLICENSEID*: string
        OSNAME*: string
        OSARCH*: string
        OSVERSION*: string
        OS*: string
        HARDWARE*: string
        LICENSESERVERS*: string
        NEWLICENSE*: string
        ISNEW*: string
        SPECIAL*: string

proc newAbeClientInformationData*(): AbeClientInformationData
proc initAbeClientInformationData*(this: AbeClientInformationData)
proc getInstance*(t: typedesc[AbeClientInformationData]): AbeClientInformationData {.discardable.}

var AbeClientInformationData_instanceValue: AbeClientInformationData
var AbeClientInformationData_instanceSet = false
proc instance*(t: typedesc[AbeClientInformationData]): AbeClientInformationData =
    if not AbeClientInformationData_instanceSet:
        AbeClientInformationData_instanceSet = true
        AbeClientInformationData_instanceValue = newAbeClientInformationData()
    AbeClientInformationData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAbeClientInformationData(this: AbeClientInformationData) =
    this.KEY = "KEY"
    this.NAME = "NAME"
    this.VERSION = "VERSION"
    this.SPECIALNAME = "SPECIALNAME"
    this.LICENSEID = "LICENSEID"
    this.LICENSE_TYPE = "LICENSETYPE"
    this.PREVIOUSLICENSEID = "PREVIOUSLICENSEID"
    this.OSNAME = "OSNAME"
    this.OSARCH = "OSARCH"
    this.OSVERSION = "OSVERSION"
    this.OS = "OS"
    this.HARDWARE = "HARDWARE"
    this.LICENSESERVERS = "LICENSESERVERS"
    this.NEWLICENSE = "NEWLICENSE"
    this.ISNEW = "ISNEW"
    this.SPECIAL = "SPECIAL"
    discard

proc getInstance*(t: typedesc[AbeClientInformationData]): AbeClientInformationData {.discardable.} =
        return AbeClientInformationData.instance

proc initAbeClientInformationData*(this: AbeClientInformationData) =
        this.initFieldsAbeClientInformationData()
        discard

proc newAbeClientInformationData*(): AbeClientInformationData =
    result = AbeClientInformationData()
    initAbeClientInformationData(result)

