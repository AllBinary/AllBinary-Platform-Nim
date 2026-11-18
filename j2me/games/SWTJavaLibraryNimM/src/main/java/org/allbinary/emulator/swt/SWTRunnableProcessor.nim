#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.emulator.swt

{.warning[UnusedImport]: off.}
import allbinary_java
import org/eclipse/swt/widgets/Display as DisplayModule
export DisplayModule
import org/allbinary/emulator/swt/SWTProcessor as SWTProcessorModule
export SWTProcessorModule

type
    SWTRunnableProcessor* = ref object of SWTProcessor

proc newSWTRunnableProcessor*(): SWTRunnableProcessor
proc initSWTRunnableProcessor*(this: SWTRunnableProcessor)
proc getInstance*(t: typedesc[SWTRunnableProcessor]): SWTRunnableProcessor {.discardable.}
method process*(this: SWTRunnableProcessor, display: Display)

var SWTRunnableProcessor_instanceRValue: SWTRunnableProcessor
var SWTRunnableProcessor_instanceRSet = false
proc instanceR*(t: typedesc[SWTRunnableProcessor]): SWTRunnableProcessor =
    if not SWTRunnableProcessor_instanceRSet:
        SWTRunnableProcessor_instanceRSet = true
        SWTRunnableProcessor_instanceRValue = newSWTRunnableProcessor()
    SWTRunnableProcessor_instanceRValue

proc getInstance*(t: typedesc[SWTRunnableProcessor]): SWTRunnableProcessor {.discardable.} =
        return SWTRunnableProcessor.instanceR

proc initSWTRunnableProcessor*(this: SWTRunnableProcessor) =
        initSWTProcessor(this)
        discard

proc newSWTRunnableProcessor*(): SWTRunnableProcessor =
    result = SWTRunnableProcessor()
    initSWTRunnableProcessor(result)

method process*(this: SWTRunnableProcessor, display: Display) =
        this.runnable.run()

when declared(newSWTRunnableProcessorHook0):
    newSWTRunnableProcessorHook0 = proc (): SWTProcessor = newSWTRunnableProcessor()

