#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/thread/PriorityRunnable as PriorityRunnableModule
export PriorityRunnableModule

type
    NullPriorityRunnable* = ref object of PriorityRunnable

proc newNullPriorityRunnable*(): NullPriorityRunnable
method getPriority*(this: NullPriorityRunnable): int32 {.discardable.}
method isDone*(this: NullPriorityRunnable): bool {.discardable.}
method reset*(this: NullPriorityRunnable)
method run*(this: NullPriorityRunnable)


proc initNullPriorityRunnable*(this: NullPriorityRunnable) =
    discard

proc newNullPriorityRunnable*(): NullPriorityRunnable =
    result = NullPriorityRunnable()
    initNullPriorityRunnable(result)

method getPriority*(this: NullPriorityRunnable): int32 {.discardable.} =
        return 0

method isDone*(this: NullPriorityRunnable): bool {.discardable.} =
        return true

method reset*(this: NullPriorityRunnable) =
        discard

method run*(this: NullPriorityRunnable) =
        discard

