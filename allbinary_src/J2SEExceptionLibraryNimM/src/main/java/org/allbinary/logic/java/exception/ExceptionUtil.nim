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
# package org.allbinary.logic.java.exception

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/PrintStream as PrintStreamModule
export PrintStreamModule

#ActualPlatform
type
    ExceptionUtil* = ref object of JObject
        NONE*: string

proc newExceptionUtil*(): ExceptionUtil
proc initExceptionUtil*(this: ExceptionUtil)
proc getInstance*(t: typedesc[ExceptionUtil]): ExceptionUtil {.discardable.}
method getStackTrace*(this: ExceptionUtil, e: JException): string {.base, discardable.}

var ExceptionUtil_instanceValue: ExceptionUtil
var ExceptionUtil_instanceSet = false
proc instance*(t: typedesc[ExceptionUtil]): ExceptionUtil =
    if not ExceptionUtil_instanceSet:
        ExceptionUtil_instanceSet = true
        ExceptionUtil_instanceValue = newExceptionUtil()
    ExceptionUtil_instanceValue
var ExceptionUtil_PRETEND_EXCEPTIONValue: JException
var ExceptionUtil_PRETEND_EXCEPTIONSet = false
proc PRETEND_EXCEPTION*(t: typedesc[ExceptionUtil]): JException =
    if not ExceptionUtil_PRETEND_EXCEPTIONSet:
        ExceptionUtil_PRETEND_EXCEPTIONSet = true
        ExceptionUtil_PRETEND_EXCEPTIONValue = newJException("Exception", "Not Really An Exception")
    ExceptionUtil_PRETEND_EXCEPTIONValue

# Java field initializers run after the base initializer
proc initFieldsExceptionUtil(this: ExceptionUtil) =
    this.NONE = "No Stack Trace"
    discard

proc getInstance*(t: typedesc[ExceptionUtil]): ExceptionUtil {.discardable.} =
        return ExceptionUtil.instance

proc initExceptionUtil*(this: ExceptionUtil) =
        this.initFieldsExceptionUtil()
        discard

proc newExceptionUtil*(): ExceptionUtil =
    result = ExceptionUtil()
    initExceptionUtil(result)

method getStackTrace*(this: ExceptionUtil, e: JException): string {.base, discardable.} =
        if (not jIsNil(e)):
            let byteArrayOutputStream: ByteArrayOutputStream = newByteArrayOutputStream()
            let printStream: PrintStream = newPrintStream(byteArrayOutputStream)
            e.printStackTrace(printStream)
            let output: string = byteArrayOutputStream.toString()
            return output
        return this.NONE

