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

type
    DebugInterface* = ref object of JObject


method start*(this: DebugInterface) {.base.} =
        raise newJException("AbstractMethodError", "start")

method stop*(this: DebugInterface) {.base.} =
        raise newJException("AbstractMethodError", "stop")

method getStartTime*(this: DebugInterface): int64 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getStartTime")

method getMaxTime*(this: DebugInterface): int64 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMaxTime")

method isRunning*(this: DebugInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isRunning")

