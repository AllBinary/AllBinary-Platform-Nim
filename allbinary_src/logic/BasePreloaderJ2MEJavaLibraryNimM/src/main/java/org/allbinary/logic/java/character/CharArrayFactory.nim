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
# package org.allbinary.logic.java.character

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CharArrayFactory* = ref object of JObject
        zeroCharArray*: JArray[uint16]

proc newCharArrayFactory*(): CharArrayFactory
proc getInstance*(t: typedesc[CharArrayFactory]): CharArrayFactory {.discardable.}
method getZeroCharArray*(this: CharArrayFactory): JArray[uint16] {.base, discardable.}

var CharArrayFactory_instanceValue: CharArrayFactory
var CharArrayFactory_instanceSet = false
proc instance*(t: typedesc[CharArrayFactory]): CharArrayFactory =
    if not CharArrayFactory_instanceSet:
        CharArrayFactory_instanceSet = true
        CharArrayFactory_instanceValue = newCharArrayFactory()
    CharArrayFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCharArrayFactory(this: CharArrayFactory) =
    this.zeroCharArray = newJArray[uint16](0, default(uint16))
    discard

proc initCharArrayFactory*(this: CharArrayFactory) =
    this.initFieldsCharArrayFactory()

proc newCharArrayFactory*(): CharArrayFactory =
    result = CharArrayFactory()
    initCharArrayFactory(result)

proc getInstance*(t: typedesc[CharArrayFactory]): CharArrayFactory {.discardable.} =
        return CharArrayFactory.instance

method getZeroCharArray*(this: CharArrayFactory): JArray[uint16] {.base, discardable.} =
        return this.zeroCharArray

