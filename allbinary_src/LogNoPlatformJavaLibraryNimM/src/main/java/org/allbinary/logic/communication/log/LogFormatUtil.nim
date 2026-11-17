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

#NoPlatform
type
    LogFormatUtil* = ref object of JObject

proc newLogFormatUtil*(): LogFormatUtil
proc initLogFormatUtil*(this: LogFormatUtil)
proc getInstance*(t: typedesc[LogFormatUtil]): LogFormatUtil {.discardable.}
method get*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string, exception: JObject): string {.base, discardable.}
method getS*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string): string {.base, discardable.}
method getO*(this: LogFormatUtil, exception: JObject): string {.base, discardable.}

var LogFormatUtil_instanceValue: LogFormatUtil
var LogFormatUtil_instanceSet = false
proc instance*(t: typedesc[LogFormatUtil]): LogFormatUtil =
    if not LogFormatUtil_instanceSet:
        LogFormatUtil_instanceSet = true
        LogFormatUtil_instanceValue = newLogFormatUtil()
    LogFormatUtil_instanceValue

proc getInstance*(t: typedesc[LogFormatUtil]): LogFormatUtil {.discardable.} =
        return LogFormatUtil.instance

proc initLogFormatUtil*(this: LogFormatUtil) =
        discard
        discard

proc newLogFormatUtil*(): LogFormatUtil =
    result = LogFormatUtil()
    initLogFormatUtil(result)

method get*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string, exception: JObject): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getS*(this: LogFormatUtil, className: string, functionName: string, specialMessage: string): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getO*(this: LogFormatUtil, exception: JObject): string {.base, discardable.} =
        raise newJException("RuntimeException", "")

