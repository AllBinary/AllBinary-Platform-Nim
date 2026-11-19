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
import java/lang/System as SystemModule
export SystemModule
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule

type
    MusicThreadPool* = ref object of ThreadPool

proc newMusicThreadPool*(poolName: string, numThreads: int32, priority: int32): MusicThreadPool
proc initMusicThreadPool*(this: MusicThreadPool, poolName: string, numThreads: int32, priority: int32)
proc getInstance*(t: typedesc[MusicThreadPool]): ThreadPool {.discardable.}
method runTask*(this: MusicThreadPool, task: Runnable)
method startTask*(this: MusicThreadPool, task: Runnable)
method completedTask*(this: MusicThreadPool, task: Runnable)
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var MusicThreadPool_THREAD_POOLValue: ThreadPool
var MusicThreadPool_THREAD_POOLSet = false
proc THREAD_POOLStatic*(t: typedesc[MusicThreadPool]): ThreadPool =
    if not MusicThreadPool_THREAD_POOLSet:
        MusicThreadPool_THREAD_POOLSet = true
        MusicThreadPool_THREAD_POOLValue = newThreadPool("Music", 2, ThreadPool.NORMAL_PRIORITY)
    MusicThreadPool_THREAD_POOLValue

proc getInstance*(t: typedesc[MusicThreadPool]): ThreadPool {.discardable.} =
        return MusicThreadPool.THREAD_POOLStatic

proc initMusicThreadPool*(this: MusicThreadPool, poolName: string, numThreads: int32, priority: int32) =
        initThreadPool(this, poolName, numThreads, priority)

proc newMusicThreadPool*(poolName: string, numThreads: int32, priority: int32): MusicThreadPool =
    result = MusicThreadPool()
    initMusicThreadPool(result, poolName, numThreads, priority)

method runTask*(this: MusicThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK)
        jSuperStatement(procCall ThreadPool(this).runTask(task))

method startTask*(this: MusicThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.commonStrings.RUN)

method completedTask*(this: MusicThreadPool, task: Runnable) =
        this.logUtil.putF(newStringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString(task)).appendlong(jCurrentTimeMillis()).toString(), this, this.commonStrings.RUN)

when declared(newMusicThreadPoolHook3):
    newMusicThreadPoolHook3 = proc (poolName: string, numThreads: int32, priority: int32): ThreadPool = newMusicThreadPool(poolName, numThreads, priority)

