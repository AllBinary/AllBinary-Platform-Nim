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
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule

type
    PriorityRunnable* = ref object of Runnable


method getPriority*(this: PriorityRunnable): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getPriority")

method isDone*(this: PriorityRunnable): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isDone")

method reset*(this: PriorityRunnable) {.base.} =
        raise newJException("AbstractMethodError", "reset")

