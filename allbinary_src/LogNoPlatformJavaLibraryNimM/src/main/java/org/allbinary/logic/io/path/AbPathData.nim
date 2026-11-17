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

type
    AbPathData* = ref object of JObject
        EXTENSION_SEP*: string
        SEPARATORCHAR*: uint16
        SEPARATOR*: string

proc newAbPathData*(): AbPathData
proc initAbPathData*(this: AbPathData)
proc getInstance*(t: typedesc[AbPathData]): AbPathData {.discardable.}
method getExtensionIndex*(this: AbPathData, filePath: string): int32 {.base, discardable.}
method getExtensionWithDot*(this: AbPathData, filePath: string): string {.base, discardable.}
method getExtension*(this: AbPathData, filePath: string): string {.base, discardable.}
method getNameFromPath*(this: AbPathData, path: string): string {.base, discardable.}
method removeNameFromPath*(this: AbPathData, path: string): string {.base, discardable.}
import org/allbinary/logic/io/file/FilePathData as FilePathDataModule
export FilePathDataModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var AbPathData_instanceValue: AbPathData
var AbPathData_instanceSet = false
proc instance*(t: typedesc[AbPathData]): AbPathData =
    if not AbPathData_instanceSet:
        AbPathData_instanceSet = true
        AbPathData_instanceValue = newAbPathData()
    AbPathData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAbPathData(this: AbPathData) =
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD
    this.SEPARATORCHAR = uint16(ord('/'))
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
    discard

proc getInstance*(t: typedesc[AbPathData]): AbPathData {.discardable.} =
        return AbPathData.instance

proc initAbPathData*(this: AbPathData) =
        this.initFieldsAbPathData()
        discard

proc newAbPathData*(): AbPathData =
    result = AbPathData()
    initAbPathData(result)

method getExtensionIndex*(this: AbPathData, filePath: string): int32 {.base, discardable.} =
        let indexOfFileExtensionDelmiter: int32 = jLastIndexOf(filePath, this.EXTENSION_SEP)
        let indexOfLatDelimiter: int32 = jLastIndexOf(filePath, this.SEPARATORCHAR)
        if indexOfFileExtensionDelmiter < 0:
            return -1
        if indexOfFileExtensionDelmiter < indexOfLatDelimiter:
            return -1
        return indexOfFileExtensionDelmiter

method getExtensionWithDot*(this: AbPathData, filePath: string): string {.base, discardable.} =
        let indexOfFileExtensionDelmiter: int32 = this.getExtensionIndex(filePath)
        var extension: string = StringUtil.getInstance().EMPTY_STRING
        if indexOfFileExtensionDelmiter >= 0:
            extension = jSubstring(filePath, indexOfFileExtensionDelmiter)
        return extension

method getExtension*(this: AbPathData, filePath: string): string {.base, discardable.} =
        let indexOfFileExtensionDelmiter: int32 = this.getExtensionIndex(filePath)
        var extension: string = StringUtil.getInstance().EMPTY_STRING
        if indexOfFileExtensionDelmiter >= 0:
            extension = jSubstring(filePath, indexOfFileExtensionDelmiter +% 1)
        return extension

method getNameFromPath*(this: AbPathData, path: string): string {.base, discardable.} =
        var endIndex: int32 = jLastIndexOf(path, this.SEPARATORCHAR)
        if endIndex < 0:
            endIndex = jLastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR)
        if endIndex < 0:
            return path
        if jLength(path) == endIndex +% 1:
            var categoryName: string = jSubstring(path, 0, endIndex)
            return this.getNameFromPath(categoryName)
        else:
            var categoryName: string = jSubstring(path, endIndex +% 1)
            return categoryName

method removeNameFromPath*(this: AbPathData, path: string): string {.base, discardable.} =
        var endIndex: int32 = jLastIndexOf(path, this.SEPARATORCHAR)
        if endIndex < 0:
            endIndex = jLastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR)
        if endIndex < 0:
            return StringUtil.getInstance().EMPTY_STRING
        if jLength(path) == endIndex +% 1:
            return this.removeNameFromPath(jSubstring(path, 0, endIndex -% 1))
        else:
            var pathWithoutName: string = jSubstring(path, 0, endIndex)
            return pathWithoutName

