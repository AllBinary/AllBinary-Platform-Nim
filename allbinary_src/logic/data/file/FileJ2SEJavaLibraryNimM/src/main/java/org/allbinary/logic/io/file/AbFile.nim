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
import java/io/FileFilter as FileFilterModule
export FileFilterModule
import java/io/FilenameFilter as FilenameFilterModule
export FilenameFilterModule
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/net/URI as URIModule
export URIModule
import org/allbinary/logic/io/path/AbPath as AbPathModule
export AbPathModule
import org/allbinary/logic/io/file/AbFileInterface as AbFileInterfaceModule
export AbFileInterfaceModule

type
    AbFile* = ref object of AbFileInterface
        file*: JFile

proc newAbFile*(file: JFile): AbFile
proc initAbFile*(this: AbFile, file: JFile)
proc createAbFileWithChild*(t: typedesc[AbFile], file: AbFile, childPathName: string): AbFile {.discardable.}
proc createAbFile*(t: typedesc[AbFile], filePath: string): AbFile {.discardable.}
proc createAbFilePathAndName*(t: typedesc[AbFile], filePath: string, fileName: string): AbFile {.discardable.}
proc createAbFileFromAbPath*(t: typedesc[AbFile], abPath: AbPath): AbFile {.discardable.}
proc createAbFileFromRawPath*(t: typedesc[AbFile], filePath: string): AbFile {.discardable.}
method getFile*(this: AbFile): JFile {.base, discardable.}
method getName*(this: AbFile): string {.base, discardable.}
method getParent*(this: AbFile): string {.discardable.}
method getParentFile*(this: AbFile): JObject {.base, discardable.}
method getPath*(this: AbFile): string {.discardable.}
method isAbsolute*(this: AbFile): bool {.discardable.}
method getAbsolutePath*(this: AbFile): string {.discardable.}
method getAbsoluteFile*(this: AbFile): JObject {.base, discardable.}
method getCanonicalPath*(this: AbFile): string {.discardable.}
method getCanonicalFile*(this: AbFile): JObject {.base, discardable.}
method toURI*(this: AbFile): URI {.discardable.}
method canRead*(this: AbFile): bool {.discardable.}
method canWrite*(this: AbFile): bool {.discardable.}
method exists*(this: AbFile): bool {.discardable.}
method isDirectory*(this: AbFile): bool {.discardable.}
method isFile*(this: AbFile): bool {.discardable.}
method isHidden*(this: AbFile): bool {.discardable.}
method lastModified*(this: AbFile): int64 {.discardable.}
method length*(this: AbFile): int64 {.discardable.}
method createNewFile*(this: AbFile): bool {.discardable.}
method delete*(this: AbFile): bool {.discardable.}
method deleteOnExit*(this: AbFile)
method list*(this: AbFile): JArray[string] {.discardable.}
method listWithFilter*(this: AbFile, filter: FilenameFilter): JArray[string] {.discardable.}
method listFiles*(this: AbFile): JArray[JObject] {.base, discardable.}
method listFilesFileNameFilter*(this: AbFile, filter: FilenameFilter): JArray[JObject] {.base, discardable.}
method listFilesFileFilter*(this: AbFile, filter: FileFilter): JArray[JObject] {.base, discardable.}
method mkdir*(this: AbFile): bool {.discardable.}
method mkdirs*(this: AbFile): bool {.discardable.}
method renameTo*(this: AbFile, dest: AbFile): bool {.base, discardable.}
method setLastModified*(this: AbFile, time: int64): bool {.discardable.}
method setReadOnly*(this: AbFile): bool {.discardable.}
method setWritable*(this: AbFile, writable: bool, ownerOnly: bool): bool {.base, discardable.}
method setWritable*(this: AbFile, writable: bool): bool {.base, discardable.}
method setReadable*(this: AbFile, readable: bool, ownerOnly: bool): bool {.base, discardable.}
method setReadable*(this: AbFile, readable: bool): bool {.base, discardable.}
method setExecutable*(this: AbFile, executable: bool, ownerOnly: bool): bool {.base, discardable.}
method setExecutable*(this: AbFile, executable: bool): bool {.base, discardable.}
method canExecute*(this: AbFile): bool {.base, discardable.}
method getTotalSpace*(this: AbFile): int64 {.base, discardable.}
method getFreeSpace*(this: AbFile): int64 {.base, discardable.}
method getUsableSpace*(this: AbFile): int64 {.base, discardable.}
method compareTo*(this: AbFile, pathname: JFile): int32 {.base, discardable.}
method equals*(this: AbFile, obj: JObject): bool {.discardable.}
method hashCode*(this: AbFile): int32 {.discardable.}
method toString*(this: AbFile): string {.discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var AbFile_NULL_FILEValue: AbFile
var AbFile_NULL_FILESet = false
proc NULL_FILE*(t: typedesc[AbFile]): AbFile =
    if not AbFile_NULL_FILESet:
        AbFile_NULL_FILESet = true
        AbFile_NULL_FILEValue = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING)
    AbFile_NULL_FILEValue

# Java field initializers run after the base initializer
proc initFieldsAbFile(this: AbFile) =
    
    discard

proc createAbFileWithChild*(t: typedesc[AbFile], file: AbFile, childPathName: string): AbFile {.discardable.} =
        return newAbFile(newJFile(file.getFile(), childPathName))

proc createAbFile*(t: typedesc[AbFile], filePath: string): AbFile {.discardable.} =
        return newAbFile(newJFile(newAbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()))

proc createAbFilePathAndName*(t: typedesc[AbFile], filePath: string, fileName: string): AbFile {.discardable.} =
        return newAbFile(newJFile(newAbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName))

