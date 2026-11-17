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
import org/allbinary/thread/ARunnable as ARunnableModule
export ARunnableModule

type
    NullRunnable* = ref object of ARunnable

proc newNullRunnable*(): NullRunnable
proc initNullRunnable*(this: NullRunnable)
proc getInstance*(t: typedesc[NullRunnable]): NullRunnable {.discardable.}

var NullRunnable_instanceValue: NullRunnable
var NullRunnable_instanceSet = false
proc instance*(t: typedesc[NullRunnable]): NullRunnable =
    if not NullRunnable_instanceSet:
        NullRunnable_instanceSet = true
        NullRunnable_instanceValue = newNullRunnable()
    NullRunnable_instanceValue

proc getInstance*(t: typedesc[NullRunnable]): NullRunnable {.discardable.} =
        return NullRunnable.instance

proc initNullRunnable*(this: NullRunnable) =
        initARunnable(this)
        discard

proc newNullRunnable*(): NullRunnable =
    result = NullRunnable()
    initNullRunnable(result)

when declared(newNullRunnableHook0):
    newNullRunnableHook0 = proc (): ARunnable = newNullRunnable()

