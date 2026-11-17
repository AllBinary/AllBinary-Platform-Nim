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

type
    FilePathData* = ref object of JObject
        SEPARATORCHAR*: uint16
        PATH_START*: string

proc newFilePathData*(): FilePathData
proc initFilePathData*(this: FilePathData)
proc getInstance*(t: typedesc[FilePathData]): FilePathData {.discardable.}

var FilePathData_instanceValue: FilePathData
var FilePathData_instanceSet = false
proc instance*(t: typedesc[FilePathData]): FilePathData =
    if not FilePathData_instanceSet:
        FilePathData_instanceSet = true
        FilePathData_instanceValue = newFilePathData()
    FilePathData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsFilePathData(this: FilePathData) =
    this.SEPARATORCHAR = JFile.separatorChar
    this.PATH_START = JFile.separator
    discard

proc getInstance*(t: typedesc[FilePathData]): FilePathData {.discardable.} =
        return FilePathData.instance

proc initFilePathData*(this: FilePathData) =
        this.initFieldsFilePathData()
        if JFile.separatorChar == uint16(ord('\\')):
            this.PATH_START = jstr(JFile.separator) & jstr(JFile.separator)

proc newFilePathData*(): FilePathData =
    result = FilePathData()
    initFilePathData(result)

