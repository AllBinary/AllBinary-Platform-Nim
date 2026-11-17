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
# package org.allbinary.android

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AndroidInfoFactory* = ref object of JObject
        version*: int32

proc newAndroidInfoFactory*(): AndroidInfoFactory
proc getInstance*(t: typedesc[AndroidInfoFactory]): AndroidInfoFactory {.discardable.}
method getVersion*(this: AndroidInfoFactory): int32 {.base, discardable.}

var AndroidInfoFactory_instanceValue: AndroidInfoFactory
var AndroidInfoFactory_instanceSet = false
proc instance*(t: typedesc[AndroidInfoFactory]): AndroidInfoFactory =
    if not AndroidInfoFactory_instanceSet:
        AndroidInfoFactory_instanceSet = true
        AndroidInfoFactory_instanceValue = newAndroidInfoFactory()
    AndroidInfoFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAndroidInfoFactory(this: AndroidInfoFactory) =
    this.version = 8
    discard

proc initAndroidInfoFactory*(this: AndroidInfoFactory) =
    this.initFieldsAndroidInfoFactory()

proc newAndroidInfoFactory*(): AndroidInfoFactory =
    result = AndroidInfoFactory()
    initAndroidInfoFactory(result)

proc getInstance*(t: typedesc[AndroidInfoFactory]): AndroidInfoFactory {.discardable.} =
        return AndroidInfoFactory.instance

method getVersion*(this: AndroidInfoFactory): int32 {.base, discardable.} =
        return this.version

