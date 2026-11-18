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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    LockableFeatureFactory* = ref object of JObject
        list*: BasicArrayList

proc newLockableFeatureFactory*(): LockableFeatureFactory
proc getInstance*(t: typedesc[LockableFeatureFactory]): LockableFeatureFactory {.discardable.}
method getList*(this: LockableFeatureFactory): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var LockableFeatureFactory_instanceValue: LockableFeatureFactory
var LockableFeatureFactory_instanceSet = false
proc instance*(t: typedesc[LockableFeatureFactory]): LockableFeatureFactory =
    if not LockableFeatureFactory_instanceSet:
        LockableFeatureFactory_instanceSet = true
        LockableFeatureFactory_instanceValue = newLockableFeatureFactory()
    LockableFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLockableFeatureFactory(this: LockableFeatureFactory) =
    this.list = newBasicArrayListD()
    discard

proc initLockableFeatureFactory*(this: LockableFeatureFactory) =
    this.initFieldsLockableFeatureFactory()

proc newLockableFeatureFactory*(): LockableFeatureFactory =
    result = LockableFeatureFactory()
    initLockableFeatureFactory(result)

proc getInstance*(t: typedesc[LockableFeatureFactory]): LockableFeatureFactory {.discardable.} =
        return LockableFeatureFactory.instance

method getList*(this: LockableFeatureFactory): BasicArrayList {.base, discardable.} =
        return this.list

