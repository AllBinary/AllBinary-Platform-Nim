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
# package org.allbinary.resources

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    KeyValueFactory* = ref object of JObject
        MAP*: ABHashtable

proc newKeyValueFactory*(): KeyValueFactory
proc getInstance*(t: typedesc[KeyValueFactory]): KeyValueFactory {.discardable.}
method get*(this: KeyValueFactory, key: string): string {.base, discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule

var KeyValueFactory_instanceValue: KeyValueFactory
var KeyValueFactory_instanceSet = false
proc instance*(t: typedesc[KeyValueFactory]): KeyValueFactory =
    if not KeyValueFactory_instanceSet:
        KeyValueFactory_instanceSet = true
        KeyValueFactory_instanceValue = newKeyValueFactory()
    KeyValueFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsKeyValueFactory(this: KeyValueFactory) =
    this.MAP = StdUtil.getInstance().createHashtable()
    discard

proc initKeyValueFactory*(this: KeyValueFactory) =
    this.initFieldsKeyValueFactory()

proc newKeyValueFactory*(): KeyValueFactory =
    result = KeyValueFactory()
    initKeyValueFactory(result)

proc getInstance*(t: typedesc[KeyValueFactory]): KeyValueFactory {.discardable.} =
        return KeyValueFactory.instance

method get*(this: KeyValueFactory, key: string): string {.base, discardable.} =
        if (not this.MAP.containsKey(JObject(JObject(key)))):
            return key
        return jstr(this.MAP.get(JObject(JObject(key))))

