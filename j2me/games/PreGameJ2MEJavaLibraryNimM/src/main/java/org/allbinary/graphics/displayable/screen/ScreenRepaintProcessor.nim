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
# package org.allbinary.graphics.displayable.screen

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule

type
    ScreenRepaintProcessor* = ref object of Processor
        displayable*: Displayable

proc newScreenRepaintProcessor*(displayable: Displayable): ScreenRepaintProcessor
proc initScreenRepaintProcessor*(this: ScreenRepaintProcessor, displayable: Displayable)
method process*(this: ScreenRepaintProcessor)
import org/allbinary/graphics/displayable/screen/ScreenRepaintUtil as ScreenRepaintUtilModule
export ScreenRepaintUtilModule


# Java field initializers run after the base initializer
proc initFieldsScreenRepaintProcessor(this: ScreenRepaintProcessor) =
    
    discard

proc initScreenRepaintProcessor*(this: ScreenRepaintProcessor, displayable: Displayable) =
        initProcessor(this)
        this.initFieldsScreenRepaintProcessor()
        this.displayable = displayable

proc newScreenRepaintProcessor*(displayable: Displayable): ScreenRepaintProcessor =
    result = ScreenRepaintProcessor()
    initScreenRepaintProcessor(result, displayable)

method process*(this: ScreenRepaintProcessor) =
        ScreenRepaintUtil.repaint(this.displayable)

when declared(newScreenRepaintProcessorHook1):
    newScreenRepaintProcessorHook1 = proc (displayable: Displayable): Processor = newScreenRepaintProcessor(displayable)

