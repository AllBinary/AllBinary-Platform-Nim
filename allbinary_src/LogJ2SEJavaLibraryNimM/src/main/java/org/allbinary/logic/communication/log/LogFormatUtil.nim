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
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/java/exception/ExceptionUtil as ExceptionUtilModule
export ExceptionUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/time/TimeStampUtil as TimeStampUtilModule
export TimeStampUtilModule

#ActualPlatform
type
    LogFormatUtil* = ref object of JObject
        timeStampUtil*: TimeStampUtil
        commonSeps*: CommonSeps
        NONE*: string
        LOG_ERROR*: string
        EMPTY*: string
        STACK_TRACE*: string
        TIME*: string
        CLASS_NAME*: string
        FUNCTION_CALL*: string
        SPECIAL_MESSAGE*: string
        stringUtil*: StringUtil
        exceptionUtil*: ExceptionUtil
        nullUtil*: NullUtil

proc newLogFormatUtil*(): LogFormatUtil
proc initLogFormatUtil*(this: LogFormatUtil)
proc getInstance*(t: typedesc[LogFormatUtil]): LogFormatUtil {.discardable.}
method get*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string, exception: JObject): string {.base, discardable.}
method getS*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string): string {.base, discardable.}
method getF*(this: LogFormatUtil, className: string, functionName: string): StringMaker {.base, discardable.}
method getO*(this: LogFormatUtil, exception: JObject): string {.base, discardable.}
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

var LogFormatUtil_instanceValue: LogFormatUtil
var LogFormatUtil_instanceSet = false
proc instance*(t: typedesc[LogFormatUtil]): LogFormatUtil =
    if not LogFormatUtil_instanceSet:
        LogFormatUtil_instanceSet = true
        LogFormatUtil_instanceValue = newLogFormatUtil()
    LogFormatUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLogFormatUtil(this: LogFormatUtil) =
    this.timeStampUtil = TimeStampUtil.getInstance()
    this.commonSeps = CommonSeps.getInstance()
    this.NONE = "None"
    this.LOG_ERROR = "\nLog-Error: "
    this.EMPTY = "Empty"
    this.STACK_TRACE = "\nStack Trace: "
    this.TIME = "Time: "
    this.CLASS_NAME = this.commonSeps.SPACE
    this.FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP
    this.SPECIAL_MESSAGE = "> "
    this.stringUtil = StringUtil.getInstance()
    this.exceptionUtil = ExceptionUtil.getInstance()
    this.nullUtil = NullUtil.getInstance()
    discard

proc getInstance*(t: typedesc[LogFormatUtil]): LogFormatUtil {.discardable.} =
        return LogFormatUtil.instance

proc initLogFormatUtil*(this: LogFormatUtil) =
        this.initFieldsLogFormatUtil()
        discard

proc newLogFormatUtil*(): LogFormatUtil =
    result = LogFormatUtil()
    initLogFormatUtil(result)

method get*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string, exception: JObject): string {.base, discardable.} =
        let stringBuffer: StringMaker = this.getF(className, functionName)
        stringBuffer.append(this.getO(exception))
        stringBuffer.append(this.SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(this.commonSeps.NEW_LINE)
        return stringBuffer.toString()

method getS*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string): string {.base, discardable.} =
        let stringBuffer: StringMaker = this.getF(className, functionName)
        stringBuffer.append(this.SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(this.commonSeps.NEW_LINE)
        return stringBuffer.toString()

method getF*(this: LogFormatUtil, className: string, functionName: string): StringMaker {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.TIME)
        stringBuffer.append(this.timeStampUtil.getAsString())
        stringBuffer.append(this.CLASS_NAME)
        stringBuffer.append(className)
        stringBuffer.append(this.FUNCTION_CALL)
        stringBuffer.append(functionName)
        return stringBuffer

method getO*(this: LogFormatUtil, exception: JObject): string {.base, discardable.} =
        if exception != this.nullUtil.NULL_OBJECT:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(this.LOG_ERROR)
            let exceptionAsString: string = exception.toString()
            stringBuffer.append(exceptionAsString)
            stringBuffer.append(this.STACK_TRACE)
            if exception != this.nullUtil.NULL_OBJECT:
                stringBuffer.append(this.exceptionUtil.getStackTrace(jAsException(exception)))
            else:
                stringBuffer.append(this.stringUtil.NULL_STRING)
            return stringBuffer.toString()
        else:
            return StringUtil.getInstance().EMPTY_STRING

