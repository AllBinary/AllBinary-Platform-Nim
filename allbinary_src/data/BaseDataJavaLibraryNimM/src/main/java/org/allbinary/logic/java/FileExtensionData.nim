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
# package org.allbinary.logic.java

{.warning[UnusedImport]: off.}
import allbinary_java

type
    FileExtensionData* = ref object of JObject
        DOT_JAVA_SOURCE*: string
        JAVA_SOURCE*: string

proc newFileExtensionData*(): FileExtensionData
proc initFileExtensionData*(this: FileExtensionData)
proc getInstance*(t: typedesc[FileExtensionData]): FileExtensionData {.discardable.}

var FileExtensionData_instanceValue: FileExtensionData
var FileExtensionData_instanceSet = false
proc instance*(t: typedesc[FileExtensionData]): FileExtensionData =
    if not FileExtensionData_instanceSet:
        FileExtensionData_instanceSet = true
        FileExtensionData_instanceValue = newFileExtensionData()
    FileExtensionData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsFileExtensionData(this: FileExtensionData) =
    this.DOT_JAVA_SOURCE = ".java"
    this.JAVA_SOURCE = "java"
    discard

proc getInstance*(t: typedesc[FileExtensionData]): FileExtensionData {.discardable.} =
        return FileExtensionData.instance

proc initFileExtensionData*(this: FileExtensionData) =
        this.initFieldsFileExtensionData()
        discard

proc newFileExtensionData*(): FileExtensionData =
    result = FileExtensionData()
    initFileExtensionData(result)

