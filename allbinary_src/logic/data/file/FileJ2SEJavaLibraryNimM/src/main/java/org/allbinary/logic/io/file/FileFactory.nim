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
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    FileFactory* = ref object of JObject

proc newFileFactory*(): FileFactory
proc getInstance*(t: typedesc[FileFactory]): FileFactory {.discardable.}
method getInstance*(this: FileFactory, filePath: string): AbFile {.base, discardable.}
method getInstance*(this: FileFactory, file: AbFile, childFilePath: string): AbFile {.base, discardable.}
method isFile*(this: FileFactory, path: string): bool {.base, discardable.}

var FileFactory_instanceValue: FileFactory
var FileFactory_instanceSet = false
proc instance*(t: typedesc[FileFactory]): FileFactory =
    if not FileFactory_instanceSet:
        FileFactory_instanceSet = true
        FileFactory_instanceValue = newFileFactory()
    FileFactory_instanceValue

proc initFileFactory*(this: FileFactory) =
    discard

proc newFileFactory*(): FileFactory =
    result = FileFactory()
    initFileFactory(result)

proc getInstance*(t: typedesc[FileFactory]): FileFactory {.discardable.} =
        return FileFactory.instance

method getInstance*(this: FileFactory, filePath: string): AbFile {.base, discardable.} =
        return AbFile.createAbFileFromRawPath(filePath)

method getInstance*(this: FileFactory, file: AbFile, childFilePath: string): AbFile {.base, discardable.} =
        return AbFile.createAbFileWithChild(file, childFilePath)

method isFile*(this: FileFactory, path: string): bool {.base, discardable.} =
        var file: AbFile = AbFile.createAbFile(path)
        if file.exists():
            return true
        else:
            return false

