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
# package org.allbinary.thirdparty.store

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule

type
    ThirdPartyStore* = ref object of JObject
        authorized*: bool
        name*: string

proc newThirdPartyStore*(name: string): ThirdPartyStore
proc initThirdPartyStore*(this: ThirdPartyStore, name: string)
method authorize*(this: ThirdPartyStore, clientInformationInterface: AbeClientInformationInterface) {.base.}
method isAuthorized*(this: ThirdPartyStore): bool {.base, discardable.}
method setAuthorized*(this: ThirdPartyStore, authorized: bool) {.base.}
method getName*(this: ThirdPartyStore): string {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsThirdPartyStore(this: ThirdPartyStore) =
    this.authorized = false
    
    discard

proc initThirdPartyStore*(this: ThirdPartyStore, name: string) =
        this.initFieldsThirdPartyStore()
        this.name = name

proc newThirdPartyStore*(name: string): ThirdPartyStore =
    result = ThirdPartyStore()
    initThirdPartyStore(result, name)

method authorize*(this: ThirdPartyStore, clientInformationInterface: AbeClientInformationInterface) {.base.} =
        discard

method isAuthorized*(this: ThirdPartyStore): bool {.base, discardable.} =
        return this.authorized

method setAuthorized*(this: ThirdPartyStore, authorized: bool) {.base.} =
        this.authorized = authorized

method getName*(this: ThirdPartyStore): string {.base, discardable.} =
        return this.name

