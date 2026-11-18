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
    InApplicationPurchaseFactory* = ref object of JObject

proc newInApplicationPurchaseFactory*(): InApplicationPurchaseFactory
proc initInApplicationPurchaseFactory*(this: InApplicationPurchaseFactory)
proc getInstance*(t: typedesc[InApplicationPurchaseFactory]): InApplicationPurchaseFactory {.discardable.}
method init*(this: InApplicationPurchaseFactory, anyType: JObject, stateObject: JObject) {.base.}
method onCreate*(this: InApplicationPurchaseFactory, anyType: JObject, stateObject: JObject) {.base.}
method onStart*(this: InApplicationPurchaseFactory) {.base.}
method onResult*(this: InApplicationPurchaseFactory, requestCode: int32, resultCode: int32, data: JObject) {.base.}
method onSaveState*(this: InApplicationPurchaseFactory, anyType: JObject) {.base.}
method onStop*(this: InApplicationPurchaseFactory) {.base.}
method onDestroy*(this: InApplicationPurchaseFactory) {.base.}
method purchase*(this: InApplicationPurchaseFactory, lockableFeature: LockableFeature) {.base.}
method isPurchased*(this: InApplicationPurchaseFactory, lockableFeature: LockableFeature): bool {.base, discardable.}
method add*(this: InApplicationPurchaseFactory, lockableFeature: LockableFeature) {.base.}
method getUserName*(this: InApplicationPurchaseFactory): string {.base, discardable.}
method isEnabled*(this: InApplicationPurchaseFactory): bool {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var InApplicationPurchaseFactory_instanceValue: InApplicationPurchaseFactory
var InApplicationPurchaseFactory_instanceSet = false
proc instance*(t: typedesc[InApplicationPurchaseFactory]): InApplicationPurchaseFactory =
    if not InApplicationPurchaseFactory_instanceSet:
        InApplicationPurchaseFactory_instanceSet = true
        InApplicationPurchaseFactory_instanceValue = newInApplicationPurchaseFactory()
    InApplicationPurchaseFactory_instanceValue

proc getInstance*(t: typedesc[InApplicationPurchaseFactory]): InApplicationPurchaseFactory {.discardable.} =
        return InApplicationPurchaseFactory.instance

proc initInApplicationPurchaseFactory*(this: InApplicationPurchaseFactory) =
        discard
        discard

proc newInApplicationPurchaseFactory*(): InApplicationPurchaseFactory =
    result = InApplicationPurchaseFactory()
    initInApplicationPurchaseFactory(result)

method init*(this: InApplicationPurchaseFactory, anyType: JObject, stateObject: JObject) {.base.} =
        discard

method onCreate*(this: InApplicationPurchaseFactory, anyType: JObject, stateObject: JObject) {.base.} =
        discard

method onStart*(this: InApplicationPurchaseFactory) {.base.} =
        discard

method onResult*(this: InApplicationPurchaseFactory, requestCode: int32, resultCode: int32, data: JObject) {.base.} =
        discard

method onSaveState*(this: InApplicationPurchaseFactory, anyType: JObject) {.base.} =
        discard

method onStop*(this: InApplicationPurchaseFactory) {.base.} =
        discard

method onDestroy*(this: InApplicationPurchaseFactory) {.base.} =
        discard

method purchase*(this: InApplicationPurchaseFactory, lockableFeature: LockableFeature) {.base.} =
        discard

method isPurchased*(this: InApplicationPurchaseFactory, lockableFeature: LockableFeature): bool {.base, discardable.} =
        return false

method add*(this: InApplicationPurchaseFactory, lockableFeature: LockableFeature) {.base.} =
        discard

method getUserName*(this: InApplicationPurchaseFactory): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method isEnabled*(this: InApplicationPurchaseFactory): bool {.base, discardable.} =
        return false

