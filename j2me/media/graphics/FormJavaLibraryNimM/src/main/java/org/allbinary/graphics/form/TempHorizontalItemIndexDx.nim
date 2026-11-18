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
    TempHorizontalItemIndexDx* = ref object of ItemIndexDx
        scrollCurrentSelectionForm*: ScrollCurrentSelectionForm

proc newTempHorizontalItemIndexDx*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): TempHorizontalItemIndexDx
proc initTempHorizontalItemIndexDx*(this: TempHorizontalItemIndexDx, scrollCurrentSelectionForm: ScrollCurrentSelectionForm)
method getDx*(this: TempHorizontalItemIndexDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsTempHorizontalItemIndexDx(this: TempHorizontalItemIndexDx) =
    
    discard

proc initTempHorizontalItemIndexDx*(this: TempHorizontalItemIndexDx, scrollCurrentSelectionForm: ScrollCurrentSelectionForm) =
        initItemIndexDx(this)
        this.initFieldsTempHorizontalItemIndexDx()
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm

proc newTempHorizontalItemIndexDx*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): TempHorizontalItemIndexDx =
    result = TempHorizontalItemIndexDx()
    initTempHorizontalItemIndexDx(result, scrollCurrentSelectionForm)

method getDx*(this: TempHorizontalItemIndexDx, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.discardable.} =
        return this.scrollCurrentSelectionForm.getXTempHorizontalForm(index, item, dx, dy)

when declared(newTempHorizontalItemIndexDxHook1):
    newTempHorizontalItemIndexDxHook1 = proc (scrollCurrentSelectionForm: ScrollCurrentSelectionForm): ItemIndexDx = newTempHorizontalItemIndexDx(scrollCurrentSelectionForm)

