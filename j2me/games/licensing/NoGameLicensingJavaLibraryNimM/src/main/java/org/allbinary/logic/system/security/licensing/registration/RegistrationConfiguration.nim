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
# package org.allbinary.logic.system.security.licensing.registration

{.warning[UnusedImport]: off.}
import allbinary_java

type
    RegistrationConfiguration* = ref object of JObject
        registrationCode*: string
        NAME*: string

proc newRegistrationConfiguration*(): RegistrationConfiguration
proc initRegistrationConfiguration*(this: RegistrationConfiguration)
proc getInstance*(t: typedesc[RegistrationConfiguration]): RegistrationConfiguration {.discardable.}
method read*(this: RegistrationConfiguration) {.base.}
method write*(this: RegistrationConfiguration) {.base.}
method toString*(this: RegistrationConfiguration): string {.discardable.}
method setRegistrationCode*(this: RegistrationConfiguration, registrationCode: string) {.base.}
method getRegistrationCode*(this: RegistrationConfiguration): string {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var RegistrationConfiguration_SINGLETONValue: RegistrationConfiguration
var RegistrationConfiguration_SINGLETONSet = false
proc SINGLETON*(t: typedesc[RegistrationConfiguration]): RegistrationConfiguration =
    if not RegistrationConfiguration_SINGLETONSet:
        RegistrationConfiguration_SINGLETONSet = true
        RegistrationConfiguration_SINGLETONValue = newRegistrationConfiguration()
    RegistrationConfiguration_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsRegistrationConfiguration(this: RegistrationConfiguration) =
    this.registrationCode = "No Registration Code"
    this.NAME = "registrationid"
    discard

proc initRegistrationConfiguration*(this: RegistrationConfiguration) =
        this.initFieldsRegistrationConfiguration()
        discard

proc newRegistrationConfiguration*(): RegistrationConfiguration =
    result = RegistrationConfiguration()
    initRegistrationConfiguration(result)

proc getInstance*(t: typedesc[RegistrationConfiguration]): RegistrationConfiguration {.discardable.} =
        return RegistrationConfiguration.SINGLETON

method read*(this: RegistrationConfiguration) {.base.} =
        discard

method write*(this: RegistrationConfiguration) {.base.} =
        discard

method toString*(this: RegistrationConfiguration): string {.discardable.} =
        return newStringMaker().append("Registration Code: ").append(this.getRegistrationCode()).toString()

method setRegistrationCode*(this: RegistrationConfiguration, registrationCode: string) {.base.} =
        this.registrationCode = registrationCode

method getRegistrationCode*(this: RegistrationConfiguration): string {.base, discardable.} =
        return this.registrationCode

