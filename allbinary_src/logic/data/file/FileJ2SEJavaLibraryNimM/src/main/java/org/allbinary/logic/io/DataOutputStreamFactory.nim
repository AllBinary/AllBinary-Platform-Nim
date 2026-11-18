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
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule
import org/allbinary/logic/io/AbDataOutputStream as AbDataOutputStreamModule
export AbDataOutputStreamModule

type
    DataOutputStreamFactory* = ref object of JObject

proc newDataOutputStreamFactory*(): DataOutputStreamFactory
proc getInstance*(t: typedesc[DataOutputStreamFactory]): DataOutputStreamFactory {.discardable.}
method getInstanceForAbFile*(this: DataOutputStreamFactory, file: AbFile): AbDataOutputStream {.base, discardable.}
method getInstance*(this: DataOutputStreamFactory, filePath: string, fileName: string): AbDataOutputStream {.base, discardable.}
import org/allbinary/logic/io/AbFileOutputStream as AbFileOutputStreamModule
export AbFileOutputStreamModule
import org/allbinary/logic/io/FileStreamFactory as FileStreamFactoryModule
export FileStreamFactoryModule

var DataOutputStreamFactory_instanceValue: DataOutputStreamFactory
var DataOutputStreamFactory_instanceSet = false
proc instance*(t: typedesc[DataOutputStreamFactory]): DataOutputStreamFactory =
    if not DataOutputStreamFactory_instanceSet:
        DataOutputStreamFactory_instanceSet = true
        DataOutputStreamFactory_instanceValue = newDataOutputStreamFactory()
    DataOutputStreamFactory_instanceValue

proc initDataOutputStreamFactory*(this: DataOutputStreamFactory) =
    discard

proc newDataOutputStreamFactory*(): DataOutputStreamFactory =
    result = DataOutputStreamFactory()
    initDataOutputStreamFactory(result)

proc getInstance*(t: typedesc[DataOutputStreamFactory]): DataOutputStreamFactory {.discardable.} =
        return DataOutputStreamFactory.instance

method getInstanceForAbFile*(this: DataOutputStreamFactory, file: AbFile): AbDataOutputStream {.base, discardable.} =
        let idFileOutputStream: AbFileOutputStream = AbFileOutputStream.createFromAbFile(file)
        let idOutData: AbDataOutputStream = newAbDataOutputStream(idFileOutputStream)
        return idOutData

method getInstance*(this: DataOutputStreamFactory, filePath: string, fileName: string): AbDataOutputStream {.base, discardable.} =
        let fileStreamFactory: FileStreamFactory = FileStreamFactory.getInstance()
        let fileOutputStream: AbFileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName)
        var idOutData: AbDataOutputStream = newAbDataOutputStream(fileOutputStream)
        return idOutData

