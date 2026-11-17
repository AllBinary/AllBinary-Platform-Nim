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
# package org.allbinary.logic.communication.log

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/Log as LogModule
export LogModule

#ActualPlatform
type
    LogUtil* = ref object of JObject

proc newLogUtil*(): LogUtil
proc initLogUtil*(this: LogUtil)
proc getInstance*(t: typedesc[LogUtil]): LogUtil {.discardable.}
method putP*(this: LogUtil, log: Log) {.base.}
method putF*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string) {.base.}
method putFS*(this: LogUtil, specialMessage: string, className: string, functionName: string) {.base.}
method put*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string, exception: JObject) {.base.}

var LogUtil_instanceValue: LogUtil
var LogUtil_instanceSet = false
proc instance*(t: typedesc[LogUtil]): LogUtil =
    if not LogUtil_instanceSet:
        LogUtil_instanceSet = true
        LogUtil_instanceValue = newLogUtil()
    LogUtil_instanceValue

proc getInstance*(t: typedesc[LogUtil]): LogUtil {.discardable.} =
        return LogUtil.instance

proc initLogUtil*(this: LogUtil) =
        discard
        discard

proc newLogUtil*(): LogUtil =
    result = LogUtil()
    initLogUtil(result)

method putP*(this: LogUtil, log: Log) {.base.} =
        discard

method putF*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string) {.base.} =
        discard

method putFS*(this: LogUtil, specialMessage: string, className: string, functionName: string) {.base.} =
        discard

method put*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string, exception: JObject) {.base.} =
        discard

