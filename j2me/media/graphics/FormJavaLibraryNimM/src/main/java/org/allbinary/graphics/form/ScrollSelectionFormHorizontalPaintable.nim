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
    ScrollSelectionFormHorizontalPaintable* = ref object of ItemIndexPaintable
        scrollSelectionForm*: ScrollSelectionForm

proc newScrollSelectionFormHorizontalPaintable*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormHorizontalPaintable
proc initScrollSelectionFormHorizontalPaintable*(this: ScrollSelectionFormHorizontalPaintable, scrollSelectionForm: ScrollSelectionForm)
method paint*(this: ScrollSelectionFormHorizontalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsScrollSelectionFormHorizontalPaintable(this: ScrollSelectionFormHorizontalPaintable) =
    
    discard

proc initScrollSelectionFormHorizontalPaintable*(this: ScrollSelectionFormHorizontalPaintable, scrollSelectionForm: ScrollSelectionForm) =
        initItemIndexPaintable(this)
        this.initFieldsScrollSelectionFormHorizontalPaintable()
        this.scrollSelectionForm = scrollSelectionForm

proc newScrollSelectionFormHorizontalPaintable*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormHorizontalPaintable =
    result = ScrollSelectionFormHorizontalPaintable()
    initScrollSelectionFormHorizontalPaintable(result, scrollSelectionForm)

method paint*(this: ScrollSelectionFormHorizontalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollSelectionForm.paintItemHorizontal(graphics, index, item, dx, dy)

when declared(newScrollSelectionFormHorizontalPaintableHook1):
    newScrollSelectionFormHorizontalPaintableHook1 = proc (scrollSelectionForm: ScrollSelectionForm): ItemIndexPaintable = newScrollSelectionFormHorizontalPaintable(scrollSelectionForm)

