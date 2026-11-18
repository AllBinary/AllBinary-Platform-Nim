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
    LicenseLevelUtil* = ref object of JObject

proc newLicenseLevelUtil*(): LicenseLevelUtil
proc getInstance*(t: typedesc[LicenseLevelUtil]): LicenseLevelUtil {.discardable.}
method getMaxLevel*(this: LicenseLevelUtil, maxLevel: int32, demoLevel: int32): int32 {.base, discardable.}

var LicenseLevelUtil_instanceValue: LicenseLevelUtil
var LicenseLevelUtil_instanceSet = false
proc instance*(t: typedesc[LicenseLevelUtil]): LicenseLevelUtil =
    if not LicenseLevelUtil_instanceSet:
        LicenseLevelUtil_instanceSet = true
        LicenseLevelUtil_instanceValue = newLicenseLevelUtil()
    LicenseLevelUtil_instanceValue

proc initLicenseLevelUtil*(this: LicenseLevelUtil) =
    discard

proc newLicenseLevelUtil*(): LicenseLevelUtil =
    result = LicenseLevelUtil()
    initLicenseLevelUtil(result)

proc getInstance*(t: typedesc[LicenseLevelUtil]): LicenseLevelUtil {.discardable.} =
        return LicenseLevelUtil.instance

method getMaxLevel*(this: LicenseLevelUtil, maxLevel: int32, demoLevel: int32): int32 {.base, discardable.} =
        return maxLevel

