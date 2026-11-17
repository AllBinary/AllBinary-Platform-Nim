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
import org/allbinary/thread/ABRunnable as ABRunnableModule
export ABRunnableModule

type
    NullABRunnable* = ref object of ABRunnable

proc newNullABRunnable*(): NullABRunnable
proc getInstance*(t: typedesc[NullABRunnable]): NullABRunnable {.discardable.}
method isRunning*(this: NullABRunnable): bool {.discardable.}

var NullABRunnable_instanceValue: NullABRunnable
var NullABRunnable_instanceSet = false
proc instance*(t: typedesc[NullABRunnable]): NullABRunnable =
    if not NullABRunnable_instanceSet:
        NullABRunnable_instanceSet = true
        NullABRunnable_instanceValue = newNullABRunnable()
    NullABRunnable_instanceValue

proc initNullABRunnable*(this: NullABRunnable) =
    initABRunnable(this)

proc newNullABRunnable*(): NullABRunnable =
    result = NullABRunnable()
    initNullABRunnable(result)

proc getInstance*(t: typedesc[NullABRunnable]): NullABRunnable {.discardable.} =
        return NullABRunnable.instance

method isRunning*(this: NullABRunnable): bool {.discardable.} =
        return false

when declared(newNullABRunnableHook0):
    newNullABRunnableHook0 = proc (): ABRunnable = newNullABRunnable()

