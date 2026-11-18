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
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule
import org/allbinary/logic/io/AbFileInputStream as AbFileInputStreamModule
export AbFileInputStreamModule

type
    AbFileLocalInputStream* = ref object of AbFileInputStream

proc newAbFileLocalInputStream*(file: AbFile): AbFileLocalInputStream
proc initAbFileLocalInputStream*(this: AbFileLocalInputStream, file: AbFile)
import org/allbinary/logic/io/file/AbFileNativeUtil as AbFileNativeUtilModule
export AbFileNativeUtilModule


proc initAbFileLocalInputStream*(this: AbFileLocalInputStream, file: AbFile) =
        initAbFileInputStream(this, AbFileNativeUtil.get(file).getPath())

proc newAbFileLocalInputStream*(file: AbFile): AbFileLocalInputStream =
    result = AbFileLocalInputStream()
    initAbFileLocalInputStream(result, file)

when declared(newAbFileLocalInputStreamHook1):
    newAbFileLocalInputStreamHook1 = proc (file: AbFile): AbFileInputStream = newAbFileLocalInputStream(file)

