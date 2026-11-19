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
import java/lang/System as SystemModule
export SystemModule
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule

#This is mainly for network communications.
type
    SecondaryThreadPool* = ref object of ThreadPool

proc newSecondaryThreadPool*(poolName: string, numThreads: int32, priority: int32): SecondaryThreadPool
proc initSecondaryThreadPool*(this: SecondaryThreadPool, poolName: string, numThreads: int32, priority: int32)
proc getInstance*(t: typedesc[SecondaryThreadPool]): ThreadPool {.discardable.}
method runTask*(this: SecondaryThreadPool, task: Runnable)
method startTask*(this: SecondaryThreadPool, task: Runnable)
method completedTask*(this: SecondaryThreadPool, task: Runnable)
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var SecondaryThreadPool_instanceValue: ThreadPool
var SecondaryThreadPool_instanceSet = false
proc instance*(t: typedesc[SecondaryThreadPool]): ThreadPool =
    if not SecondaryThreadPool_instanceSet:
        SecondaryThreadPool_instanceSet = true
        SecondaryThreadPool_instanceValue = newSecondaryThreadPool("Secondary", 1, ThreadPool.NORMAL_PRIORITY)
    SecondaryThreadPool_instanceValue

proc getInstance*(t: typedesc[SecondaryThreadPool]): ThreadPool {.discardable.} =
        return SecondaryThreadPool.instance

proc initSecondaryThreadPool*(this: SecondaryThreadPool, poolName: string, numThreads: int32, priority: int32) =
        initThreadPool(this, poolName, numThreads, priority)

proc newSecondaryThreadPool*(poolName: string, numThreads: int32, priority: int32): SecondaryThreadPool =
    result = SecondaryThreadPool()
    initSecondaryThreadPool(result, poolName, numThreads, priority)

method runTask*(this: SecondaryThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK)
        jSuperStatement(procCall ThreadPool(this).runTask(task))

method startTask*(this: SecondaryThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.commonStrings.RUN)

method completedTask*(this: SecondaryThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.commonStrings.RUN)

when declared(newSecondaryThreadPoolHook3):
    newSecondaryThreadPoolHook3 = proc (poolName: string, numThreads: int32, priority: int32): ThreadPool = newSecondaryThreadPool(poolName, numThreads, priority)

