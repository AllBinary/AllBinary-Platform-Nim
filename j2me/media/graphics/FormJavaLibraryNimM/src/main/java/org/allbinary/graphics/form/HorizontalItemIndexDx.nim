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
import org/allbinary/graphics/form/ScrollCurrentSelectionForm as ScrollCurrentSelectionFormModule
export ScrollCurrentSelectionFormModule

type
    HorizontalItemIndexDx* = ref object of ItemIndexDx
        scrollCurrentSelectionForm*: ScrollCurrentSelectionForm

proc newHorizontalItemIndexDx*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): HorizontalItemIndexDx
proc initHorizontalItemIndexDx*(this: HorizontalItemIndexDx, scrollCurrentSelectionForm: ScrollCurrentSelectionForm)
method getDx*(this: HorizontalItemIndexDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsHorizontalItemIndexDx(this: HorizontalItemIndexDx) =
    
    discard

proc initHorizontalItemIndexDx*(this: HorizontalItemIndexDx, scrollCurrentSelectionForm: ScrollCurrentSelectionForm) =
        initItemIndexDx(this)
        this.initFieldsHorizontalItemIndexDx()
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm

proc newHorizontalItemIndexDx*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): HorizontalItemIndexDx =
    result = HorizontalItemIndexDx()
    initHorizontalItemIndexDx(result, scrollCurrentSelectionForm)

method getDx*(this: HorizontalItemIndexDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollCurrentSelectionForm.getXHorizontalForm(index, item, dx, dy)

when declared(newHorizontalItemIndexDxHook1):
    newHorizontalItemIndexDxHook1 = proc (scrollCurrentSelectionForm: ScrollCurrentSelectionForm): ItemIndexDx = newHorizontalItemIndexDx(scrollCurrentSelectionForm)

