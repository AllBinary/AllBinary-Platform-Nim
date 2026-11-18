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
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/graphics/form/ScrollCurrentSelectionForm as ScrollCurrentSelectionFormModule
export ScrollCurrentSelectionFormModule

type
    HorizontalFormProcessor* = ref object of Processor
        scrollCurrentSelectionForm*: ScrollCurrentSelectionForm

proc newHorizontalFormProcessor*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): HorizontalFormProcessor
proc initHorizontalFormProcessor*(this: HorizontalFormProcessor, scrollCurrentSelectionForm: ScrollCurrentSelectionForm)
method process*(this: HorizontalFormProcessor)


# Java field initializers run after the base initializer
proc initFieldsHorizontalFormProcessor(this: HorizontalFormProcessor) =
    
    discard

proc initHorizontalFormProcessor*(this: HorizontalFormProcessor, scrollCurrentSelectionForm: ScrollCurrentSelectionForm) =
        initProcessor(this)
        this.initFieldsHorizontalFormProcessor()
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm

proc newHorizontalFormProcessor*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): HorizontalFormProcessor =
    result = HorizontalFormProcessor()
    initHorizontalFormProcessor(result, scrollCurrentSelectionForm)

method process*(this: HorizontalFormProcessor) =
        this.scrollCurrentSelectionForm.processHorizontalForm()
        this.scrollCurrentSelectionForm.processor = Processor.getInstance()

when declared(newHorizontalFormProcessorHook1):
    newHorizontalFormProcessorHook1 = proc (scrollCurrentSelectionForm: ScrollCurrentSelectionForm): Processor = newHorizontalFormProcessor(scrollCurrentSelectionForm)

