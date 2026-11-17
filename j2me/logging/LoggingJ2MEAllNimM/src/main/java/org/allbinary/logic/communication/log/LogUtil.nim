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
import java/lang/Integer as IntegerModule
export IntegerModule
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
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

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
        let specialMessage: string = log.getSpecialMessage()
        let anyType: JObject = log.getObject()
        let functionName: string = log.getFunctionName()
        let exception: JObject = log.getThrowable()
        this.put(specialMessage, anyType, functionName, exception)

method putF*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string) {.base.} =
        var className: string = CommonStrings.getInstance().EMPTY
        if (not jIsNil(jClassName(anyType))):
            className = newStringMaker().append(jClassName(anyType)).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode(anyType))).toString()
        let message: string = this.logFormatUtil.getS(className, functionName, specialMessage)
        echo jstr(this.LOG_SUCCESS)
        echo jstr(message)

method putFS*(this: LogUtil, specialMessage: string, className: string, functionName: string) {.base.} =
        let message: string = this.logFormatUtil.getS(className, functionName, specialMessage)
        echo jstr(this.LOG_SUCCESS)
        echo jstr(message)

method put*(this: LogUtil, specialMessage: string, anyType: JObject, functionName: string, exception: JObject) {.base.} =
        var className: string = CommonStrings.getInstance().EMPTY
        if (not jIsNil(jClassName(anyType))):
            let hashCodeValue: int32 = TsUtil.getInstance().hashCode(anyType)
            let hexString: string = Integer.toHexString(hashCodeValue)
            className = newStringMaker().append(jClassName(anyType)).append(CommonSeps.getInstance().COLON).append(hexString).toString()
        let message: string = this.logFormatUtil.get(className, functionName, specialMessage, exception)
        echo jstr(this.LOG_SUCCESS)
        echo jstr(message)

