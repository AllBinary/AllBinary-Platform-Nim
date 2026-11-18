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
import org/allbinary/logic/io/AbFileInputStream as AbFileInputStreamModule
export AbFileInputStreamModule
import org/allbinary/logic/io/AbFileOutputStream as AbFileOutputStreamModule
export AbFileOutputStreamModule

type
    FileStreamFactory* = ref object of JObject

proc newFileStreamFactory*(): FileStreamFactory
proc initFileStreamFactory*(this: FileStreamFactory)
proc getInstance*(t: typedesc[FileStreamFactory]): FileStreamFactory {.discardable.}
method getFileInputStreamInstance*(this: FileStreamFactory, path: string, fileName: string): AbFileInputStream {.base, discardable.}
method getFileOutputStreamInstance*(this: FileStreamFactory, path: string, fileName: string): AbFileOutputStream {.base, discardable.}
method delete*(this: FileStreamFactory, path: string, fileName: string) {.base.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule
import org/allbinary/logic/io/path/AbPath as AbPathModule
export AbPathModule

var FileStreamFactory_SINGLETONValue: JObject
var FileStreamFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[FileStreamFactory]): JObject =
    if not FileStreamFactory_SINGLETONSet:
        FileStreamFactory_SINGLETONSet = true
        FileStreamFactory_SINGLETONValue = NullUtil.getInstance().NULL_OBJECT
    FileStreamFactory_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[FileStreamFactory], value: JObject) =
    FileStreamFactory_SINGLETONSet = true
    FileStreamFactory_SINGLETONValue = value

proc getInstance*(t: typedesc[FileStreamFactory]): FileStreamFactory {.discardable.} =
        if FileStreamFactory.SINGLETON == NullUtil.getInstance().NULL_OBJECT:
            FileStreamFactory.SINGLETON = newFileStreamFactory()
        return FileStreamFactory(JObject(FileStreamFactory.SINGLETON))

proc initFileStreamFactory*(this: FileStreamFactory) =
        discard
        discard

proc newFileStreamFactory*(): FileStreamFactory =
    result = FileStreamFactory()
    initFileStreamFactory(result)

method getFileInputStreamInstance*(this: FileStreamFactory, path: string, fileName: string): AbFileInputStream {.base, discardable.} =
        let FILEABPATH: AbPath = newAbPath(path, fileName)
        let file: AbFile = AbFile.createAbFileFromAbPath(FILEABPATH)
        return AbFileInputStream.createFromAbFile(file)

method getFileOutputStreamInstance*(this: FileStreamFactory, path: string, fileName: string): AbFileOutputStream {.base, discardable.} =
        let FILEABPATH: AbPath = newAbPath(path, fileName)
        let file: AbFile = AbFile.createAbFileFromAbPath(FILEABPATH)
        if file.exists():
            file.delete()
            file.createNewFile()
        return AbFileOutputStream.createFromAbFile(file)

method delete*(this: FileStreamFactory, path: string, fileName: string) {.base.} =
        let FILEABPATH: AbPath = newAbPath(path, fileName)
        let file: AbFile = AbFile.createAbFileFromAbPath(FILEABPATH)
        file.delete()

