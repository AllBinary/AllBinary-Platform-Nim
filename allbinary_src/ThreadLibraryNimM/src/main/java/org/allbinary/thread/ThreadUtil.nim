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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    ThreadUtil* = ref object of JObject
        logUtil*: LogUtil
        JOIN*: string

proc newThreadUtil*(): ThreadUtil
proc getInstance*(t: typedesc[ThreadUtil]): ThreadUtil {.discardable.}
method isRunning*(this: ThreadUtil, thread: JThread): bool {.base, discardable.}
method join*(this: ThreadUtil, thread: JThread) {.base.}

var ThreadUtil_instanceValue: ThreadUtil
var ThreadUtil_instanceSet = false
proc instance*(t: typedesc[ThreadUtil]): ThreadUtil =
    if not ThreadUtil_instanceSet:
        ThreadUtil_instanceSet = true
        ThreadUtil_instanceValue = newThreadUtil()
    ThreadUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsThreadUtil(this: ThreadUtil) =
    this.logUtil = LogUtil.getInstance()
    this.JOIN = "join"
    discard

proc initThreadUtil*(this: ThreadUtil) =
    this.initFieldsThreadUtil()

proc newThreadUtil*(): ThreadUtil =
    result = ThreadUtil()
    initThreadUtil(result)

proc getInstance*(t: typedesc[ThreadUtil]): ThreadUtil {.discardable.} =
        return ThreadUtil.instance

method isRunning*(this: ThreadUtil, thread: JThread): bool {.base, discardable.} =
        if (not jIsNil(thread)) and thread.isAlive():
            return true
        else:
            return false

method join*(this: ThreadUtil, thread: JThread) {.base.} =
        if ThreadUtil.getInstance().isRunning(thread):
            this.logUtil.putF("Waiting for Thread To Join/End", this, this.JOIN)
            thread.join()

