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
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/ItemIndexDx as ItemIndexDxModule
export ItemIndexDxModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule

type
    ScrollSelectionFormVericalDx* = ref object of ItemIndexDx
        scrollSelectionForm*: ScrollSelectionForm

proc newScrollSelectionFormVericalDx*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormVericalDx
proc initScrollSelectionFormVericalDx*(this: ScrollSelectionFormVericalDx, scrollSelectionForm: ScrollSelectionForm)
method getDx*(this: ScrollSelectionFormVericalDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsScrollSelectionFormVericalDx(this: ScrollSelectionFormVericalDx) =
    
    discard

proc initScrollSelectionFormVericalDx*(this: ScrollSelectionFormVericalDx, scrollSelectionForm: ScrollSelectionForm) =
        initItemIndexDx(this)
        this.initFieldsScrollSelectionFormVericalDx()
        this.scrollSelectionForm = scrollSelectionForm

proc newScrollSelectionFormVericalDx*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormVericalDx =
    result = ScrollSelectionFormVericalDx()
    initScrollSelectionFormVericalDx(result, scrollSelectionForm)

method getDx*(this: ScrollSelectionFormVericalDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollSelectionForm.getSelectedIndexForPointVerticalDx(index, item, dx, dy)

when declared(newScrollSelectionFormVericalDxHook1):
    newScrollSelectionFormVericalDxHook1 = proc (scrollSelectionForm: ScrollSelectionForm): ItemIndexDx = newScrollSelectionFormVericalDx(scrollSelectionForm)

