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
    TempHorizontalFormProcessor* = ref object of Processor
        scrollCurrentSelectionForm*: ScrollCurrentSelectionForm

proc newTempHorizontalFormProcessor*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): TempHorizontalFormProcessor
proc initTempHorizontalFormProcessor*(this: TempHorizontalFormProcessor, scrollCurrentSelectionForm: ScrollCurrentSelectionForm)
method process*(this: TempHorizontalFormProcessor)


# Java field initializers run after the base initializer
proc initFieldsTempHorizontalFormProcessor(this: TempHorizontalFormProcessor) =
    
    discard

proc initTempHorizontalFormProcessor*(this: TempHorizontalFormProcessor, scrollCurrentSelectionForm: ScrollCurrentSelectionForm) =
        initProcessor(this)
        this.initFieldsTempHorizontalFormProcessor()
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm

proc newTempHorizontalFormProcessor*(scrollCurrentSelectionForm: ScrollCurrentSelectionForm): TempHorizontalFormProcessor =
    result = TempHorizontalFormProcessor()
    initTempHorizontalFormProcessor(result, scrollCurrentSelectionForm)

method process*(this: TempHorizontalFormProcessor) =
        this.scrollCurrentSelectionForm.processTempHorizontalForm()
        this.scrollCurrentSelectionForm.processor = Processor.getInstance()

when declared(newTempHorizontalFormProcessorHook1):
    newTempHorizontalFormProcessorHook1 = proc (scrollCurrentSelectionForm: ScrollCurrentSelectionForm): Processor = newTempHorizontalFormProcessor(scrollCurrentSelectionForm)

