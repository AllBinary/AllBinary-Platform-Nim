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
    ScrollSelectionFormTempHorizontalPaintable* = ref object of ItemIndexPaintable
        scrollSelectionForm*: ScrollSelectionForm

proc newScrollSelectionFormTempHorizontalPaintable*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormTempHorizontalPaintable
proc initScrollSelectionFormTempHorizontalPaintable*(this: ScrollSelectionFormTempHorizontalPaintable, scrollSelectionForm: ScrollSelectionForm)
method paint*(this: ScrollSelectionFormTempHorizontalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsScrollSelectionFormTempHorizontalPaintable(this: ScrollSelectionFormTempHorizontalPaintable) =
    
    discard

proc initScrollSelectionFormTempHorizontalPaintable*(this: ScrollSelectionFormTempHorizontalPaintable, scrollSelectionForm: ScrollSelectionForm) =
        initItemIndexPaintable(this)
        this.initFieldsScrollSelectionFormTempHorizontalPaintable()
        this.scrollSelectionForm = scrollSelectionForm

proc newScrollSelectionFormTempHorizontalPaintable*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormTempHorizontalPaintable =
    result = ScrollSelectionFormTempHorizontalPaintable()
    initScrollSelectionFormTempHorizontalPaintable(result, scrollSelectionForm)

method paint*(this: ScrollSelectionFormTempHorizontalPaintable, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollSelectionForm.paintItemTempHorizontal(graphics, index, item, dx, dy)

when declared(newScrollSelectionFormTempHorizontalPaintableHook1):
    newScrollSelectionFormTempHorizontalPaintableHook1 = proc (scrollSelectionForm: ScrollSelectionForm): ItemIndexPaintable = newScrollSelectionFormTempHorizontalPaintable(scrollSelectionForm)

