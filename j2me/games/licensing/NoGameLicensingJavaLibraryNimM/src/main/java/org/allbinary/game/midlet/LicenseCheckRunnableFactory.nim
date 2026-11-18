#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/thread/ABRunnable as ABRunnableModule
export ABRunnableModule
import org/allbinary/game/midlet/SpecialDemoGameMidlet as SpecialDemoGameMidletModule
export SpecialDemoGameMidletModule

type
    LicenseCheckRunnableFactory* = ref object of JObject

proc newLicenseCheckRunnableFactory*(): LicenseCheckRunnableFactory
method getInstance*(this: LicenseCheckRunnableFactory, specialDemoGameMidlet: SpecialDemoGameMidlet): ABRunnable {.base, discardable.}
import org/allbinary/thread/NullABRunnable as NullABRunnableModule
export NullABRunnableModule


proc initLicenseCheckRunnableFactory*(this: LicenseCheckRunnableFactory) =
    discard

proc newLicenseCheckRunnableFactory*(): LicenseCheckRunnableFactory =
    result = LicenseCheckRunnableFactory()
    initLicenseCheckRunnableFactory(result)

method getInstance*(this: LicenseCheckRunnableFactory, specialDemoGameMidlet: SpecialDemoGameMidlet): ABRunnable {.base, discardable.} =
        return NullABRunnable.getInstance()

