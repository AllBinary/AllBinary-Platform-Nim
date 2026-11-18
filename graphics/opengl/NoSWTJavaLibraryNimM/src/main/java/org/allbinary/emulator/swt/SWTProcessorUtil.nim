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
import org/allbinary/emulator/swt/SWTProcessor as SWTProcessorModule
export SWTProcessorModule

type
    SWTProcessorUtil* = ref object of JObject
        swtProcessor*: SWTProcessor

proc newSWTProcessorUtil*(): SWTProcessorUtil
proc getInstance*(t: typedesc[SWTProcessorUtil]): SWTProcessorUtil {.discardable.}

var SWTProcessorUtil_instanceValue: SWTProcessorUtil
var SWTProcessorUtil_instanceSet = false
proc instance*(t: typedesc[SWTProcessorUtil]): SWTProcessorUtil =
    if not SWTProcessorUtil_instanceSet:
        SWTProcessorUtil_instanceSet = true
        SWTProcessorUtil_instanceValue = newSWTProcessorUtil()
    SWTProcessorUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSWTProcessorUtil(this: SWTProcessorUtil) =
    this.swtProcessor = SWTProcessor.getInstance()
    discard

proc initSWTProcessorUtil*(this: SWTProcessorUtil) =
    this.initFieldsSWTProcessorUtil()

proc newSWTProcessorUtil*(): SWTProcessorUtil =
    result = SWTProcessorUtil()
    initSWTProcessorUtil(result)

proc getInstance*(t: typedesc[SWTProcessorUtil]): SWTProcessorUtil {.discardable.} =
        return SWTProcessorUtil.instance

