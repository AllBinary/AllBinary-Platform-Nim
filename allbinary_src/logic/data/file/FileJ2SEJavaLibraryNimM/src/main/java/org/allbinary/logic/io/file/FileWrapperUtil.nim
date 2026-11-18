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
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule

type
    FileWrapperUtil* = ref object of JObject

proc newFileWrapperUtil*(): FileWrapperUtil
proc wrapFiles*(t: typedesc[FileWrapperUtil], files: JArray[JObject]): JArray[AbFile] {.discardable.}
proc wrapFile*(t: typedesc[FileWrapperUtil], file: JFile): AbFile {.discardable.}
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule


proc initFileWrapperUtil*(this: FileWrapperUtil) =
    discard

proc newFileWrapperUtil*(): FileWrapperUtil =
    result = FileWrapperUtil()
    initFileWrapperUtil(result)

proc wrapFiles*(t: typedesc[FileWrapperUtil], files: JArray[JObject]): JArray[AbFile] {.discardable.} =
        try:
            let abFileArray: JArray[AbFile] = newJArray[AbFile](files.length, default(AbFile))
            block:
                var index: int32 = files.length -% 1
                while index >= 0:
                    defer: index = index -% 1
                    abFileArray[index] = newAbFile(JFile(JObject(files[index])))
            return abFileArray
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e)
            return newJArray[AbFile](0, default(AbFile))

proc wrapFile*(t: typedesc[FileWrapperUtil], file: JFile): AbFile {.discardable.} =
        try:
            return newAbFile(file)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e)
            return AbFile.NULL_FILE

