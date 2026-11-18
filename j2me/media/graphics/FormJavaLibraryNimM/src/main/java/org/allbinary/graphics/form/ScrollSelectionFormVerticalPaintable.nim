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
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule

type
    ScrollSelectionFormVerticalPaintable* = ref object of ItemIndexPaintable
        scrollSelectionForm*: ScrollSelectionForm

proc newScrollSelectionFormVerticalPaintable*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormVerticalPaintable
proc initScrollSelectionFormVerticalPaintable*(this: ScrollSelectionFormVerticalPaintable, scrollSelectionForm: ScrollSelectionForm)
method paint*(this: ScrollSelectionFormVerticalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsScrollSelectionFormVerticalPaintable(this: ScrollSelectionFormVerticalPaintable) =
    
    discard

proc initScrollSelectionFormVerticalPaintable*(this: ScrollSelectionFormVerticalPaintable, scrollSelectionForm: ScrollSelectionForm) =
        initItemIndexPaintable(this)
        this.initFieldsScrollSelectionFormVerticalPaintable()
        this.scrollSelectionForm = scrollSelectionForm

proc newScrollSelectionFormVerticalPaintable*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormVerticalPaintable =
    result = ScrollSelectionFormVerticalPaintable()
    initScrollSelectionFormVerticalPaintable(result, scrollSelectionForm)

method paint*(this: ScrollSelectionFormVerticalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollSelectionForm.paintItemVertical(graphics, index, item, dx, dy)

when declared(newScrollSelectionFormVerticalPaintableHook1):
    newScrollSelectionFormVerticalPaintableHook1 = proc (scrollSelectionForm: ScrollSelectionForm): ItemIndexPaintable = newScrollSelectionFormVerticalPaintable(scrollSelectionForm)

