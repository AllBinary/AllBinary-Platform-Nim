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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/ItemPaintable as ItemPaintableModule
export ItemPaintableModule
import org/allbinary/graphics/form/PaintableForm as PaintableFormModule
export PaintableFormModule

type
    ItemPaintableFactory* = ref object of ItemPaintable

proc newItemPaintableFactory*(): ItemPaintableFactory
proc getInstance*(t: typedesc[ItemPaintableFactory]): ItemPaintableFactory {.discardable.}
method getInstanceItemPaintable*(this: ItemPaintableFactory, paintableForm: PaintableForm): ItemPaintable {.base, discardable.}

var ItemPaintableFactory_instanceValue: ItemPaintableFactory
var ItemPaintableFactory_instanceSet = false
proc instance*(t: typedesc[ItemPaintableFactory]): ItemPaintableFactory =
    if not ItemPaintableFactory_instanceSet:
        ItemPaintableFactory_instanceSet = true
        ItemPaintableFactory_instanceValue = newItemPaintableFactory()
    ItemPaintableFactory_instanceValue

proc initItemPaintableFactory*(this: ItemPaintableFactory) =
    initItemPaintable(this)

proc newItemPaintableFactory*(): ItemPaintableFactory =
    result = ItemPaintableFactory()
    initItemPaintableFactory(result)

proc getInstance*(t: typedesc[ItemPaintableFactory]): ItemPaintableFactory {.discardable.} =
        return ItemPaintableFactory.instance

method getInstanceItemPaintable*(this: ItemPaintableFactory, paintableForm: PaintableForm): ItemPaintable {.base, discardable.} =
        return ItemPaintableFactory.instance

when declared(newItemPaintableFactoryHook0):
    newItemPaintableFactoryHook0 = proc (): ItemPaintable = newItemPaintableFactory()

