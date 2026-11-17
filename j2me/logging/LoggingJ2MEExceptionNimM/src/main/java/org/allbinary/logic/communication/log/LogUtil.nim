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
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/logic/communication/log/LogFormatUtil as LogFormatUtilModule
export LogFormatUtilModule
import org/allbinary/logic/communication/log/Log as LogModule
export LogModule

#ActualPlatform
type
    LogUtil* = ref object of JObject
        logFormatUtil*: LogFormatUtil
        LOG_SUCCESS*: string

proc newLogUtil*(): LogUtil
proc initLogUtil*(this: LogUtil)
proc getInstance*(t: typedesc[LogUtil]): LogUtil {.discardable.}
method putL*(this: LogUtil, log: Log) {.base.}
method putF*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string) {.base.}
method putFS*(this: LogUtil, specialMessage: string, className: string, functionName: string) {.base.}
method put*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string, exception: JObject) {.base.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/communication/log/LogFactory as LogFactoryModule
export LogFactoryModule

var LogUtil_instanceValue: LogUtil
var LogUtil_instanceSet = false
proc instance*(t: typedesc[LogUtil]): LogUtil =
    if not LogUtil_instanceSet:
        LogUtil_instanceSet = true
        LogUtil_instanceValue = newLogUtil()
    LogUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLogUtil(this: LogUtil) =
    this.logFormatUtil = LogFormatUtil.getInstance()
    this.LOG_SUCCESS = "org.allbinary: "
    discard

proc getInstance*(t: typedesc[LogUtil]): LogUtil {.discardable.} =
        return LogUtil.instance

proc initLogUtil*(this: LogUtil) =
        this.initFieldsLogUtil()
        discard

proc newLogUtil*(): LogUtil =
    result = LogUtil()
    initLogUtil(result)

method putL*(this: LogUtil, log: Log) {.base.} =
        if log == LogFactory.LOG:
            return
        let exception: JObject = log.getThrowable()
        if (jIsNil(exception)):
            return
        let specialMessage: string = log.getSpecialMessage()
        let anyType: JObject = log.getObject()
        let functionName: string = log.getFunctionName()
        this.put(specialMessage, anyType, functionName, exception)

method putF*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string) {.base.} =
        discard

method putFS*(this: LogUtil, specialMessage: string, className: string, functionName: string) {.base.} =
        discard

method put*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string, exception: JObject) {.base.} =
        var className: string = CommonStrings.getInstance().EMPTY
        if (not jIsNil(jClassName(anyType))):
            className = jClassName(anyType)
        let message: string = this.logFormatUtil.get(className, functionName, specialMessage, exception)
        echo jstr(this.LOG_SUCCESS)
        echo jstr(message)

