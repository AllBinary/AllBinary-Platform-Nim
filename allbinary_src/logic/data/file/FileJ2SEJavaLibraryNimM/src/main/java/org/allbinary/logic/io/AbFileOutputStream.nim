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
import java/io/FileNotFoundException as FileNotFoundExceptionModule
export FileNotFoundExceptionModule
import java/io/FileOutputStream as FileOutputStreamModule
export FileOutputStreamModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    AbFileOutputStream* = ref object of FileOutputStream

proc newAbFileOutputStream*(name: string, append: bool): AbFileOutputStream
proc initAbFileOutputStream*(this: AbFileOutputStream, name: string, append: bool)
proc createFromAbFile*(t: typedesc[AbFileOutputStream], file: AbFile): AbFileOutputStream {.discardable.}
proc createFromAbFileAppend*(t: typedesc[AbFileOutputStream], file: AbFile, append: bool): AbFileOutputStream {.discardable.}
proc createFromFilePath*(t: typedesc[AbFileOutputStream], name: string): AbFileOutputStream {.discardable.}
proc createFromFilePathAppend*(t: typedesc[AbFileOutputStream], name: string, append: bool): AbFileOutputStream {.discardable.}


proc createFromAbFile*(t: typedesc[AbFileOutputStream], file: AbFile): AbFileOutputStream {.discardable.} =
        return newAbFileOutputStream(file.getPath(), false)

proc createFromAbFileAppend*(t: typedesc[AbFileOutputStream], file: AbFile, append: bool): AbFileOutputStream {.discardable.} =
        return newAbFileOutputStream(file.getPath(), append)

proc createFromFilePath*(t: typedesc[AbFileOutputStream], name: string): AbFileOutputStream {.discardable.} =
        return newAbFileOutputStream(name, false)

proc createFromFilePathAppend*(t: typedesc[AbFileOutputStream], name: string, append: bool): AbFileOutputStream {.discardable.} =
        return newAbFileOutputStream(name, append)

proc initAbFileOutputStream*(this: AbFileOutputStream, name: string, append: bool) =
        initFileOutputStream(this, name, append)

proc newAbFileOutputStream*(name: string, append: bool): AbFileOutputStream =
    result = AbFileOutputStream()
    initAbFileOutputStream(result, name, append)

when declared(newAbFileOutputStreamHook2):
    newAbFileOutputStreamHook2 = proc (name: string, append: bool): FileOutputStream = newAbFileOutputStream(name, append)

