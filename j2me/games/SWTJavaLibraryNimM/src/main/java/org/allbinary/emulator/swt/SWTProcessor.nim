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
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/eclipse/swt/widgets/Display as DisplayModule
export DisplayModule

type
    SWTProcessor* = ref object of JObject
        runnable*: Runnable

proc newSWTProcessor*(): SWTProcessor
proc initSWTProcessor*(this: SWTProcessor)
proc getInstance*(t: typedesc[SWTProcessor]): SWTProcessor {.discardable.}
method process*(this: SWTProcessor, display: Display) {.base.}
import org/allbinary/thread/NullRunnable as NullRunnableModule
export NullRunnableModule

var SWTProcessor_instanceValue: SWTProcessor
var SWTProcessor_instanceSet = false
proc instance*(t: typedesc[SWTProcessor]): SWTProcessor =
    if not SWTProcessor_instanceSet:
        SWTProcessor_instanceSet = true
        SWTProcessor_instanceValue = newSWTProcessor()
    SWTProcessor_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSWTProcessor(this: SWTProcessor) =
    this.runnable = NullRunnable.getInstance()
    discard

proc getInstance*(t: typedesc[SWTProcessor]): SWTProcessor {.discardable.} =
        return SWTProcessor.instance

proc initSWTProcessor*(this: SWTProcessor) =
        this.initFieldsSWTProcessor()
        discard

proc newSWTProcessor*(): SWTProcessor =
    result = SWTProcessor()
    initSWTProcessor(result)

method process*(this: SWTProcessor, display: Display) {.base.} =
        display.sleep()

