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
import org/allbinary/graphics/form/PaintableForm as PaintableFormModule
export PaintableFormModule

type
    FormPaintable* = ref object of Paintable
        form*: PaintableForm

proc newFormPaintable*(form: PaintableForm): FormPaintable
proc initFormPaintable*(this: FormPaintable, form: PaintableForm)
method paint*(this: FormPaintable, graphics: Graphics)
method getForm*(this: FormPaintable): PaintableForm {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsFormPaintable(this: FormPaintable) =
    
    discard

proc initFormPaintable*(this: FormPaintable, form: PaintableForm) =
        initPaintable(this)
        this.initFieldsFormPaintable()
        this.form = form

proc newFormPaintable*(form: PaintableForm): FormPaintable =
    result = FormPaintable()
    initFormPaintable(result, form)

method paint*(this: FormPaintable, graphics: Graphics) =
        this.form.paint(graphics)

method getForm*(this: FormPaintable): PaintableForm {.base, discardable.} =
        return this.form

when declared(newFormPaintableHook1):
    newFormPaintableHook1 = proc (form: PaintableForm): Paintable = newFormPaintable(form)

