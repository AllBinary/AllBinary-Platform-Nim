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
# package org.allbinary.graphics.color

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    BasicColorCacheFactory* = ref object of JObject
        hashtable*: ABHashtable

proc newBasicColorCacheFactory*(): BasicColorCacheFactory
proc initBasicColorCacheFactory*(this: BasicColorCacheFactory)
proc getInstance*(t: typedesc[BasicColorCacheFactory]): BasicColorCacheFactory {.discardable.}
method add*(this: BasicColorCacheFactory, basicDefaultColor: BasicColor) {.base.}
method getAndOrCreate*(this: BasicColorCacheFactory, integer: int32): BasicColor {.base, discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule

var BasicColorCacheFactory_instanceValue: BasicColorCacheFactory
var BasicColorCacheFactory_instanceSet = false
proc instance*(t: typedesc[BasicColorCacheFactory]): BasicColorCacheFactory =
    if not BasicColorCacheFactory_instanceSet:
        BasicColorCacheFactory_instanceSet = true
        BasicColorCacheFactory_instanceValue = newBasicColorCacheFactory()
    BasicColorCacheFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicColorCacheFactory(this: BasicColorCacheFactory) =
    this.hashtable = StdUtil.getInstance().createHashtable()
    discard

proc getInstance*(t: typedesc[BasicColorCacheFactory]): BasicColorCacheFactory {.discardable.} =
        return BasicColorCacheFactory.instance

proc initBasicColorCacheFactory*(this: BasicColorCacheFactory) =
        this.initFieldsBasicColorCacheFactory()
        discard

proc newBasicColorCacheFactory*(): BasicColorCacheFactory =
    result = BasicColorCacheFactory()
    initBasicColorCacheFactory(result)

method add*(this: BasicColorCacheFactory, basicDefaultColor: BasicColor) {.base.} =
        this.hashtable.put(basicDefaultColor.intValue(), basicDefaultColor)

method getAndOrCreate*(this: BasicColorCacheFactory, integer: int32): BasicColor {.base, discardable.} =
        var basicColor: BasicColor = BasicColor(JObject(this.hashtable.get(integer)))
        if (jIsNil(basicColor)):
            basicColor = BasicColorFactory.getInstance().createInstance(integer.intValue())
            this.hashtable.put(integer, basicColor)
        return basicColor

