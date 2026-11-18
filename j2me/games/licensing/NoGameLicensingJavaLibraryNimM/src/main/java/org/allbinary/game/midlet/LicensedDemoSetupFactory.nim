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
import org/allbinary/game/midlet/DemoSetup as DemoSetupModule
export DemoSetupModule

type
    LicensedDemoSetupFactory* = ref object of JObject

proc newLicensedDemoSetupFactory*(): LicensedDemoSetupFactory
method getInstance*(this: LicensedDemoSetupFactory): DemoSetup {.base, discardable.}


proc initLicensedDemoSetupFactory*(this: LicensedDemoSetupFactory) =
    discard

proc newLicensedDemoSetupFactory*(): LicensedDemoSetupFactory =
    result = LicensedDemoSetupFactory()
    initLicensedDemoSetupFactory(result)

method getInstance*(this: LicensedDemoSetupFactory): DemoSetup {.base, discardable.} =
        return newDemoSetup()

