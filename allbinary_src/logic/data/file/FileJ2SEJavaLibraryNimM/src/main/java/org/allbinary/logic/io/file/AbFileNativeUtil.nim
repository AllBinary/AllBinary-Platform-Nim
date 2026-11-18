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
# package org.allbinary.logic.io.file

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/File as FileModule
export FileModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    AbFileNativeUtil* = ref object of JObject

proc newAbFileNativeUtil*(): AbFileNativeUtil
proc get*(t: typedesc[AbFileNativeUtil], file: AbFile): JFile {.discardable.}


proc initAbFileNativeUtil*(this: AbFileNativeUtil) =
    discard

proc newAbFileNativeUtil*(): AbFileNativeUtil =
    result = AbFileNativeUtil()
    initAbFileNativeUtil(result)

proc get*(t: typedesc[AbFileNativeUtil], file: AbFile): JFile {.discardable.} =
        return file.getFile()

