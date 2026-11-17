#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/PriorityQueue as PriorityQueueModule
export PriorityQueueModule

type
    ABPriorityQueue* = ref object of PriorityQueue

proc newABPriorityQueue*(): ABPriorityQueue


proc initABPriorityQueue*(this: ABPriorityQueue) =
    initPriorityQueue(this)

proc newABPriorityQueue*(): ABPriorityQueue =
    result = ABPriorityQueue()
    initABPriorityQueue(result)

when declared(newABPriorityQueueHook0):
    newABPriorityQueueHook0 = proc (): PriorityQueue = newABPriorityQueue()

