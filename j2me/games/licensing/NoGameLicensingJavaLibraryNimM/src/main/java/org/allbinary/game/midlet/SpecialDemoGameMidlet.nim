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
import org/allbinary/logic/system/security/licensing/ClientInformationFactory as ClientInformationFactoryModule
export ClientInformationFactoryModule
import org/allbinary/game/midlet/DemoGameMidlet as DemoGameMidletModule
export DemoGameMidletModule
import org/allbinary/game/midlet/LicenseLoadingType as LicenseLoadingTypeModule
export LicenseLoadingTypeModule
import org/allbinary/game/midlet/LicensedDemoSetupFactory as LicensedDemoSetupFactoryModule
export LicensedDemoSetupFactoryModule
import org/allbinary/game/midlet/LicenseCheckRunnableFactory as LicenseCheckRunnableFactoryModule
export LicenseCheckRunnableFactoryModule

type
    SpecialDemoGameMidlet* = ref object of DemoGameMidlet

proc newSpecialDemoGameMidlet*(clientInformationFactory: ClientInformationFactory, licenseLoadingType: LicenseLoadingType, demoSetupFactory: LicensedDemoSetupFactory, licenseCheckRunnableFactory: LicenseCheckRunnableFactory): SpecialDemoGameMidlet
proc initSpecialDemoGameMidlet*(this: SpecialDemoGameMidlet, clientInformationFactory: ClientInformationFactory, licenseLoadingType: LicenseLoadingType, demoSetupFactory: LicensedDemoSetupFactory, licenseCheckRunnableFactory: LicenseCheckRunnableFactory)
method initView*(this: SpecialDemoGameMidlet) {.base.}
method preInit*(this: SpecialDemoGameMidlet)
import org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil as LicenseServerInitFileUtilModule
export LicenseServerInitFileUtilModule


proc initSpecialDemoGameMidlet*(this: SpecialDemoGameMidlet, clientInformationFactory: ClientInformationFactory, licenseLoadingType: LicenseLoadingType, demoSetupFactory: LicensedDemoSetupFactory, licenseCheckRunnableFactory: LicenseCheckRunnableFactory) =
        initDemoGameMidlet(this, clientInformationFactory)

proc newSpecialDemoGameMidlet*(clientInformationFactory: ClientInformationFactory, licenseLoadingType: LicenseLoadingType, demoSetupFactory: LicensedDemoSetupFactory, licenseCheckRunnableFactory: LicenseCheckRunnableFactory): SpecialDemoGameMidlet =
    result = SpecialDemoGameMidlet()
    initSpecialDemoGameMidlet(result, clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)

method initView*(this: SpecialDemoGameMidlet) {.base.} =
        discard

method preInit*(this: SpecialDemoGameMidlet) =
        newLicenseServerInitFileUtil().init()

when declared(newSpecialDemoGameMidletHook4):
    newSpecialDemoGameMidletHook4 = proc (clientInformationFactory: ClientInformationFactory, licenseLoadingType: LicenseLoadingType, demoSetupFactory: LicensedDemoSetupFactory, licenseCheckRunnableFactory: LicenseCheckRunnableFactory): DemoGameMidlet = newSpecialDemoGameMidlet(clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)

