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
    LogFactory* = ref object of JObject

proc newLogFactory*(): LogFactory
proc getInstanceD*(t: typedesc[LogFactory]): Log {.discardable.}
proc getInstance*(t: typedesc[LogFactory], specialMessage: string, anyType: JObject, functionName: string, exception: JObject): Log {.discardable.}
proc getInstanceF*(t: typedesc[LogFactory], specialMessage: string, anyType: JObject, functionName: string): Log {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var LogFactory_LOGValue: Log
var LogFactory_LOGSet = false
proc LOG*(t: typedesc[LogFactory]): Log =
    if not LogFactory_LOGSet:
        LogFactory_LOGSet = true
        LogFactory_LOGValue = newLog(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT)
    LogFactory_LOGValue

proc initLogFactory*(this: LogFactory) =
    discard

proc newLogFactory*(): LogFactory =
    result = LogFactory()
    initLogFactory(result)

proc getInstanceD*(t: typedesc[LogFactory]): Log {.discardable.} =
        let stringUtil: StringUtil = StringUtil.getInstance()
        let nullUtil: NullUtil = NullUtil.getInstance()
        return newLog(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT)

proc getInstance*(t: typedesc[LogFactory], specialMessage: string, anyType: JObject, functionName: string, exception: JObject): Log {.discardable.} =
        return LogFactory.LOG

proc getInstanceF*(t: typedesc[LogFactory], specialMessage: string, anyType: JObject, functionName: string): Log {.discardable.} =
        return LogFactory.LOG

