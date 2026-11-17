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
# package org.allbinary.time

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/time/StupidTimer as StupidTimerModule
export StupidTimerModule

type
    LicenseStupidTimerFactory* = ref object of JObject

proc newLicenseStupidTimerFactory*(): LicenseStupidTimerFactory
proc getInstance*(t: typedesc[LicenseStupidTimerFactory]): StupidTimer {.discardable.}

var LicenseStupidTimerFactory_instanceValue: StupidTimer
var LicenseStupidTimerFactory_instanceSet = false
proc instance*(t: typedesc[LicenseStupidTimerFactory]): StupidTimer =
    if not LicenseStupidTimerFactory_instanceSet:
        LicenseStupidTimerFactory_instanceSet = true
        LicenseStupidTimerFactory_instanceValue = newStupidTimer()
    LicenseStupidTimerFactory_instanceValue

proc initLicenseStupidTimerFactory*(this: LicenseStupidTimerFactory) =
    discard

proc newLicenseStupidTimerFactory*(): LicenseStupidTimerFactory =
    result = LicenseStupidTimerFactory()
    initLicenseStupidTimerFactory(result)

proc getInstance*(t: typedesc[LicenseStupidTimerFactory]): StupidTimer {.discardable.} =
        return LicenseStupidTimerFactory.instance

