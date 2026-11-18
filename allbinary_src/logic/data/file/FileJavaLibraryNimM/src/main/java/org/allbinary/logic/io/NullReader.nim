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
import java/io/Reader as ReaderModule
export ReaderModule

type
    NullReader* = ref object of Reader

proc newNullReader*(): NullReader
method read*(this: NullReader): int32 {.discardable.}
method read*(this: NullReader, cbuf: JArray[uint16], off: int32, len: int32): int32 {.discardable.}
method ready*(this: NullReader): bool {.discardable.}
method skip*(this: NullReader, n: int64): int64 {.discardable.}
method close*(this: NullReader)

var NullReader_NULL_READERValue: NullReader
var NullReader_NULL_READERSet = false
proc NULL_READERStatic*(t: typedesc[NullReader]): NullReader =
    if not NullReader_NULL_READERSet:
        NullReader_NULL_READERSet = true
        NullReader_NULL_READERValue = newNullReader()
    NullReader_NULL_READERValue

proc initNullReader*(this: NullReader) =
    initReader(this)

proc newNullReader*(): NullReader =
    result = NullReader()
    initNullReader(result)

method read*(this: NullReader): int32 {.discardable.} =
        return -1

method read*(this: NullReader, cbuf: JArray[uint16], off: int32, len: int32): int32 {.discardable.} =
        return -1

method ready*(this: NullReader): bool {.discardable.} =
        return false

method skip*(this: NullReader, n: int64): int64 {.discardable.} =
        return 0'i64

method close*(this: NullReader) =
        discard

when declared(newNullReaderHook0):
    newNullReaderHook0 = proc (): Reader = newNullReader()

