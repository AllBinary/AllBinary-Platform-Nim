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

#ActualPlatform
type
    ExceptionUtil* = ref object of JObject
        PRETEND_EXCEPTION*: JException
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

# Java field initializers run after the base initializer
proc initFieldsExceptionUtil(this: ExceptionUtil) =
    this.PRETEND_EXCEPTION = newJException("Exception", "Not Really An Exception")
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
        let bs: ByteArrayOutputStream = newByteArrayOutputStream()
        e.printStackTrace()
        let output: string = bs.toString()
        return jNewString(output)