proc createAbFileFromAbPath*(t: typedesc[AbFile], abPath: AbPath): AbFile {.discardable.} =
        return newAbFile(newJFile(abPath.toFileSystemString()))

proc createAbFileFromRawPath*(t: typedesc[AbFile], filePath: string): AbFile {.discardable.} =
        return newAbFile(newJFile(filePath))

proc initAbFile*(this: AbFile, file: JFile) =
        this.initFieldsAbFile()
        this.file = file

proc newAbFile*(file: JFile): AbFile =
    result = AbFile()
    initAbFile(result, file)

method getFile*(this: AbFile): JFile {.base, discardable.} =
        return this.file

method getName*(this: AbFile): string {.base, discardable.} =
        return this.file.getName()

method getParent*(this: AbFile): string {.discardable.} =
        return this.file.getParent()

method getParentFile*(this: AbFile): JObject {.base, discardable.} =
        return this.file.getParentFile()

method getPath*(this: AbFile): string {.discardable.} =
        return this.file.getPath()

method isAbsolute*(this: AbFile): bool {.discardable.} =
        return this.file.isAbsolute()

method getAbsolutePath*(this: AbFile): string {.discardable.} =
        return this.file.getAbsolutePath()

method getAbsoluteFile*(this: AbFile): JObject {.base, discardable.} =
        return this.file.getAbsoluteFile()

method getCanonicalPath*(this: AbFile): string {.discardable.} =
        return this.file.getCanonicalPath()

method getCanonicalFile*(this: AbFile): JObject {.base, discardable.} =
        return this.file.getCanonicalFile()

method toURI*(this: AbFile): URI {.discardable.} =
        return this.file.toURI()

method canRead*(this: AbFile): bool {.discardable.} =
        return this.file.canRead()

method canWrite*(this: AbFile): bool {.discardable.} =
        return this.file.canWrite()

method exists*(this: AbFile): bool {.discardable.} =
        return this.file.exists()

method isDirectory*(this: AbFile): bool {.discardable.} =
        return this.file.isDirectory()

method isFile*(this: AbFile): bool {.discardable.} =
        return this.file.isFile()

method isHidden*(this: AbFile): bool {.discardable.} =
        return this.file.isHidden()

method lastModified*(this: AbFile): int64 {.discardable.} =
        return this.file.lastModified()

method length*(this: AbFile): int64 {.discardable.} =
        return int64(this.file.length())

method createNewFile*(this: AbFile): bool {.discardable.} =
        return this.file.createNewFile()

method delete*(this: AbFile): bool {.discardable.} =
        return this.file.delete()

method deleteOnExit*(this: AbFile) =
        this.file.deleteOnExit()

method list*(this: AbFile): JArray[string] {.discardable.} =
        return this.file.list()

method listWithFilter*(this: AbFile, filter: FilenameFilter): JArray[string] {.discardable.} =
        return this.file.list(filter)

method listFiles*(this: AbFile): JArray[JObject] {.base, discardable.} =
        return JArray[JObject](this.file.listFiles())

method listFilesFileNameFilter*(this: AbFile, filter: FilenameFilter): JArray[JObject] {.base, discardable.} =
        return JArray[JObject](this.file.listFiles(filter))

method listFilesFileFilter*(this: AbFile, filter: FileFilter): JArray[JObject] {.base, discardable.} =
        return JArray[JObject](this.file.listFiles(filter))

method mkdir*(this: AbFile): bool {.discardable.} =
        return this.file.mkdir()

method mkdirs*(this: AbFile): bool {.discardable.} =
        return this.file.mkdirs()

method renameTo*(this: AbFile, dest: AbFile): bool {.base, discardable.} =
        return this.file.renameTo(dest.getFile())

method setLastModified*(this: AbFile, time: int64): bool {.discardable.} =
        return this.file.setLastModified(time)

method setReadOnly*(this: AbFile): bool {.discardable.} =
        return this.file.setReadOnly()

method setWritable*(this: AbFile, writable: bool, ownerOnly: bool): bool {.base, discardable.} =
        return this.file.setExecutable(writable, ownerOnly)

method setWritable*(this: AbFile, writable: bool): bool {.base, discardable.} =
        return this.file.setWritable(writable)

method setReadable*(this: AbFile, readable: bool, ownerOnly: bool): bool {.base, discardable.} =
        return this.file.setReadable(readable, ownerOnly)

method setReadable*(this: AbFile, readable: bool): bool {.base, discardable.} =
        return this.file.setReadable(readable)

method setExecutable*(this: AbFile, executable: bool, ownerOnly: bool): bool {.base, discardable.} =
        return this.file.setExecutable(executable, ownerOnly)

method setExecutable*(this: AbFile, executable: bool): bool {.base, discardable.} =
        return this.file.setExecutable(executable)

method canExecute*(this: AbFile): bool {.base, discardable.} =
        return this.file.canExecute()

method getTotalSpace*(this: AbFile): int64 {.base, discardable.} =
        return this.file.getTotalSpace()

method getFreeSpace*(this: AbFile): int64 {.base, discardable.} =
        return this.file.getFreeSpace()

method getUsableSpace*(this: AbFile): int64 {.base, discardable.} =
        return this.file.getUsableSpace()

method compareTo*(this: AbFile, pathname: JFile): int32 {.base, discardable.} =
        return this.file.compareTo(pathname)

method equals*(this: AbFile, obj: JObject): bool {.discardable.} =
        return TsUtil.getInstance().equalsNotstring(this.file, obj)

method hashCode*(this: AbFile): int32 {.discardable.} =
        return this.file.hashCode()

method toString*(this: AbFile): string {.discardable.} =
        return this.file.toString()

