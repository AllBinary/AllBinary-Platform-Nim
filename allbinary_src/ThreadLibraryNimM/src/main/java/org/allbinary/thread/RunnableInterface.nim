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
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import java/lang/Runnable as RunnableModule
export RunnableModule

type
    RunnableInterface* = ref object of Runnable


method isRunning*(this: RunnableInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isRunning")

method setRunning*(this: RunnableInterface, isRunning: bool) {.base.} =
        raise newJException("AbstractMethodError", "setRunning")

method setThread*(this: RunnableInterface, thread: JThread) {.base.} =
        raise newJException("AbstractMethodError", "setThread")

