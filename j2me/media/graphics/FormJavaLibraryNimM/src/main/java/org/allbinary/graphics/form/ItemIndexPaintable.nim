#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    ItemIndexPaintable* = ref object of JObject

proc newItemIndexPaintable*(): ItemIndexPaintable
proc getInstance*(t: typedesc[ItemIndexPaintable]): ItemIndexPaintable {.discardable.}
method paint*(this: ItemIndexPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}

var ItemIndexPaintable_instanceValue: ItemIndexPaintable
var ItemIndexPaintable_instanceSet = false
proc instance*(t: typedesc[ItemIndexPaintable]): ItemIndexPaintable =
    if not ItemIndexPaintable_instanceSet:
        ItemIndexPaintable_instanceSet = true
        ItemIndexPaintable_instanceValue = newItemIndexPaintable()
    ItemIndexPaintable_instanceValue

proc initItemIndexPaintable*(this: ItemIndexPaintable) =
    discard

proc newItemIndexPaintable*(): ItemIndexPaintable =
    result = ItemIndexPaintable()
    initItemIndexPaintable(result)

proc getInstance*(t: typedesc[ItemIndexPaintable]): ItemIndexPaintable {.discardable.} =
        return ItemIndexPaintable.instance

method paint*(this: ItemIndexPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return 0

