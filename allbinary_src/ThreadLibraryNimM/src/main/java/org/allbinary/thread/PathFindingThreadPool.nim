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
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule
import org/allbinary/thread/PriorityRunnable as PriorityRunnableModule
export PriorityRunnableModule

#This is mainly for network communications.
type
    PathFindingThreadPool* = ref object of ThreadPool

proc newPathFindingThreadPool*(poolName: string, numThreads: int32, priority: int32): PathFindingThreadPool
proc initPathFindingThreadPool*(this: PathFindingThreadPool, poolName: string, numThreads: int32, priority: int32)
proc getInstance*(t: typedesc[PathFindingThreadPool]): ThreadPool {.discardable.}
method runTaskWithPriority*(this: PathFindingThreadPool, task: PriorityRunnable)
method runTask*(this: PathFindingThreadPool, task: Runnable)
method startTask*(this: PathFindingThreadPool, task: Runnable)
method completedTask*(this: PathFindingThreadPool, task: Runnable)

var PathFindingThreadPool_instanceValue: ThreadPool
var PathFindingThreadPool_instanceSet = false
proc instance*(t: typedesc[PathFindingThreadPool]): ThreadPool =
    if not PathFindingThreadPool_instanceSet:
        PathFindingThreadPool_instanceSet = true
        PathFindingThreadPool_instanceValue = newPathFindingThreadPool("PathFinding", 1, 1)
    PathFindingThreadPool_instanceValue

proc getInstance*(t: typedesc[PathFindingThreadPool]): ThreadPool {.discardable.} =
        return PathFindingThreadPool.instance

proc initPathFindingThreadPool*(this: PathFindingThreadPool, poolName: string, numThreads: int32, priority: int32) =
        initThreadPool(this, poolName, numThreads, ThreadPool.NORMAL_PRIORITY)

proc newPathFindingThreadPool*(poolName: string, numThreads: int32, priority: int32): PathFindingThreadPool =
    result = PathFindingThreadPool()
    initPathFindingThreadPool(result, poolName, numThreads, priority)

method runTaskWithPriority*(this: PathFindingThreadPool, task: PriorityRunnable) =
        procCall ThreadPool(this).runTaskWithPriority(task)

method runTask*(this: PathFindingThreadPool, task: Runnable) =
        procCall ThreadPool(this).runTask(task)

method startTask*(this: PathFindingThreadPool, task: Runnable) =
        discard

method completedTask*(this: PathFindingThreadPool, task: Runnable) =
        discard

when declared(newPathFindingThreadPoolHook3):
    newPathFindingThreadPoolHook3 = proc (poolName: string, numThreads: int32, priority: int32): ThreadPool = newPathFindingThreadPool(poolName, numThreads, priority)

