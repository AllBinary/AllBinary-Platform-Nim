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
import org/allbinary/thirdparty/store/LongArrayIdentifierInterface as LongArrayIdentifierInterfaceModule
export LongArrayIdentifierInterfaceModule
import org/allbinary/logic/system/security/licensing/AbeClientInformation as AbeClientInformationModule
export AbeClientInformationModule

type
    StoreAppClientInformation* = ref object of AbeClientInformation
        longArrayIdentifier*: JArray[int64]

converter jAsLongArrayIdentifierInterface*(value: StoreAppClientInformation): LongArrayIdentifierInterface = cast[LongArrayIdentifierInterface](value)
proc newStoreAppClientInformation*(name: string, version: string, specialName: string, shortName: string, longArrayIdentifier: JArray[int64]): StoreAppClientInformation
proc initStoreAppClientInformation*(this: StoreAppClientInformation, name: string, version: string, specialName: string, shortName: string, longArrayIdentifier: JArray[int64])
method getLongArrayIdentifier*(this: StoreAppClientInformation): JArray[int64] {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsStoreAppClientInformation(this: StoreAppClientInformation) =
    
    discard

proc initStoreAppClientInformation*(this: StoreAppClientInformation, name: string, version: string, specialName: string, shortName: string, longArrayIdentifier: JArray[int64]) =
        initAbeClientInformation(this, name, version, specialName, shortName)
        this.initFieldsStoreAppClientInformation()
        this.longArrayIdentifier = longArrayIdentifier

proc newStoreAppClientInformation*(name: string, version: string, specialName: string, shortName: string, longArrayIdentifier: JArray[int64]): StoreAppClientInformation =
    result = StoreAppClientInformation()
    initStoreAppClientInformation(result, name, version, specialName, shortName, longArrayIdentifier)

method getLongArrayIdentifier*(this: StoreAppClientInformation): JArray[int64] {.discardable.} =
        return this.longArrayIdentifier

when declared(newStoreAppClientInformationHook5):
    newStoreAppClientInformationHook5 = proc (name: string, version: string, specialName: string, shortName: string, longArrayIdentifier: JArray[int64]): AbeClientInformation = newStoreAppClientInformation(name, version, specialName, shortName, longArrayIdentifier)

