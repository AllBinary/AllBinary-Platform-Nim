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
import java/io/Writer as WriterModule
export WriterModule

type
    NullWriter* = ref object of Writer

proc newNullWriter*(): NullWriter
method write*(this: NullWriter, c: int32)
method write*(this: NullWriter, cbuf: JArray[uint16], off: int32, len: int32)
method write*(this: NullWriter, str: string)
method write*(this: NullWriter, str: string, off: int32, len: int32)
method flush*(this: NullWriter)
method close*(this: NullWriter)

var NullWriter_NULL_WRITERValue: NullWriter
var NullWriter_NULL_WRITERSet = false
proc NULL_WRITERStatic*(t: typedesc[NullWriter]): NullWriter =
    if not NullWriter_NULL_WRITERSet:
        NullWriter_NULL_WRITERSet = true
        NullWriter_NULL_WRITERValue = newNullWriter()
    NullWriter_NULL_WRITERValue

proc initNullWriter*(this: NullWriter) =
    initWriter(this)

proc newNullWriter*(): NullWriter =
    result = NullWriter()
    initNullWriter(result)

method write*(this: NullWriter, c: int32) =
        discard

method write*(this: NullWriter, cbuf: JArray[uint16], off: int32, len: int32) =
        discard

method write*(this: NullWriter, str: string) =
        discard

method write*(this: NullWriter, str: string, off: int32, len: int32) =
        discard

method flush*(this: NullWriter) =
        discard

method close*(this: NullWriter) =
        discard

when declared(newNullWriterHook0):
    newNullWriterHook0 = proc (): Writer = newNullWriter()

