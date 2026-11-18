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
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    ItemIndexDx* = ref object of JObject

proc newItemIndexDx*(): ItemIndexDx
proc getInstance*(t: typedesc[ItemIndexDx]): ItemIndexDx {.discardable.}
method getDx*(this: ItemIndexDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}

var ItemIndexDx_instanceValue: ItemIndexDx
var ItemIndexDx_instanceSet = false
proc instance*(t: typedesc[ItemIndexDx]): ItemIndexDx =
    if not ItemIndexDx_instanceSet:
        ItemIndexDx_instanceSet = true
        ItemIndexDx_instanceValue = newItemIndexDx()
    ItemIndexDx_instanceValue

proc initItemIndexDx*(this: ItemIndexDx) =
    discard

proc newItemIndexDx*(): ItemIndexDx =
    result = ItemIndexDx()
    initItemIndexDx(result)

proc getInstance*(t: typedesc[ItemIndexDx]): ItemIndexDx {.discardable.} =
        return ItemIndexDx.instance

method getDx*(this: ItemIndexDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return 0

