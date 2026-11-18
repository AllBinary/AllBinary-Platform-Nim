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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/ItemIndexPaintable as ItemIndexPaintableModule
export ItemIndexPaintableModule
import org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm as MultipleScrollSelectionHorizontalFormModule
export MultipleScrollSelectionHorizontalFormModule

type
    MultipleScrollSelectionFormVerticalPaintable* = ref object of ItemIndexPaintable
        multipleScrollSelectionForm*: MultipleScrollSelectionHorizontalForm

proc newMultipleScrollSelectionFormVerticalPaintable*(multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm): MultipleScrollSelectionFormVerticalPaintable
proc initMultipleScrollSelectionFormVerticalPaintable*(this: MultipleScrollSelectionFormVerticalPaintable, multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm)
method paint*(this: MultipleScrollSelectionFormVerticalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsMultipleScrollSelectionFormVerticalPaintable(this: MultipleScrollSelectionFormVerticalPaintable) =
    
    discard

proc initMultipleScrollSelectionFormVerticalPaintable*(this: MultipleScrollSelectionFormVerticalPaintable, multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm) =
        initItemIndexPaintable(this)
        this.initFieldsMultipleScrollSelectionFormVerticalPaintable()
        this.multipleScrollSelectionForm = multipleScrollSelectionForm

proc newMultipleScrollSelectionFormVerticalPaintable*(multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm): MultipleScrollSelectionFormVerticalPaintable =
    result = MultipleScrollSelectionFormVerticalPaintable()
    initMultipleScrollSelectionFormVerticalPaintable(result, multipleScrollSelectionForm)

method paint*(this: MultipleScrollSelectionFormVerticalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.multipleScrollSelectionForm.paintVertical(graphics, index, item, dx, dy)

when declared(newMultipleScrollSelectionFormVerticalPaintableHook1):
    newMultipleScrollSelectionFormVerticalPaintableHook1 = proc (multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm): ItemIndexPaintable = newMultipleScrollSelectionFormVerticalPaintable(multipleScrollSelectionForm)

