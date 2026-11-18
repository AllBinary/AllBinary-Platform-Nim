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
    ScrollSelectionFormHorizontalDx* = ref object of ItemIndexDx
        scrollSelectionForm*: ScrollSelectionForm

proc newScrollSelectionFormHorizontalDx*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormHorizontalDx
proc initScrollSelectionFormHorizontalDx*(this: ScrollSelectionFormHorizontalDx, scrollSelectionForm: ScrollSelectionForm)
method getDx*(this: ScrollSelectionFormHorizontalDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsScrollSelectionFormHorizontalDx(this: ScrollSelectionFormHorizontalDx) =
    
    discard

proc initScrollSelectionFormHorizontalDx*(this: ScrollSelectionFormHorizontalDx, scrollSelectionForm: ScrollSelectionForm) =
        initItemIndexDx(this)
        this.initFieldsScrollSelectionFormHorizontalDx()
        this.scrollSelectionForm = scrollSelectionForm

proc newScrollSelectionFormHorizontalDx*(scrollSelectionForm: ScrollSelectionForm): ScrollSelectionFormHorizontalDx =
    result = ScrollSelectionFormHorizontalDx()
    initScrollSelectionFormHorizontalDx(result, scrollSelectionForm)

method getDx*(this: ScrollSelectionFormHorizontalDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollSelectionForm.getSelectedIndexForPointHorizontalDx(index, item, dx, dy)

when declared(newScrollSelectionFormHorizontalDxHook1):
    newScrollSelectionFormHorizontalDxHook1 = proc (scrollSelectionForm: ScrollSelectionForm): ItemIndexDx = newScrollSelectionFormHorizontalDx(scrollSelectionForm)

