#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.io

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/io/OutputStream as OutputStreamModule
export OutputStreamModule

type
    NullOutputStream* = ref object of OutputStream

proc newNullOutputStream*(): NullOutputStream
method write*(this: NullOutputStream, b: int32)
method write*(this: NullOutputStream, b: JArray[int8], off: int32, len: int32)
method close*(this: NullOutputStream)

var NullOutputStream_NULL_OUTPUT_STREAMValue: NullOutputStream
var NullOutputStream_NULL_OUTPUT_STREAMSet = false
proc NULL_OUTPUT_STREAMStatic*(t: typedesc[NullOutputStream]): NullOutputStream =
    if not NullOutputStream_NULL_OUTPUT_STREAMSet:
        NullOutputStream_NULL_OUTPUT_STREAMSet = true
        NullOutputStream_NULL_OUTPUT_STREAMValue = newNullOutputStream()
    NullOutputStream_NULL_OUTPUT_STREAMValue

proc initNullOutputStream*(this: NullOutputStream) =
    initOutputStream(this)

proc newNullOutputStream*(): NullOutputStream =
    result = NullOutputStream()
    initNullOutputStream(result)

method write*(this: NullOutputStream, b: int32) =
        discard

method write*(this: NullOutputStream, b: JArray[int8], off: int32, len: int32) =
        discard

method close*(this: NullOutputStream) =
        discard

when declared(newNullOutputStreamHook0):
    newNullOutputStreamHook0 = proc (): OutputStream = newNullOutputStream()

