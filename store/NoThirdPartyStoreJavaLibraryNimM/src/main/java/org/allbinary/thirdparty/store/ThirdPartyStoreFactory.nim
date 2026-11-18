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
import org/allbinary/thirdparty/store/NoThirdPartyStore as NoThirdPartyStoreModule
export NoThirdPartyStoreModule
import org/allbinary/thirdparty/store/ThirdPartyStore as ThirdPartyStoreModule
export ThirdPartyStoreModule

type
    ThirdPartyStoreFactory* = ref object of JObject

proc newThirdPartyStoreFactory*(): ThirdPartyStoreFactory
proc initThirdPartyStoreFactory*(this: ThirdPartyStoreFactory)
proc getInstance*(t: typedesc[ThirdPartyStoreFactory]): ThirdPartyStore {.discardable.}

var ThirdPartyStoreFactory_instanceValue: NoThirdPartyStore
var ThirdPartyStoreFactory_instanceSet = false
proc instance*(t: typedesc[ThirdPartyStoreFactory]): NoThirdPartyStore =
    if not ThirdPartyStoreFactory_instanceSet:
        ThirdPartyStoreFactory_instanceSet = true
        ThirdPartyStoreFactory_instanceValue = newNoThirdPartyStore()
    ThirdPartyStoreFactory_instanceValue

proc getInstance*(t: typedesc[ThirdPartyStoreFactory]): ThirdPartyStore {.discardable.} =
        return ThirdPartyStoreFactory.instance

proc initThirdPartyStoreFactory*(this: ThirdPartyStoreFactory) =
        discard
        discard

proc newThirdPartyStoreFactory*(): ThirdPartyStoreFactory =
    result = ThirdPartyStoreFactory()
    initThirdPartyStoreFactory(result)

