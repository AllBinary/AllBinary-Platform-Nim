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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/logic/ABSystemWrapper as ABSystemWrapperModule
export ABSystemWrapperModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/thread/RunnableInterface as RunnableInterfaceModule
export RunnableInterfaceModule
import org/allbinary/thread/ThreadObjectUtil as ThreadObjectUtilModule
export ThreadObjectUtilModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule

type
    RunnableCanvas* = ref object of MyCanvas
        nullUtil*: NullUtil
        stdUtil*: StdUtil
        systemWrapper*: ABSystemWrapper
        tsUtil*: TsUtil
        thread*: JThread
        currentThread*: JThread
        running*: bool
        loopTimeHelper*: TimeDelayHelper
        runnableCanvasRefreshHelper*: Processor
        commonLabels*: CommonLabels
        threadObjectUtil*: ThreadObjectUtil
        SET_RUNNING*: string
        IS_RUNNING*: string
        THREAD*: string
        NOT_EQUAL*: string
        PAUSE_SLEEP*: string
        START_PAUSE*: string
        END_PAUSE*: string
        PROCESS_LOOP_SLEEP*: string
        pauseWait*: int64
        notified*: bool

converter jAsRunnableInterface*(value: RunnableCanvas): RunnableInterface = cast[RunnableInterface](value)
proc newRunnableCanvas*(commandListener: CommandListener, childNameList: BasicArrayList, hasParam: bool): RunnableCanvas
proc initRunnableCanvas*(this: RunnableCanvas, commandListener: CommandListener, childNameList: BasicArrayList, hasParam: bool)
method initCommands*(this: RunnableCanvas, cmdListener: CommandListener) {.base.}
method isMainCanvas*(this: RunnableCanvas): bool {.base, discardable.}
method setThread*(this: RunnableCanvas, thread: JThread)
method setRunning*(this: RunnableCanvas, running: bool)
method isRunning*(this: RunnableCanvas): bool {.discardable.}
method getLoopTimeHelperP*(this: RunnableCanvas): TimeDelayHelper {.base, discardable.}
method setWait*(this: RunnableCanvas, wait: int32) {.base.}
method getWait*(this: RunnableCanvas): int32 {.base, discardable.}
method setCurrentThread*(this: RunnableCanvas) {.base.}
method setCurrentThreadFake*(this: RunnableCanvas) {.base.}
method showNotify*(this: RunnableCanvas)
method stopWaiting*(this: RunnableCanvas) {.base.}
method waitOnNotify*(this: RunnableCanvas, wait: int64) {.base.}
method processSleep*(this: RunnableCanvas) {.base.}
method isPausable*(this: RunnableCanvas): bool {.base, discardable.}
method processGameSleep*(this: RunnableCanvas, sleep: int64) {.base.}
method processLoopSleep*(this: RunnableCanvas) {.base.}
method isSingleThread*(this: RunnableCanvas): bool {.base, discardable.}
method run*(this: RunnableCanvas)
method end2*(this: RunnableCanvas) {.base.}
method getType*(this: RunnableCanvas): int32 {.base, discardable.}
import org/allbinary/game/displayable/canvas/NullWaitGameRunnable as NullWaitGameRunnableModule
export NullWaitGameRunnableModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/thread/NullThread as NullThreadModule
export NullThreadModule
import org/allbinary/canvas/RunnableCanvasRefreshHelper as RunnableCanvasRefreshHelperModule
export RunnableCanvasRefreshHelperModule


# Java field initializers run after the base initializer
proc initFieldsRunnableCanvas(this: RunnableCanvas) =
    this.nullUtil = NullUtil.getInstance()
    this.stdUtil = StdUtil.getInstance()
    this.systemWrapper = ABSystemWrapper.getInstance()
    this.tsUtil = TsUtil.getInstance()
    this.thread = NullThread.NULL_THREADStatic
    this.currentThread = NullThread.NULL_THREADStatic
    this.running = false
    this.loopTimeHelper = newTimeDelayHelper(NullWaitGameRunnable.getInstance().WAIT)
    this.runnableCanvasRefreshHelper = Processor.getInstance()
    this.commonLabels = CommonLabels.getInstance()
    this.threadObjectUtil = ThreadObjectUtil.getInstance()
    this.SET_RUNNING = "setRunning"
    this.IS_RUNNING = "isRunning"
    this.THREAD = "Thread: "
    this.NOT_EQUAL = " != "
    this.PAUSE_SLEEP = "pause sleep"
    this.START_PAUSE = "start pause - game thread sleep at: "
    this.END_PAUSE = "end pause - game thread sleep at: "
    this.PROCESS_LOOP_SLEEP = "processLoopSleep"
    this.pauseWait = 0'i64
    this.notified = false
    discard

