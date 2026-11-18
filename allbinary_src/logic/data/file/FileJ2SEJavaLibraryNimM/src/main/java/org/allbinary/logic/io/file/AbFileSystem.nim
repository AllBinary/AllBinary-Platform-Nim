#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
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
import java/io/FileInputStream as FileInputStreamModule
export FileInputStreamModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

#FileJ2SE should be the same as J2SEForJ2ME
type
    AbFileSystem* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings

proc newAbFileSystem*(): AbFileSystem
proc getInstance*(t: typedesc[AbFileSystem]): AbFileSystem {.discardable.}
method isDirectoryOrFile*(this: AbFileSystem, path: string): bool {.base, discardable.}
method isDirectory*(this: AbFileSystem, path: string): bool {.base, discardable.}
method getFilesAsStringArrayForPath*(this: AbFileSystem, currentDirPath: string): JArray[string] {.base, discardable.}
method readAsString*(this: AbFileSystem, fileName: string): string {.base, discardable.}
method readAsString*(this: AbFileSystem, fileName: string, bytes: JArray[int8]): string {.base, discardable.}
method close*(this: AbFileSystem, closeable: JObject): bool {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var AbFileSystem_instanceValue: AbFileSystem
var AbFileSystem_instanceSet = false
proc instance*(t: typedesc[AbFileSystem]): AbFileSystem =
    if not AbFileSystem_instanceSet:
        AbFileSystem_instanceSet = true
        AbFileSystem_instanceValue = newAbFileSystem()
    AbFileSystem_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAbFileSystem(this: AbFileSystem) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initAbFileSystem*(this: AbFileSystem) =
    this.initFieldsAbFileSystem()

proc newAbFileSystem*(): AbFileSystem =
    result = AbFileSystem()
    initAbFileSystem(result)

proc getInstance*(t: typedesc[AbFileSystem]): AbFileSystem {.discardable.} =
        return AbFileSystem.instance

method isDirectoryOrFile*(this: AbFileSystem, path: string): bool {.base, discardable.} =
        let file: JFile = newJFile(path)
        return file.isDirectory() or file.isFile()

method isDirectory*(this: AbFileSystem, path: string): bool {.base, discardable.} =
        return newJFile(path).isDirectory()

method getFilesAsStringArrayForPath*(this: AbFileSystem, currentDirPath: string): JArray[string] {.base, discardable.} =
        let file: JFile = newJFile(currentDirPath)
        if file.exists():
            return file.list()
        else:
            return StringUtil.getInstance().getArrayInstance()

method readAsString*(this: AbFileSystem, fileName: string): string {.base, discardable.} =
        let bytes: JArray[int8] = newJArray[int8](1000000, default(int8))
        return this.readAsString(fileName, bytes)

method readAsString*(this: AbFileSystem, fileName: string, bytes: JArray[int8]): string {.base, discardable.} =
        var closeable: JObject = NullUtil.getInstance().NULL_OBJECT
        try:
            let idFile: InputStream = newFileInputStream(fileName)
            closeable = idFile
            let size: int32 = idFile.read(bytes)
            if size > 0:
                return jFromChars(bytes, 0, size)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "readAsString", e)
        finally:
            this.close(closeable)
        return StringUtil.getInstance().EMPTY_STRING

method close*(this: AbFileSystem, closeable: JObject): bool {.base, discardable.} =
        try:
            if (not jIsNil(closeable)):
                let inputStream: InputStream = (InputStream(JObject(closeable)))
                inputStream.close()
            return true
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e)
            return false

