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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java

type
    LicenseLoadingType* = ref object of JObject

proc newLicenseLoadingType*(name: string): LicenseLoadingType
proc initLicenseLoadingType*(this: LicenseLoadingType, name: string)


proc initLicenseLoadingType*(this: LicenseLoadingType, name: string) =
        discard
        discard

proc newLicenseLoadingType*(name: string): LicenseLoadingType =
    result = LicenseLoadingType()
    initLicenseLoadingType(result, name)

