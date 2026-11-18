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
# package org.allbinary.logic.io.path

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/io/file/FilePathData as FilePathDataModule
export FilePathDataModule
import org/allbinary/logic/io/path/AbPathData as AbPathDataModule
export AbPathDataModule
import org/allbinary/logic/io/path/AbFilePath as AbFilePathModule
export AbFilePathModule
import org/allbinary/logic/io/path/AbPath as AbPathModule
export AbPathModule

#Used to correct user input for paths
type
    PathUtil* = ref object of JObject
        abPathData*: AbPathData
        filePathData*: FilePathData

proc newPathUtil*(): PathUtil
proc initPathUtil*(this: PathUtil)
proc getInstance*(t: typedesc[PathUtil]): PathUtil {.discardable.}
method getExtensionWithAbFilePath*(this: PathUtil, abFilePath: AbFilePath): string {.base, discardable.}
method getExtensionWithAbPath*(this: PathUtil, abPath: AbPath): string {.base, discardable.}
method getWithoutExtensionWithAbFilePath*(this: PathUtil, abFilePath: AbFilePath): string {.base, discardable.}
method getWithoutExtensionWithAbPath*(this: PathUtil, abPath: AbPath): string {.base, discardable.}
method getWithoutExtension*(this: PathUtil, filePath: string): string {.base, discardable.}
method isValid*(this: PathUtil, path: string): bool {.base, discardable.}
method isValidStart*(this: PathUtil, path: string): bool {.base, discardable.}
method isValidEnd*(this: PathUtil, path: string): bool {.base, discardable.}
method adjustStart*(this: PathUtil, path: string): string {.base, discardable.}
method adjustEnd*(this: PathUtil, path: string): string {.base, discardable.}
method adjust*(this: PathUtil, path: string): string {.base, discardable.}
method removeNameFromPath*(this: PathUtil, path: string): AbPath {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule

var PathUtil_instanceValue: PathUtil
var PathUtil_instanceSet = false
proc instance*(t: typedesc[PathUtil]): PathUtil =
    if not PathUtil_instanceSet:
        PathUtil_instanceSet = true
        PathUtil_instanceValue = newPathUtil()
    PathUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPathUtil(this: PathUtil) =
    this.abPathData = AbPathData.getInstance()
    this.filePathData = FilePathData.getInstance()
    discard

proc getInstance*(t: typedesc[PathUtil]): PathUtil {.discardable.} =
        return PathUtil.instance

proc initPathUtil*(this: PathUtil) =
        this.initFieldsPathUtil()
        discard

proc newPathUtil*(): PathUtil =
    result = PathUtil()
    initPathUtil(result)

method getExtensionWithAbFilePath*(this: PathUtil, abFilePath: AbFilePath): string {.base, discardable.} =
        return this.abPathData.getExtension(abFilePath.toString())

method getExtensionWithAbPath*(this: PathUtil, abPath: AbPath): string {.base, discardable.} =
        return this.abPathData.getExtension(abPath.toString())

method getWithoutExtensionWithAbFilePath*(this: PathUtil, abFilePath: AbFilePath): string {.base, discardable.} =
        return this.getWithoutExtension(abFilePath.toString())

method getWithoutExtensionWithAbPath*(this: PathUtil, abPath: AbPath): string {.base, discardable.} =
        return this.getWithoutExtension(abPath.toString())

method getWithoutExtension*(this: PathUtil, filePath: string): string {.base, discardable.} =
        var indexOfFileExtensionDelmiter: int32 = this.abPathData.getExtensionIndex(filePath)
        var pathWithoutExtension: string = filePath
        if indexOfFileExtensionDelmiter >= 0:
            pathWithoutExtension = jSubstring(filePath, 0, indexOfFileExtensionDelmiter)
        return pathWithoutExtension

method isValid*(this: PathUtil, path: string): bool {.base, discardable.} =
        if this.isValidStart(path):
            if this.isValidEnd(path):
                return true
        return false

method isValidStart*(this: PathUtil, path: string): bool {.base, discardable.} =
        if jCharAt(path, 0) == this.abPathData.SEPARATORCHAR or jCharAt(path, 0) == uint16(ord('.')):
            return true
        else:
            return false

method isValidEnd*(this: PathUtil, path: string): bool {.base, discardable.} =
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(path):
            return false
        if jCharAt(path, jLength(path) -% 1) == this.abPathData.SEPARATORCHAR:
            return true
        else:
            return false

method adjustStart*(this: PathUtil, path: string): string {.base, discardable.} =
        var path = path
        if (not this.isValidStart(path)):
            path = jstr(this.abPathData.SEPARATOR) & jstr(path)
        return path

method adjustEnd*(this: PathUtil, path: string): string {.base, discardable.} =
        var path = path
        if (not this.isValidEnd(path)):
            path = jstr(path) & jstr(this.abPathData.SEPARATOR)
        return path

method adjust*(this: PathUtil, path: string): string {.base, discardable.} =
        var path = path
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(path):
            return this.abPathData.SEPARATOR
        if jIndexOf(path, "\\") >= 0:
            path = jReplace(path, uint16(ord('\\')), this.abPathData.SEPARATORCHAR)
        return path

method removeNameFromPath*(this: PathUtil, path: string): AbPath {.base, discardable.} =
        var endIndex: int32 = jLastIndexOf(path, this.abPathData.SEPARATOR)
        if endIndex < 0:
            endIndex = jLastIndexOf(path, this.filePathData.SEPARATORCHAR)
        if endIndex < 0:
            return AbPath.createAbPath()
        if jLength(path) == endIndex +% 1:
            return this.removeNameFromPath(jSubstring(path, 0, endIndex -% 1))
        else:
            let pathWithoutName: string = jSubstring(path, 0, endIndex)
            return newAbPath(pathWithoutName, StringUtil.getInstance().EMPTY_STRING)

