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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/thread/NullRunnable as NullRunnableModule
export NullRunnableModule
import org/allbinary/thread/ThreadPoolStrings as ThreadPoolStringsModule
export ThreadPoolStringsModule
import org/allbinary/thread/ThreadObjectUtil as ThreadObjectUtilModule
export ThreadObjectUtilModule
import org/allbinary/thread/PriorityRunnable as PriorityRunnableModule
export PriorityRunnableModule

type
    ThreadPool* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        NULL_RUNNABLE*: NullRunnable
        threadPoolStrings*: ThreadPoolStrings
        threadObjectUtil*: ThreadObjectUtil
        poolName*: string
        priority*: int32
        isAlive*: bool
        taskQueue*: BasicArrayList
        threadID*: int32
        numThreads*: int32
        runningTask*: bool

proc newThreadPool*(poolName: string, numThreads: int32, priority: int32): ThreadPool
proc initThreadPool*(this: ThreadPool, poolName: string, numThreads: int32, priority: int32)
method init*(this: ThreadPool) {.base.}
method runAPriorityTask*(this: ThreadPool) {.base.}
method runTaskWithPriority*(this: ThreadPool, task: PriorityRunnable) {.base.}
method runTask*(this: ThreadPool, task: Runnable) {.base.}
method getTask*(this: ThreadPool): Runnable {.base, discardable.}
method clear*(this: ThreadPool) {.base.}
method close*(this: ThreadPool) {.base.}
method join*(this: ThreadPool) {.base.}
method isBusy*(this: ThreadPool): bool {.base, discardable.}
method threadStarted*(this: ThreadPool) {.base.}
method threadStopped*(this: ThreadPool) {.base.}
method startTask*(this: ThreadPool, task: Runnable) {.base.}
method completedTask*(this: ThreadPool, task: Runnable) {.base.}
method createName*(this: ThreadPool): string {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/thread/PooledThread as PooledThreadModule
export PooledThreadModule

var ThreadPool_ROOT_NAMEValue: string
var ThreadPool_ROOT_NAMESet = false
proc ROOT_NAME*(t: typedesc[ThreadPool]): string =
    if not ThreadPool_ROOT_NAMESet:
        ThreadPool_ROOT_NAMESet = true
        ThreadPool_ROOT_NAMEValue = "-PooledThread-"
    ThreadPool_ROOT_NAMEValue
var ThreadPool_NORMAL_PRIORITYValue: int32
var ThreadPool_NORMAL_PRIORITYSet = false
proc NORMAL_PRIORITY*(t: typedesc[ThreadPool]): int32 =
    if not ThreadPool_NORMAL_PRIORITYSet:
        ThreadPool_NORMAL_PRIORITYSet = true
        ThreadPool_NORMAL_PRIORITYValue = JThread.NORM_PRIORITY
    ThreadPool_NORMAL_PRIORITYValue

# Java field initializers run after the base initializer
proc initFieldsThreadPool(this: ThreadPool) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.NULL_RUNNABLE = NullRunnable.getInstance()
    this.threadPoolStrings = ThreadPoolStrings.getInstance()
    this.threadObjectUtil = ThreadObjectUtil.getInstance()
    
    
    this.isAlive = false
    this.taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance()
    this.threadID = 0
    
    this.runningTask = false
    discard

proc initThreadPool*(this: ThreadPool, poolName: string, numThreads: int32, priority: int32) =
        this.initFieldsThreadPool()
        this.poolName = poolName
        this.priority = priority
        this.numThreads = numThreads

proc newThreadPool*(poolName: string, numThreads: int32, priority: int32): ThreadPool =
    result = ThreadPool()
    initThreadPool(result, poolName, numThreads, priority)

method init*(this: ThreadPool) {.base.} =
        if (not this.isAlive):
            this.isAlive = true
            this.taskQueue = newBasicArrayListD()
            var pooledThread: PooledThread = nil
            block:
                var i: int32 = 0
                while i < this.numThreads:
                    defer: i = i +% 1
                    pooledThread = newPooledThread(this)
                    pooledThread.setPriority(this.priority)
                    pooledThread.start()

method runAPriorityTask*(this: ThreadPool) {.base.} =
        raise newJException("RuntimeException", "")

method runTaskWithPriority*(this: ThreadPool, task: PriorityRunnable) {.base.} =
        block:
            if (not this.isAlive):
                this.init()
            if (not jIsNil(task)):
                let size: int32 = this.taskQueue.size()
                var runnable: PriorityRunnable = nil
                var lowerPriorityRunnable: PriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
                block:
                    var index: int32 = 0
                    while index < size:
                        defer: index = index +% 1
                        runnable = PriorityRunnable(JObject(this.taskQueue.get(index)))
                        if runnable.getPriority() > task.getPriority():
                            lowerPriorityRunnable = runnable
                            break
                if lowerPriorityRunnable == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE:
                    this.taskQueue.add(task)
                else:
                    let index: int32 = this.taskQueue.indexOf(lowerPriorityRunnable)
                    this.taskQueue.addAt(index, task)
                this.notify()

method runTask*(this: ThreadPool, task: Runnable) {.base.} =
        block:
            if (not this.isAlive):
                this.init()
            if (not jIsNil(task)):
                this.taskQueue.add(task)
                this.notify()

method getTask*(this: ThreadPool): Runnable {.base, discardable.} =
        block:
            while this.taskQueue.size() == 0:
                if (not this.isAlive):
                    return this.NULL_RUNNABLE
                this.wait()
            let runnable: Runnable = Runnable(JObject(this.taskQueue.removeAt(0)))
            return runnable

method clear*(this: ThreadPool) {.base.} =
        block:
            if this.isAlive:
                this.taskQueue.clear()

method close*(this: ThreadPool) {.base.} =
        block:
            if this.isAlive:
                this.isAlive = false
                this.taskQueue.clear()

method join*(this: ThreadPool) {.base.} =
        block:
            this.isAlive = false
            this.taskQueue.clear()
            this.notifyAll()

method isBusy*(this: ThreadPool): bool {.base, discardable.} =
        if (not this.isAlive):
            return false
        if this.taskQueue.size() > 0:
            return true
        if this.runningTask:
            return true
        return false

method threadStarted*(this: ThreadPool) {.base.} =
        discard

method threadStopped*(this: ThreadPool) {.base.} =
        if this.numThreads == 1:
            this.isAlive = false
            this.taskQueue.clear()

method startTask*(this: ThreadPool, task: Runnable) {.base.} =
        discard

method completedTask*(this: ThreadPool, task: Runnable) {.base.} =
        discard

method createName*(this: ThreadPool): string {.base, discardable.} =
        return newStringMaker().append(this.poolName).append(ThreadPool.ROOT_NAME).appendint(jPostIncrement(this.threadID)).toString()

