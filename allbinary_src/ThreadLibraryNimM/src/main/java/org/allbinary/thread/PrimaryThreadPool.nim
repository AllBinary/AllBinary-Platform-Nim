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

type
    PrimaryThreadPool* = ref object of ThreadPool

proc newPrimaryThreadPool*(poolName: string, numThreads: int32, priority: int32): PrimaryThreadPool
proc initPrimaryThreadPool*(this: PrimaryThreadPool, poolName: string, numThreads: int32, priority: int32)
proc getInstance*(t: typedesc[PrimaryThreadPool]): ThreadPool {.discardable.}
method runTask*(this: PrimaryThreadPool, task: Runnable)
method startTask*(this: PrimaryThreadPool, task: Runnable)
method completedTask*(this: PrimaryThreadPool, task: Runnable)
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var PrimaryThreadPool_THREAD_POOLValue: ThreadPool
var PrimaryThreadPool_THREAD_POOLSet = false
proc THREAD_POOLStatic*(t: typedesc[PrimaryThreadPool]): ThreadPool =
    if not PrimaryThreadPool_THREAD_POOLSet:
        PrimaryThreadPool_THREAD_POOLSet = true
        PrimaryThreadPool_THREAD_POOLValue = newThreadPool("Primary", 1, ThreadPool.NORMAL_PRIORITY)
    PrimaryThreadPool_THREAD_POOLValue

proc getInstance*(t: typedesc[PrimaryThreadPool]): ThreadPool {.discardable.} =
        return PrimaryThreadPool.THREAD_POOLStatic

proc initPrimaryThreadPool*(this: PrimaryThreadPool, poolName: string, numThreads: int32, priority: int32) =
        initThreadPool(this, poolName, numThreads, priority)

proc newPrimaryThreadPool*(poolName: string, numThreads: int32, priority: int32): PrimaryThreadPool =
    result = PrimaryThreadPool()
    initPrimaryThreadPool(result, poolName, numThreads, priority)

method runTask*(this: PrimaryThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK)
        procCall ThreadPool(this).runTask(task)

method startTask*(this: PrimaryThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString(task)).toString(), this, this.commonStrings.RUN)

method completedTask*(this: PrimaryThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString(task)).toString(), this, this.commonStrings.RUN)

when declared(newPrimaryThreadPoolHook3):
    newPrimaryThreadPoolHook3 = proc (poolName: string, numThreads: int32, priority: int32): ThreadPool = newPrimaryThreadPool(poolName, numThreads, priority)

