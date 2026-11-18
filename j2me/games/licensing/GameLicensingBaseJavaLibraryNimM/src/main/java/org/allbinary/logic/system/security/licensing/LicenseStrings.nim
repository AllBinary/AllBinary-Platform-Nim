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
    LicenseStrings* = ref object of JObject
        LOCKED*: string

proc newLicenseStrings*(): LicenseStrings
proc getInstance*(t: typedesc[LicenseStrings]): LicenseStrings {.discardable.}

var LicenseStrings_instanceValue: LicenseStrings
var LicenseStrings_instanceSet = false
proc instance*(t: typedesc[LicenseStrings]): LicenseStrings =
    if not LicenseStrings_instanceSet:
        LicenseStrings_instanceSet = true
        LicenseStrings_instanceValue = newLicenseStrings()
    LicenseStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLicenseStrings(this: LicenseStrings) =
    this.LOCKED = "Demo Locked Feature"
    discard

proc initLicenseStrings*(this: LicenseStrings) =
    this.initFieldsLicenseStrings()

proc newLicenseStrings*(): LicenseStrings =
    result = LicenseStrings()
    initLicenseStrings(result)

proc getInstance*(t: typedesc[LicenseStrings]): LicenseStrings {.discardable.} =
        return LicenseStrings.instance

