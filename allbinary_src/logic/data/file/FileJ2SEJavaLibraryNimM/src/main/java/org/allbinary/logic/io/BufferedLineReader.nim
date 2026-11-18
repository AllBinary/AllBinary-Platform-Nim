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
# package org.allbinary.logic.io

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/BufferedReader as BufferedReaderModule
export BufferedReaderModule
import java/io/FileReader as FileReaderModule
export FileReaderModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    BufferedLineReader* = ref object of JObject
        tmpIn*: BufferedReader

proc newBufferedLineReader*(file: AbFile): BufferedLineReader
proc initBufferedLineReader*(this: BufferedLineReader, file: AbFile)
method readUpToLines*(this: BufferedLineReader, readAheadIndex: int64) {.base.}
method readLine*(this: BufferedLineReader): string {.base, discardable.}
method ready*(this: BufferedLineReader): bool {.base, discardable.}
method getSize*(this: BufferedLineReader): int64 {.base, discardable.}
method getCurrent*(this: BufferedLineReader): int32 {.base, discardable.}
import org/allbinary/logic/io/file/AbFileNativeUtil as AbFileNativeUtilModule
export AbFileNativeUtilModule


# Java field initializers run after the base initializer
proc initFieldsBufferedLineReader(this: BufferedLineReader) =
    
    discard

proc initBufferedLineReader*(this: BufferedLineReader, file: AbFile) =
        this.initFieldsBufferedLineReader()
        this.tmpIn = newBufferedReader(newFileReader(AbFileNativeUtil.get(file)))

proc newBufferedLineReader*(file: AbFile): BufferedLineReader =
    result = BufferedLineReader()
    initBufferedLineReader(result, file)

method readUpToLines*(this: BufferedLineReader, readAheadIndex: int64) {.base.} =
        discard

method readLine*(this: BufferedLineReader): string {.base, discardable.} =
        return this.tmpIn.readLine()

method ready*(this: BufferedLineReader): bool {.base, discardable.} =
        return this.tmpIn.ready()

method getSize*(this: BufferedLineReader): int64 {.base, discardable.} =
        return 0'i64

method getCurrent*(this: BufferedLineReader): int32 {.base, discardable.} =
        return 0

