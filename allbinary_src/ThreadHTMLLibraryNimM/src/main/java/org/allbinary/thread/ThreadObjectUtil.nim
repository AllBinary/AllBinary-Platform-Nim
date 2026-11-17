# Generated Code Do Not Modify
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/thread/PriorityRunnable as PriorityRunnableModule
export PriorityRunnableModule

type
    ThreadObjectUtil* = ref object of JObject
        NULL_PRIORITY_RUNNABLE*: PriorityRunnable

proc newThreadObjectUtil*(): ThreadObjectUtil
proc getInstance*(t: typedesc[ThreadObjectUtil]): ThreadObjectUtil {.discardable.}
method notifyObject*(this: ThreadObjectUtil, anyType: JObject) {.base.}
method waitObject*(this: ThreadObjectUtil, anyType: JObject) {.base.}
method waitObjectFor*(this: ThreadObjectUtil, anyType: JObject, delay: int64) {.base.}
method processThread*(this: ThreadObjectUtil, runnable: Runnable) {.base.}
import org/allbinary/thread/NullPriorityRunnable as NullPriorityRunnableModule
export NullPriorityRunnableModule

var ThreadObjectUtil_instanceValue: ThreadObjectUtil
var ThreadObjectUtil_instanceSet = false
proc instance*(t: typedesc[ThreadObjectUtil]): ThreadObjectUtil =
    if not ThreadObjectUtil_instanceSet:
        ThreadObjectUtil_instanceSet = true
        ThreadObjectUtil_instanceValue = newThreadObjectUtil()
    ThreadObjectUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsThreadObjectUtil(this: ThreadObjectUtil) =
    this.NULL_PRIORITY_RUNNABLE = newNullPriorityRunnable()
    discard

proc initThreadObjectUtil*(this: ThreadObjectUtil) =
    this.initFieldsThreadObjectUtil()

proc newThreadObjectUtil*(): ThreadObjectUtil =
    result = ThreadObjectUtil()
    initThreadObjectUtil(result)

proc getInstance*(t: typedesc[ThreadObjectUtil]): ThreadObjectUtil {.discardable.} =
        return ThreadObjectUtil.instance

method notifyObject*(this: ThreadObjectUtil, anyType: JObject) {.base.} =
        discard

method waitObject*(this: ThreadObjectUtil, anyType: JObject) {.base.} =
        discard

method waitObjectFor*(this: ThreadObjectUtil, anyType: JObject, delay: int64) {.base.} =
        discard

method processThread*(this: ThreadObjectUtil, runnable: Runnable) {.base.} =
        runnable.run()

