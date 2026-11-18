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
    ScreenRepaintProcessorFactory* = ref object of JObject

proc newScreenRepaintProcessorFactory*(): ScreenRepaintProcessorFactory
proc initScreenRepaintProcessorFactory*(this: ScreenRepaintProcessorFactory)
proc getInstance*(t: typedesc[ScreenRepaintProcessorFactory]): ScreenRepaintProcessorFactory {.discardable.}
method create*(this: ScreenRepaintProcessorFactory, displayable: Displayable): Processor {.base, discardable.}
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/graphics/displayable/screen/ScreenRepaintProcessor as ScreenRepaintProcessorModule
export ScreenRepaintProcessorModule

var ScreenRepaintProcessorFactory_instanceValue: ScreenRepaintProcessorFactory
var ScreenRepaintProcessorFactory_instanceSet = false
proc instance*(t: typedesc[ScreenRepaintProcessorFactory]): ScreenRepaintProcessorFactory =
    if not ScreenRepaintProcessorFactory_instanceSet:
        ScreenRepaintProcessorFactory_instanceSet = true
        ScreenRepaintProcessorFactory_instanceValue = newScreenRepaintProcessorFactory()
    ScreenRepaintProcessorFactory_instanceValue

proc getInstance*(t: typedesc[ScreenRepaintProcessorFactory]): ScreenRepaintProcessorFactory {.discardable.} =
        return ScreenRepaintProcessorFactory.instance

proc initScreenRepaintProcessorFactory*(this: ScreenRepaintProcessorFactory) =
        discard
        discard

proc newScreenRepaintProcessorFactory*(): ScreenRepaintProcessorFactory =
    result = ScreenRepaintProcessorFactory()
    initScreenRepaintProcessorFactory(result)

method create*(this: ScreenRepaintProcessorFactory, displayable: Displayable): Processor {.base, discardable.} =
        if (not J2MEUtil.isJ2ME()):
            return newScreenRepaintProcessor(displayable)
        else:
            return Processor.getInstance()

