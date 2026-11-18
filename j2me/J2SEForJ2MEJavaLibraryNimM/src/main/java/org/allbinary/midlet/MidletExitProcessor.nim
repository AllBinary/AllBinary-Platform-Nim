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
import java/lang/System as SystemModule
export SystemModule
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule

type
    MidletExitProcessor* = ref object of Processor
        midlet*: MIDlet

proc newMidletExitProcessor*(midlet: MIDlet): MidletExitProcessor
proc initMidletExitProcessor*(this: MidletExitProcessor, midlet: MIDlet)
method process*(this: MidletExitProcessor)


# Java field initializers run after the base initializer
proc initFieldsMidletExitProcessor(this: MidletExitProcessor) =
    
    discard

proc initMidletExitProcessor*(this: MidletExitProcessor, midlet: MIDlet) =
        initProcessor(this)
        this.initFieldsMidletExitProcessor()
        this.midlet = midlet

proc newMidletExitProcessor*(midlet: MIDlet): MidletExitProcessor =
    result = MidletExitProcessor()
    initMidletExitProcessor(result, midlet)

method process*(this: MidletExitProcessor) =
        System.exit(0)

when declared(newMidletExitProcessorHook1):
    newMidletExitProcessorHook1 = proc (midlet: MIDlet): Processor = newMidletExitProcessor(midlet)

