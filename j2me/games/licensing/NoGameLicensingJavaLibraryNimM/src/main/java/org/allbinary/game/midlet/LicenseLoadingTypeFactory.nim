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
import org/allbinary/game/midlet/LicenseLoadingType as LicenseLoadingTypeModule
export LicenseLoadingTypeModule

type
    LicenseLoadingTypeFactory* = ref object of JObject
        INITIAL_LOADING*: LicenseLoadingType
        GAME_START*: LicenseLoadingType
        LOGIN*: LicenseLoadingType
        OTHER*: LicenseLoadingType

proc newLicenseLoadingTypeFactory*(): LicenseLoadingTypeFactory
proc getIntance*(t: typedesc[LicenseLoadingTypeFactory]): LicenseLoadingTypeFactory {.discardable.}

var LicenseLoadingTypeFactory_instanceValue: LicenseLoadingTypeFactory
var LicenseLoadingTypeFactory_instanceSet = false
proc instance*(t: typedesc[LicenseLoadingTypeFactory]): LicenseLoadingTypeFactory =
    if not LicenseLoadingTypeFactory_instanceSet:
        LicenseLoadingTypeFactory_instanceSet = true
        LicenseLoadingTypeFactory_instanceValue = newLicenseLoadingTypeFactory()
    LicenseLoadingTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLicenseLoadingTypeFactory(this: LicenseLoadingTypeFactory) =
    this.INITIAL_LOADING = newLicenseLoadingType("Initial Loading")
    this.GAME_START = newLicenseLoadingType("Game Start")
    this.LOGIN = newLicenseLoadingType("Login")
    this.OTHER = newLicenseLoadingType("Other/Usually The First Non Demo Level")
    discard

proc initLicenseLoadingTypeFactory*(this: LicenseLoadingTypeFactory) =
    this.initFieldsLicenseLoadingTypeFactory()

proc newLicenseLoadingTypeFactory*(): LicenseLoadingTypeFactory =
    result = LicenseLoadingTypeFactory()
    initLicenseLoadingTypeFactory(result)

proc getIntance*(t: typedesc[LicenseLoadingTypeFactory]): LicenseLoadingTypeFactory {.discardable.} =
        return LicenseLoadingTypeFactory.instance

