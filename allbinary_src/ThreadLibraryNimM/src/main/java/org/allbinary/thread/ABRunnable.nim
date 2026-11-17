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
import java/lang/Thread as ThreadModule
export ThreadModule
import org/allbinary/thread/RunnableInterface as RunnableInterfaceModule
export RunnableInterfaceModule

type
    ABRunnable* = ref object of RunnableInterface
        running*: bool

proc newABRunnable*(): ABRunnable
method setThread*(this: ABRunnable, thread: JThread)
method isRunning*(this: ABRunnable): bool {.discardable.}
method setRunning*(this: ABRunnable, running: bool)
method run*(this: ABRunnable)
method getType*(this: ABRunnable): int32 {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsABRunnable(this: ABRunnable) =
    this.running = false
    discard

proc initABRunnable*(this: ABRunnable) =
    this.initFieldsABRunnable()

proc newABRunnable*(): ABRunnable =
    result = ABRunnable()
    initABRunnable(result)

method setThread*(this: ABRunnable, thread: JThread) =
        discard

method isRunning*(this: ABRunnable): bool {.discardable.} =
        return this.running

method setRunning*(this: ABRunnable, running: bool) =
        this.running = running

method run*(this: ABRunnable) =
        discard

method getType*(this: ABRunnable): int32 {.base, discardable.} =
        return -1

