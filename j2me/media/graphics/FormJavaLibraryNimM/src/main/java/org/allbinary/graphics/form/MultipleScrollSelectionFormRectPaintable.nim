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
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm as MultipleScrollSelectionHorizontalFormModule
export MultipleScrollSelectionHorizontalFormModule

type
    MultipleScrollSelectionFormRectPaintable* = ref object of Paintable
        multipleScrollSelectionForm*: MultipleScrollSelectionHorizontalForm

proc newMultipleScrollSelectionFormRectPaintable*(multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm): MultipleScrollSelectionFormRectPaintable
proc initMultipleScrollSelectionFormRectPaintable*(this: MultipleScrollSelectionFormRectPaintable, multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm)
method paint*(this: MultipleScrollSelectionFormRectPaintable, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsMultipleScrollSelectionFormRectPaintable(this: MultipleScrollSelectionFormRectPaintable) =
    
    discard

proc initMultipleScrollSelectionFormRectPaintable*(this: MultipleScrollSelectionFormRectPaintable, multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm) =
        initPaintable(this)
        this.initFieldsMultipleScrollSelectionFormRectPaintable()
        this.multipleScrollSelectionForm = multipleScrollSelectionForm

proc newMultipleScrollSelectionFormRectPaintable*(multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm): MultipleScrollSelectionFormRectPaintable =
    result = MultipleScrollSelectionFormRectPaintable()
    initMultipleScrollSelectionFormRectPaintable(result, multipleScrollSelectionForm)

method paint*(this: MultipleScrollSelectionFormRectPaintable, graphics: Graphics) =
        this.multipleScrollSelectionForm.fillRect(graphics)

when declared(newMultipleScrollSelectionFormRectPaintableHook1):
    newMultipleScrollSelectionFormRectPaintableHook1 = proc (multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm): Paintable = newMultipleScrollSelectionFormRectPaintable(multipleScrollSelectionForm)

