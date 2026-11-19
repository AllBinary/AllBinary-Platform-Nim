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
import java/lang/Thread as ThreadModule
export ThreadModule
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/thread/ThreadObjectUtil as ThreadObjectUtilModule
export ThreadObjectUtilModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule

type
    PooledThread* = ref object of JThread
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        threadObjectUtil*: ThreadObjectUtil
        threadPool*: ThreadPool
        INTERRUPT_EXCEPTION*: string

proc newPooledThread*(threadPool: ThreadPool): PooledThread
proc initPooledThread*(this: PooledThread, threadPool: ThreadPool)
method run*(this: PooledThread)
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsPooledThread(this: PooledThread) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.threadObjectUtil = ThreadObjectUtil.getInstance()
    
    this.INTERRUPT_EXCEPTION = "Exit InterruptedException"
    discard

proc initPooledThread*(this: PooledThread, threadPool: ThreadPool) =
        initJThread(this, threadPool.createName())
        this.initFieldsPooledThread()
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR)
        this.threadPool = threadPool

proc newPooledThread*(threadPool: ThreadPool): PooledThread =
    result = PooledThread()
    initPooledThread(result, threadPool)

method run*(this: PooledThread) =
        this.threadPool.threadStarted()
        while true:
            var task2: Runnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
            try:
                task2 = this.threadPool.getTask()
                this.threadPool.runningTask = true
                this.threadPool.startTask(task2)
            except CatchableError as jcaught:
                let jexception = jToException(jcaught)
                if jCatches(jexception, "InterruptedException"):
                    let ex = jexception
                    let logUtil: LogUtil = LogUtil.getInstance()
                    logUtil.putF(this.INTERRUPT_EXCEPTION, this, this.commonStrings.RUN)
                    break
                else:
                    raise jcaught
            if (jSame(task2, this.threadObjectUtil.NULL_PRIORITY_RUNNABLE)):
                break
            try:
                task2.run()
                this.threadPool.completedTask(task2)
                this.threadPool.runningTask = false
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                let logUtil: LogUtil = LogUtil.getInstance()
                logUtil.put(newStringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString(task2)).toString(), this, this.commonStrings.RUN, e)
        this.threadPool.threadStopped()

when declared(newPooledThreadHook1):
    newPooledThreadHook1 = proc (threadPool: ThreadPool): JThread = newPooledThread(threadPool)

