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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java

type
    Processor* = ref object of JObject

proc newProcessor*(): Processor
proc getInstance*(t: typedesc[Processor]): Processor {.discardable.}
method process*(this: Processor) {.base.}
method processt*(this: Processor, timeDelta: int64) {.base.}

var Processor_SINGLETONValue: Processor
var Processor_SINGLETONSet = false
proc SINGLETON*(t: typedesc[Processor]): Processor =
    if not Processor_SINGLETONSet:
        Processor_SINGLETONSet = true
        Processor_SINGLETONValue = newProcessor()
    Processor_SINGLETONValue

proc initProcessor*(this: Processor) =
    discard

proc newProcessor*(): Processor =
    result = Processor()
    initProcessor(result)

proc getInstance*(t: typedesc[Processor]): Processor {.discardable.} =
        return Processor.SINGLETON

method process*(this: Processor) {.base.} =
        discard

method processt*(this: Processor, timeDelta: int64) {.base.} =
        discard

