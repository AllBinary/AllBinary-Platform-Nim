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
import java/io/BufferedWriter as BufferedWriterModule
export BufferedWriterModule
import java/io/FileReader as FileReaderModule
export FileReaderModule
import java/io/FileWriter as FileWriterModule
export FileWriterModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    BufferedIOUtil* = ref object of JObject

proc newBufferedIOUtil*(): BufferedIOUtil
proc copy*(t: typedesc[BufferedIOUtil], backupFile: AbFile, backupFileBak: AbFile)
import org/allbinary/logic/io/file/AbFileNativeUtil as AbFileNativeUtilModule
export AbFileNativeUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initBufferedIOUtil*(this: BufferedIOUtil) =
    discard

proc newBufferedIOUtil*(): BufferedIOUtil =
    result = BufferedIOUtil()
    initBufferedIOUtil(result)

proc copy*(t: typedesc[BufferedIOUtil], backupFile: AbFile, backupFileBak: AbFile) =
        var line: string = StringUtil.getInstance().EMPTY_STRING
        let tmpOut: BufferedWriter = newBufferedWriter(newFileWriter(AbFileNativeUtil.get(backupFileBak)))
        let tmpIn: BufferedReader = newBufferedReader(newFileReader(AbFileNativeUtil.get(backupFile)))
        while tmpIn.ready():
            line = tmpIn.readLine()
            tmpOut.write(line, 0, jLength(line))
            tmpOut.newLine()
        tmpOut.flush()

