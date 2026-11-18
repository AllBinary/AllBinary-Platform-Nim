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
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/logic/io/path/AbPathData as AbPathDataModule
export AbPathDataModule
import org/allbinary/logic/io/path/PathUtil as PathUtilModule
export PathUtilModule

type
    AbPath* = ref object of JObject
        commonSeps*: CommonSeps
        abPathData*: AbPathData
        abPathUtil*: PathUtil
        EMPTY_STRING*: string
        schema*: string
        path*: string
        nameP*: string
        hasSchemaP*: bool
        numberOfSeps*: int32

proc newAbPath*(aPath: string, name: string): AbPath
proc initAbPath*(this: AbPath, aPath: string, name: string)
proc createAbPath*(t: typedesc[AbPath]): AbPath {.discardable.}
method init*(this: AbPath) {.base.}
method getSchema*(this: AbPath, aPath: string): string {.base, discardable.}
method hasSchema*(this: AbPath): bool {.base, discardable.}
method getPathFromPath*(this: AbPath, aPath: string): string {.base, discardable.}
method setName*(this: AbPath, name: string) {.base.}
method getName*(this: AbPath): string {.base, discardable.}
method toString*(this: AbPath): string {.discardable.}
method toFileSystemString*(this: AbPath): string {.base, discardable.}
method getPath*(this: AbPath): string {.base, discardable.}
method setPath*(this: AbPath, path: string) {.base.}
import org/allbinary/logic/io/file/FilePathData as FilePathDataModule
export FilePathDataModule
import org/allbinary/logic/io/file/FilePathUtil as FilePathUtilModule
export FilePathUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule

var AbPath_NETWORK_SEPValue: string
var AbPath_NETWORK_SEPSet = false
proc NETWORK_SEP*(t: typedesc[AbPath]): string =
    if not AbPath_NETWORK_SEPSet:
        AbPath_NETWORK_SEPSet = true
        AbPath_NETWORK_SEPValue = ":/"
    AbPath_NETWORK_SEPValue

# Java field initializers run after the base initializer
proc initFieldsAbPath(this: AbPath) =
    this.commonSeps = CommonSeps.getInstance()
    this.abPathData = AbPathData.getInstance()
    this.abPathUtil = PathUtil.getInstance()
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    this.schema = this.EMPTY_STRING
    this.path = this.EMPTY_STRING
    this.nameP = this.EMPTY_STRING
    this.hasSchemaP = false
    this.numberOfSeps = 0
    discard

proc createAbPath*(t: typedesc[AbPath]): AbPath {.discardable.} =
        try:
            let EMPTY_STRING: string = StringUtil.getInstance().EMPTY_STRING
            return newAbPath(EMPTY_STRING, EMPTY_STRING)
        except CatchableError as jcaught:
            let ex = jToException(jcaught)
            raise newJException("RuntimeException", "")

proc initAbPath*(this: AbPath, aPath: string, name: string) =
        this.initFieldsAbPath()
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        if (not stringValidationUtil.isEmpty(aPath)):
            this.schema = this.getSchema(aPath)
            this.nameP = name
            this.path = this.abPathUtil.adjustEnd(this.abPathUtil.adjust(this.getPathFromPath(aPath)))
        else:
            this.init()
            if (not stringValidationUtil.isEmpty(name)):
                this.nameP = name

proc newAbPath*(aPath: string, name: string): AbPath =
    result = AbPath()
    initAbPath(result, aPath, name)

method init*(this: AbPath) {.base.} =
        this.schema = this.EMPTY_STRING
        this.setPath(this.abPathData.SEPARATOR)
        this.nameP = this.EMPTY_STRING

method getSchema*(this: AbPath, aPath: string): string {.base, discardable.} =
        var beginIndex: int32 = jIndexOf(aPath, this.commonSeps.COLON)
        if beginIndex >= 0:
            this.hasSchemaP = true
            return jSubstring(aPath, 0, beginIndex)
        this.hasSchemaP = false
        return this.EMPTY_STRING

method hasSchema*(this: AbPath): bool {.base, discardable.} =
        return this.hasSchemaP

method getPathFromPath*(this: AbPath, aPath: string): string {.base, discardable.} =
        let filePathData: FilePathData = FilePathData.getInstance()
        var tempPath: string = aPath
        if (not this.hasSchema()):
            tempPath = this.abPathUtil.adjustStart(tempPath)
        else:
            var beginIndex: int32 = jIndexOf(tempPath, this.commonSeps.COLON)
            if beginIndex >= 0:
                beginIndex = beginIndex +% 1
                while jCharAt(tempPath, beginIndex) == this.abPathData.SEPARATORCHAR or jCharAt(tempPath, beginIndex) == filePathData.SEPARATORCHAR:
                    beginIndex = beginIndex +% 1
                    this.numberOfSeps = this.numberOfSeps +% 1
                    if this.numberOfSeps > 2:
                        raise newJException("Exception", "Should Not Have More Than Two Seps")
                tempPath = jSubstring(tempPath, beginIndex, jLength(tempPath))
        return tempPath

method setName*(this: AbPath, name: string) {.base.} =
        this.nameP = name

method getName*(this: AbPath): string {.base, discardable.} =
        return this.nameP

method toString*(this: AbPath): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        if this.hasSchema():
            stringBuffer.append(this.schema)
            stringBuffer.append(AbPath.NETWORK_SEP)
        stringBuffer.append(this.getPath())
        stringBuffer.append(this.nameP)
        return stringBuffer.toString()

method toFileSystemString*(this: AbPath): string {.base, discardable.} =
        if this.hasSchema():
            let filePathData: FilePathData = FilePathData.getInstance()
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(this.schema)
            stringBuffer.append(this.commonSeps.COLON)
            stringBuffer.append(filePathData.PATH_START)
            stringBuffer.append(FilePathUtil.adjust(this.getPath()))
            stringBuffer.append(this.nameP)
            return stringBuffer.toString()
        else:
            return jstr(FilePathUtil.adjust(this.getPath())) & jstr(this.nameP)

method getPath*(this: AbPath): string {.base, discardable.} =
        return this.path

method setPath*(this: AbPath, path: string) {.base.} =
        this.path = path

