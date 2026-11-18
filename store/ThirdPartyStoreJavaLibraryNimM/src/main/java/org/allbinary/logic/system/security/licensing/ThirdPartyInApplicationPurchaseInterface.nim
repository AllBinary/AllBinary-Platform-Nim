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
import org/allbinary/logic/system/security/licensing/LockableFeature as LockableFeatureModule
export LockableFeatureModule

type
    ThirdPartyInApplicationPurchaseInterface* = ref object of JObject


method isPurchased*(this: ThirdPartyInApplicationPurchaseInterface, lockableFeature: LockableFeature): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isPurchased")

method onCreate*(this: ThirdPartyInApplicationPurchaseInterface, anyType: JObject, stateObject: JObject) {.base.} =
        raise newJException("AbstractMethodError", "onCreate")

method onDestroy*(this: ThirdPartyInApplicationPurchaseInterface) {.base.} =
        raise newJException("AbstractMethodError", "onDestroy")

method onStart*(this: ThirdPartyInApplicationPurchaseInterface) {.base.} =
        raise newJException("AbstractMethodError", "onStart")

method onActivityResult*(this: ThirdPartyInApplicationPurchaseInterface, requestCode: int32, resultCode: int32, dataObject: JObject) {.base.} =
        raise newJException("AbstractMethodError", "onActivityResult")

method onSaveInstanceState*(this: ThirdPartyInApplicationPurchaseInterface, anyType: JObject) {.base.} =
        raise newJException("AbstractMethodError", "onSaveInstanceState")

method onStop*(this: ThirdPartyInApplicationPurchaseInterface) {.base.} =
        raise newJException("AbstractMethodError", "onStop")

method requestPurchase*(this: ThirdPartyInApplicationPurchaseInterface, lockableFeature: LockableFeature) {.base.} =
        raise newJException("AbstractMethodError", "requestPurchase")

method requestReceipts*(this: ThirdPartyInApplicationPurchaseInterface) {.base.} =
        raise newJException("AbstractMethodError", "requestReceipts")

method add*(this: ThirdPartyInApplicationPurchaseInterface, lockableFeature: LockableFeature) {.base.} =
        raise newJException("AbstractMethodError", "add")

method getUserName*(this: ThirdPartyInApplicationPurchaseInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getUserName")

method isEnabled*(this: ThirdPartyInApplicationPurchaseInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isEnabled")

