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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    SmallBasicColorCacheFactory* = ref object of JObject
        SIZE*: int32
        INDEX_TO_COLOR*: JArray[int32]
        BASIC_COLOR_ARRAY*: JArray[BasicColor]
        colorIndex*: int32

proc newSmallBasicColorCacheFactory*(): SmallBasicColorCacheFactory
proc initSmallBasicColorCacheFactory*(this: SmallBasicColorCacheFactory)
proc getInstance*(t: typedesc[SmallBasicColorCacheFactory]): SmallBasicColorCacheFactory {.discardable.}
method add*(this: SmallBasicColorCacheFactory, basicDefaultColor: BasicColor) {.base.}
method getAndOrCreate*(this: SmallBasicColorCacheFactory, colorAsInt: int32): BasicColor {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule

var SmallBasicColorCacheFactory_instanceValue: SmallBasicColorCacheFactory
var SmallBasicColorCacheFactory_instanceSet = false
proc instance*(t: typedesc[SmallBasicColorCacheFactory]): SmallBasicColorCacheFactory =
    if not SmallBasicColorCacheFactory_instanceSet:
        SmallBasicColorCacheFactory_instanceSet = true
        SmallBasicColorCacheFactory_instanceValue = newSmallBasicColorCacheFactory()
    SmallBasicColorCacheFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSmallBasicColorCacheFactory(this: SmallBasicColorCacheFactory) =
    this.SIZE = 255
    this.INDEX_TO_COLOR = newJArray[int32](this.SIZE, default(int32))
    this.BASIC_COLOR_ARRAY = newJArray[BasicColor](this.SIZE, default(BasicColor))
    this.colorIndex = 0
    discard

proc getInstance*(t: typedesc[SmallBasicColorCacheFactory]): SmallBasicColorCacheFactory {.discardable.} =
        return SmallBasicColorCacheFactory.instance

proc initSmallBasicColorCacheFactory*(this: SmallBasicColorCacheFactory) =
        this.initFieldsSmallBasicColorCacheFactory()
        discard

proc newSmallBasicColorCacheFactory*(): SmallBasicColorCacheFactory =
    result = SmallBasicColorCacheFactory()
    initSmallBasicColorCacheFactory(result)

method add*(this: SmallBasicColorCacheFactory, basicDefaultColor: BasicColor) {.base.} =
        this.BASIC_COLOR_ARRAY[this.colorIndex] = basicDefaultColor
        this.INDEX_TO_COLOR[this.colorIndex] = basicDefaultColor.intValue()
        this.colorIndex = this.colorIndex +% 1

method getAndOrCreate*(this: SmallBasicColorCacheFactory, colorAsInt: int32): BasicColor {.base, discardable.} =
        var basicColor: BasicColor = nil
        block:
            var index: int32 = 0
            while index < this.SIZE:
                defer: index = index +% 1
                if this.INDEX_TO_COLOR[index] == colorAsInt:
                    return this.BASIC_COLOR_ARRAY[index]
        let ALPHA_MASK: int32 = cast[int32](0xFF000000'u32)
        basicColor = BasicColorFactory.getInstance().createInstanceAN(colorAsInt and ALPHA_MASK, colorAsInt and 0x00FFFFFF, StringUtil.getInstance().EMPTY_STRING)
        this.add(basicColor)
        return basicColor

