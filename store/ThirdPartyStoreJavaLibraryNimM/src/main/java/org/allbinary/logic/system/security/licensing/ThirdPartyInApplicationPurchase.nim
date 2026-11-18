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
import org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface as ThirdPartyInApplicationPurchaseInterfaceModule
export ThirdPartyInApplicationPurchaseInterfaceModule
import org/allbinary/logic/system/security/licensing/LockableFeature as LockableFeatureModule
export LockableFeatureModule

type
    ThirdPartyInApplicationPurchase* = ref object of ThirdPartyInApplicationPurchaseInterface

proc newThirdPartyInApplicationPurchase*(): ThirdPartyInApplicationPurchase
method isPurchased*(this: ThirdPartyInApplicationPurchase, lockableFeature: LockableFeature): bool {.discardable.}
method onCreate*(this: ThirdPartyInApplicationPurchase, anyType: JObject, stateObject: JObject)
method onDestroy*(this: ThirdPartyInApplicationPurchase)
method onStart*(this: ThirdPartyInApplicationPurchase)
method onActivityResult*(this: ThirdPartyInApplicationPurchase, requestCode: int32, resultCode: int32, dataObject: JObject)
method onSaveInstanceState*(this: ThirdPartyInApplicationPurchase, anyType: JObject)
method onStop*(this: ThirdPartyInApplicationPurchase)
method requestPurchase*(this: ThirdPartyInApplicationPurchase, lockableFeature: LockableFeature)
method requestReceipts*(this: ThirdPartyInApplicationPurchase)
method add*(this: ThirdPartyInApplicationPurchase, lockableFeature: LockableFeature)
method getUserName*(this: ThirdPartyInApplicationPurchase): string {.discardable.}
method isEnabled*(this: ThirdPartyInApplicationPurchase): bool {.discardable.}
method requestProducts*(this: ThirdPartyInApplicationPurchase) {.base.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initThirdPartyInApplicationPurchase*(this: ThirdPartyInApplicationPurchase) =
    discard

proc newThirdPartyInApplicationPurchase*(): ThirdPartyInApplicationPurchase =
    result = ThirdPartyInApplicationPurchase()
    initThirdPartyInApplicationPurchase(result)

method isPurchased*(this: ThirdPartyInApplicationPurchase, lockableFeature: LockableFeature): bool {.discardable.} =
        return false

method onCreate*(this: ThirdPartyInApplicationPurchase, anyType: JObject, stateObject: JObject) =
        discard

method onDestroy*(this: ThirdPartyInApplicationPurchase) =
        discard

method onStart*(this: ThirdPartyInApplicationPurchase) =
        discard

method onActivityResult*(this: ThirdPartyInApplicationPurchase, requestCode: int32, resultCode: int32, dataObject: JObject) =
        discard

method onSaveInstanceState*(this: ThirdPartyInApplicationPurchase, anyType: JObject) =
        discard

method onStop*(this: ThirdPartyInApplicationPurchase) =
        discard

method requestPurchase*(this: ThirdPartyInApplicationPurchase, lockableFeature: LockableFeature) =
        discard

method requestReceipts*(this: ThirdPartyInApplicationPurchase) =
        discard

method add*(this: ThirdPartyInApplicationPurchase, lockableFeature: LockableFeature) =
        discard

method getUserName*(this: ThirdPartyInApplicationPurchase): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method isEnabled*(this: ThirdPartyInApplicationPurchase): bool {.discardable.} =
        return false

method requestProducts*(this: ThirdPartyInApplicationPurchase) {.base.} =
        discard

