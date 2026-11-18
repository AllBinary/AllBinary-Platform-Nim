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
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/thread/ABRunnable as ABRunnableModule
export ABRunnableModule

type
    ThreadFactoryUtil* = ref object of JObject
        logUtil*: LogUtil

proc newThreadFactoryUtil*(): ThreadFactoryUtil
proc getInstance*(t: typedesc[ThreadFactoryUtil]): ThreadFactoryUtil {.discardable.}
method getInstanceGameCanvasRunnable*(this: ThreadFactoryUtil, runnable: GameCanvasRunnableInterface): JThread {.base, discardable.}
method getInstanceForRunnable*(this: ThreadFactoryUtil, runnable: ABRunnable): JThread {.base, discardable.}
method getInstanceType*(this: ThreadFactoryUtil, runnable: Runnable, `type`: int32): JThread {.base, discardable.}
method start*(this: ThreadFactoryUtil, thread: JThread) {.base.}
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/canvas/RunnableCanvas as RunnableCanvasModule
export RunnableCanvasModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/game/displayable/canvas/DemoCanvas as DemoCanvasModule
export DemoCanvasModule
import org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable as RunnableCanvasSingleThreadStartRunnableModule
export RunnableCanvasSingleThreadStartRunnableModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/thread/PrimaryThreadPool as PrimaryThreadPoolModule
export PrimaryThreadPoolModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule

var ThreadFactoryUtil_instanceValue: ThreadFactoryUtil
var ThreadFactoryUtil_instanceSet = false
proc instance*(t: typedesc[ThreadFactoryUtil]): ThreadFactoryUtil =
    if not ThreadFactoryUtil_instanceSet:
        ThreadFactoryUtil_instanceSet = true
        ThreadFactoryUtil_instanceValue = newThreadFactoryUtil()
    ThreadFactoryUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsThreadFactoryUtil(this: ThreadFactoryUtil) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initThreadFactoryUtil*(this: ThreadFactoryUtil) =
    this.initFieldsThreadFactoryUtil()

proc newThreadFactoryUtil*(): ThreadFactoryUtil =
    result = ThreadFactoryUtil()
    initThreadFactoryUtil(result)

proc getInstance*(t: typedesc[ThreadFactoryUtil]): ThreadFactoryUtil {.discardable.} =
        return ThreadFactoryUtil.instance

method getInstanceGameCanvasRunnable*(this: ThreadFactoryUtil, runnable: GameCanvasRunnableInterface): JThread {.base, discardable.} =
        return this.getInstanceType(runnable, runnable.getType())

method getInstanceForRunnable*(this: ThreadFactoryUtil, runnable: ABRunnable): JThread {.base, discardable.} =
        return this.getInstanceType(runnable, runnable.getType())

method getInstanceType*(this: ThreadFactoryUtil, runnable: Runnable, `type`: int32): JThread {.base, discardable.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        if J2MEUtil.isHTML():
            if `type` == DemoCanvas.TYPE or `type` == AllBinaryGameCanvas.TYPE:
                let demoGameSingleThreadStartRunnable: RunnableCanvasSingleThreadStartRunnable = newRunnableCanvasSingleThreadStartRunnable(RunnableCanvas(JObject(runnable)))
                PreLogUtil.put(newStringMaker().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString(runnable)).toString(), this, commonStrings.CONSTRUCTOR)
                let primaryThreadPool: ThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable)
            else:
                PreLogUtil.put(newStringMaker().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString(runnable)).toString(), this, commonStrings.CONSTRUCTOR)
                var primaryThreadPool: ThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(runnable)
        let thread: JThread = newJThread(runnable, runnable.toString())
        this.logUtil.putF(thread.toString(), this, commonStrings.CONSTRUCTOR)
        return thread

method start*(this: ThreadFactoryUtil, thread: JThread) {.base.} =
        thread.start()

