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
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule

type
    MidletExitProcessorFactory* = ref object of JObject

proc newMidletExitProcessorFactory*(): MidletExitProcessorFactory
proc getInstance*(t: typedesc[MidletExitProcessorFactory]): MidletExitProcessorFactory {.discardable.}
method getExitInstance*(this: MidletExitProcessorFactory, midlet: MIDlet): Processor {.base, discardable.}
import org/allbinary/AppletUtil as AppletUtilModule
export AppletUtilModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/midlet/MidletExitProcessor as MidletExitProcessorModule
export MidletExitProcessorModule

var MidletExitProcessorFactory_instanceValue: MidletExitProcessorFactory
var MidletExitProcessorFactory_instanceSet = false
proc instance*(t: typedesc[MidletExitProcessorFactory]): MidletExitProcessorFactory =
    if not MidletExitProcessorFactory_instanceSet:
        MidletExitProcessorFactory_instanceSet = true
        MidletExitProcessorFactory_instanceValue = newMidletExitProcessorFactory()
    MidletExitProcessorFactory_instanceValue

proc initMidletExitProcessorFactory*(this: MidletExitProcessorFactory) =
    discard

proc newMidletExitProcessorFactory*(): MidletExitProcessorFactory =
    result = MidletExitProcessorFactory()
    initMidletExitProcessorFactory(result)

proc getInstance*(t: typedesc[MidletExitProcessorFactory]): MidletExitProcessorFactory {.discardable.} =
        return MidletExitProcessorFactory.instance

method getExitInstance*(this: MidletExitProcessorFactory, midlet: MIDlet): Processor {.base, discardable.} =
        if AppletUtil.isAppletLoader(midlet) or J2MEUtil.isJ2ME():
            return Processor.getInstance()
        else:
            return newMidletExitProcessor(midlet)

