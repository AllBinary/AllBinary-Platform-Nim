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
# package org.allbinary.debug

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/debug/DebugInterface as DebugInterfaceModule
export DebugInterfaceModule

type
    NoDebug* = ref object of DebugInterface

proc newNoDebug*(): NoDebug
proc getInstance*(t: typedesc[NoDebug]): DebugInterface {.discardable.}
method start*(this: NoDebug)
method stop*(this: NoDebug)
method getMaxTime*(this: NoDebug): int64 {.discardable.}
method getStartTime*(this: NoDebug): int64 {.discardable.}
method isRunning*(this: NoDebug): bool {.discardable.}

var NoDebug_SINGLETONValue: DebugInterface
var NoDebug_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NoDebug]): DebugInterface =
    if not NoDebug_SINGLETONSet:
        NoDebug_SINGLETONSet = true
        NoDebug_SINGLETONValue = newNoDebug()
    NoDebug_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[NoDebug], value: DebugInterface) =
    NoDebug_SINGLETONSet = true
    NoDebug_SINGLETONValue = value

proc initNoDebug*(this: NoDebug) =
    discard

proc newNoDebug*(): NoDebug =
    result = NoDebug()
    initNoDebug(result)

proc getInstance*(t: typedesc[NoDebug]): DebugInterface {.discardable.} =
        return NoDebug.SINGLETON

method start*(this: NoDebug) =
        discard

method stop*(this: NoDebug) =
        discard

method getMaxTime*(this: NoDebug): int64 {.discardable.} =
        return 10000'i64

method getStartTime*(this: NoDebug): int64 {.discardable.} =
        return 0'i64

method isRunning*(this: NoDebug): bool {.discardable.} =
        return false

