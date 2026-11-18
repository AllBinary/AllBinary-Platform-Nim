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
# package org.allbinary.graphics.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/paint/ProcessPaintable as ProcessPaintableModule
export ProcessPaintableModule

type
    ProcessPaintableSingletonFactory* = ref object of JObject

proc newProcessPaintableSingletonFactory*(): ProcessPaintableSingletonFactory
proc initProcessPaintableSingletonFactory*(this: ProcessPaintableSingletonFactory)
proc getInstance*(t: typedesc[ProcessPaintableSingletonFactory]): ProcessPaintable {.discardable.}

var ProcessPaintableSingletonFactory_SINGLETONValue: ProcessPaintable
var ProcessPaintableSingletonFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[ProcessPaintableSingletonFactory]): ProcessPaintable =
    if not ProcessPaintableSingletonFactory_SINGLETONSet:
        ProcessPaintableSingletonFactory_SINGLETONSet = true
        ProcessPaintableSingletonFactory_SINGLETONValue = newProcessPaintable()
    ProcessPaintableSingletonFactory_SINGLETONValue

proc initProcessPaintableSingletonFactory*(this: ProcessPaintableSingletonFactory) =
        discard
        discard

proc newProcessPaintableSingletonFactory*(): ProcessPaintableSingletonFactory =
    result = ProcessPaintableSingletonFactory()
    initProcessPaintableSingletonFactory(result)

proc getInstance*(t: typedesc[ProcessPaintableSingletonFactory]): ProcessPaintable {.discardable.} =
        return ProcessPaintableSingletonFactory.SINGLETON

