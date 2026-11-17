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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ItemColorFactory* = ref object of JObject
        INVERT_PAINT*: int32
        PAINT*: int32
        TEXT_FIELD_NO_FOCUS*: int32

proc newItemColorFactory*(): ItemColorFactory
proc getInstance*(t: typedesc[ItemColorFactory]): ItemColorFactory {.discardable.}

var ItemColorFactory_instanceValue: ItemColorFactory
var ItemColorFactory_instanceSet = false
proc instance*(t: typedesc[ItemColorFactory]): ItemColorFactory =
    if not ItemColorFactory_instanceSet:
        ItemColorFactory_instanceSet = true
        ItemColorFactory_instanceValue = newItemColorFactory()
    ItemColorFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsItemColorFactory(this: ItemColorFactory) =
    this.INVERT_PAINT = cast[int32](0xFF000000'u32)
    this.PAINT = cast[int32](0xFFe07718'u32)
    this.TEXT_FIELD_NO_FOCUS = 0x7F7F7F
    discard

proc initItemColorFactory*(this: ItemColorFactory) =
    this.initFieldsItemColorFactory()

proc newItemColorFactory*(): ItemColorFactory =
    result = ItemColorFactory()
    initItemColorFactory(result)

proc getInstance*(t: typedesc[ItemColorFactory]): ItemColorFactory {.discardable.} =
        return ItemColorFactory.instance