proc initRunnableCanvas*(this: RunnableCanvas, commandListener: CommandListener, childNameList: BasicArrayList, hasParam: bool) =
        initMyCanvas(this, CommonStrings.getInstance().UNKNOWN, childNameList)
        this.initFieldsRunnableCanvas()
        this.logUtil.putF(newStringMaker().append("RunnableCanvas delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR)
        this.runnableCanvasRefreshHelper = newRunnableCanvasRefreshHelper(this)
        if (not jIsNil(commandListener)):
            this.initCommands(commandListener)
        elif hasParam:
            this.logUtil.putF("commandListener was null", this, "initCommands")

proc newRunnableCanvas*(commandListener: CommandListener, childNameList: BasicArrayList, hasParam: bool): RunnableCanvas =
    result = RunnableCanvas()
    initRunnableCanvas(result, commandListener, childNameList, hasParam)

method initCommands*(this: RunnableCanvas, cmdListener: CommandListener) {.base.} =
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, "initCommands")

method isMainCanvas*(this: RunnableCanvas): bool {.base, discardable.} =
        if (not jIsNil(this.getCustomCommandListener())):
            return true
        else:
            return false

method setThread*(this: RunnableCanvas, thread: JThread) =
        this.thread = thread

method setRunning*(this: RunnableCanvas, running: bool) =
        this.running = running
        if (not this.running):
            this.thread = NullThread.NULL_THREADStatic
            block:
                this.threadObjectUtil.notifyObject(this)
        this.logUtil.putF(newStringMaker().append(this.IS_RUNNING).appendboolean(this.running).toString(), this, this.SET_RUNNING)

method isRunning*(this: RunnableCanvas): bool {.discardable.} =
        if this.thread == this.currentThread:
            return this.running
        else:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(this.THREAD)
            if (not jIsNil(this.thread)):
                stringBuffer.append(this.thread.toString())
            stringBuffer.append(this.NOT_EQUAL)
            if (not jIsNil(this.currentThread)):
                stringBuffer.append(StringUtil.getInstance().toString(this.currentThread))
            this.logUtil.putF(stringBuffer.toString(), this, this.IS_RUNNING)
            return false

method getLoopTimeHelperP*(this: RunnableCanvas): TimeDelayHelper {.base, discardable.} =
        return this.loopTimeHelper

method setWait*(this: RunnableCanvas, wait: int32) {.base.} =
        this.loopTimeHelper.delay = wait
        this.pauseWait = int64(wait) *% 3'i64
        this.logUtil.putF(newStringMaker().append("setWait - delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR)

method getWait*(this: RunnableCanvas): int32 {.base, discardable.} =
        return this.loopTimeHelper.delay

method setCurrentThread*(this: RunnableCanvas) {.base.} =
        this.currentThread = JThread.currentThread()

method setCurrentThreadFake*(this: RunnableCanvas) {.base.} =
        this.currentThread = this.thread

method showNotify*(this: RunnableCanvas) =
        try:
            this.stopWaiting()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "showNotify", e)

method stopWaiting*(this: RunnableCanvas) {.base.} =
        this.notified = true
        block:
            this.threadObjectUtil.notifyObject(this)
        this.repaint()

method waitOnNotify*(this: RunnableCanvas, wait: int64) {.base.} =
        if (not this.notified):
            if wait > 0'i64:
                this.threadObjectUtil.waitObjectFor(this, wait)
            else:
                this.threadObjectUtil.waitObject(this)

method processSleep*(this: RunnableCanvas) {.base.} =
        JThread.sleep(this.pauseWait)

method isPausable*(this: RunnableCanvas): bool {.base, discardable.} =
        return false

method processGameSleep*(this: RunnableCanvas, sleep: int64) {.base.} =
        JThread.sleep(sleep)

method processLoopSleep*(this: RunnableCanvas) {.base.} =
        this.runnableCanvasRefreshHelper.process()
        if this.isPaused():
            let stringMaker: StringMaker = newStringMaker()
            if this.isRunning() and (not this.isSingleThread()):
                stringMaker.delete(0, stringMaker.length())
                let currentTimeMillis: int64 = this.systemWrapper.currentTimeMillis()
                this.logUtil.putF(stringMaker.append(this.START_PAUSE).appendlong(currentTimeMillis).append(this.PAUSE_SLEEP).appendlong(this.pauseWait).toString(), this, this.PROCESS_LOOP_SLEEP)
                while this.isPaused() and this.isRunning() and (not this.isSingleThread()):
                    this.processSleep()
                    if (not this.isPausable()):
                        stringMaker.delete(0, stringMaker.length())
                        this.logUtil.putF(stringMaker.append(this.END_PAUSE).appendlong(currentTimeMillis).toString(), this, this.PROCESS_LOOP_SLEEP)
                        return
        var elapsedTime: int64 = this.loopTimeHelper.getElapsedTNT()
        let wait: int64 = int64(this.loopTimeHelper.delay)
        if elapsedTime > wait:
            elapsedTime = wait
        else:
            this.processGameSleep(wait -% elapsedTime)

method isSingleThread*(this: RunnableCanvas): bool {.base, discardable.} =
        return false

method run*(this: RunnableCanvas) =
        this.setCurrentThread()

method end2*(this: RunnableCanvas) {.base.} =
        discard

method getType*(this: RunnableCanvas): int32 {.base, discardable.} =
        return -1

when declared(newRunnableCanvasHook3):
    newRunnableCanvasHook3 = proc (commandListener: CommandListener, childNameList: BasicArrayList, hasParam: bool): MyCanvas = newRunnableCanvas(commandListener, childNameList, hasParam)

