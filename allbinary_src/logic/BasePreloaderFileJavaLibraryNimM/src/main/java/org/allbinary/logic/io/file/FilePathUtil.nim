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

#Used to correct user input for paths
type
    FilePathUtil* = ref object of JObject

proc newFilePathUtil*(): FilePathUtil
proc initFilePathUtil*(this: FilePathUtil)
proc adjust*(t: typedesc[FilePathUtil], path: string): string {.discardable.}
import org/allbinary/logic/io/path/AbPathData as AbPathDataModule
export AbPathDataModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/logic/io/file/FilePathData as FilePathDataModule
export FilePathDataModule


proc initFilePathUtil*(this: FilePathUtil) =
        discard
        discard

proc newFilePathUtil*(): FilePathUtil =
    result = FilePathUtil()
    initFilePathUtil(result)

proc adjust*(t: typedesc[FilePathUtil], path: string): string {.discardable.} =
        var path = path
        let abPathData: AbPathData = AbPathData.getInstance()
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        let filePathData: FilePathData = FilePathData.getInstance()
        if stringValidationUtil.isEmpty(path):
            return filePathData.PATH_START
        path = jReplace(path, abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR)
        return path

