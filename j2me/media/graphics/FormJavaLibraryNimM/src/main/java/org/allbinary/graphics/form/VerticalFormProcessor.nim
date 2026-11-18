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
    VerticalFormProcessor* = ref object of Processor
        scrollCurrentSelectionForm*: ScrollCurrentSelectionForm

proc newVerticalFormProcessor*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): VerticalFormProcessor
proc initVerticalFormProcessor*(this: VerticalFormProcessor, scrollCurrentSelectionForm: ScrollCurrentSelectionForm)
method process*(this: VerticalFormProcessor)


# Java field initializers run after the base initializer
proc initFieldsVerticalFormProcessor(this: VerticalFormProcessor) =
    
    discard

proc initVerticalFormProcessor*(this: VerticalFormProcessor, scrollCurrentSelectionForm: ScrollCurrentSelectionForm) =
        initProcessor(this)
        this.initFieldsVerticalFormProcessor()
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm

proc newVerticalFormProcessor*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): VerticalFormProcessor =
    result = VerticalFormProcessor()
    initVerticalFormProcessor(result, scrollCurrentSelectionForm)

method process*(this: VerticalFormProcessor) =
        this.scrollCurrentSelectionForm.processVerticalForm()
        this.scrollCurrentSelectionForm.processor = Processor.getInstance()

when declared(newVerticalFormProcessorHook1):
    newVerticalFormProcessorHook1 = proc (scrollCurrentSelectionForm: ScrollCurrentSelectionForm): Processor = newVerticalFormProcessor(scrollCurrentSelectionForm)

