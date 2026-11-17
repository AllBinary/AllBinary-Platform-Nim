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
import org/allbinary/logic/communication/log/LogFormatUtil as LogFormatUtilModule
export LogFormatUtilModule

type
    Log* = ref object of JObject
        logFormatUtil*: LogFormatUtil
        specialMessage*: string
        anyType*: JObject
        functionName*: string
        exception*: JObject

proc newLog*(specialMessage: string, anyType: JObject, functionName: string, exception: JObject): Log
proc initLog*(this: Log, specialMessage: string, anyType: JObject, functionName: string, exception: JObject)
method getSpecialMessage*(this: Log): string {.base, discardable.}
method getObject*(this: Log): JObject {.base, discardable.}
method getFunctionName*(this: Log): string {.base, discardable.}
method getThrowable*(this: Log): JObject {.base, discardable.}
method toString*(this: Log): string {.discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsLog(this: Log) =
    this.logFormatUtil = LogFormatUtil.getInstance()
    
    
    
    
    discard

proc initLog*(this: Log, specialMessage: string, anyType: JObject, functionName: string, exception: JObject) =
        this.initFieldsLog()
        this.specialMessage = specialMessage
        this.anyType = anyType
        this.functionName = functionName
        this.exception = exception

proc newLog*(specialMessage: string, anyType: JObject, functionName: string, exception: JObject): Log =
    result = Log()
    initLog(result, specialMessage, anyType, functionName, exception)

method getSpecialMessage*(this: Log): string {.base, discardable.} =
        return this.specialMessage

method getObject*(this: Log): JObject {.base, discardable.} =
        return this.anyType

method getFunctionName*(this: Log): string {.base, discardable.} =
        return this.functionName

method getThrowable*(this: Log): JObject {.base, discardable.} =
        return this.exception

method toString*(this: Log): string {.discardable.} =
        var className: string = CommonStrings.getInstance().EMPTY
        var clazz: string = jClassName(this.anyType)
        if (not jIsNil(clazz)):
            className = clazz
        return this.logFormatUtil.get(className, this.functionName, this.specialMessage, this.exception)

