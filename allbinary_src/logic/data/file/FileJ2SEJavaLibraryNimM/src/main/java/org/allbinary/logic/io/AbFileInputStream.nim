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
import java/io/File as FileModule
export FileModule
import java/io/FileInputStream as FileInputStreamModule
export FileInputStreamModule
import java/io/FileNotFoundException as FileNotFoundExceptionModule
export FileNotFoundExceptionModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    AbFileInputStream* = ref object of FileInputStream

proc newAbFileInputStream*(name: string): AbFileInputStream
proc initAbFileInputStream*(this: AbFileInputStream, name: string)
proc createFromAbFile*(t: typedesc[AbFileInputStream], file: AbFile): AbFileInputStream {.discardable.}
proc createFromFile*(t: typedesc[AbFileInputStream], file: JFile): AbFileInputStream {.discardable.}
import org/allbinary/logic/io/file/AbFileNativeUtil as AbFileNativeUtilModule
export AbFileNativeUtilModule


proc initAbFileInputStream*(this: AbFileInputStream, name: string) =
        initFileInputStream(this, name)

proc newAbFileInputStream*(name: string): AbFileInputStream =
    result = AbFileInputStream()
    initAbFileInputStream(result, name)

proc createFromAbFile*(t: typedesc[AbFileInputStream], file: AbFile): AbFileInputStream {.discardable.} =
        return newAbFileInputStream(AbFileNativeUtil.get(file).getPath())

proc createFromFile*(t: typedesc[AbFileInputStream], file: JFile): AbFileInputStream {.discardable.} =
        return newAbFileInputStream(file.getPath())

when declared(newAbFileInputStreamHook1):
    newAbFileInputStreamHook1 = proc (name: string): FileInputStream = newAbFileInputStream(name)

