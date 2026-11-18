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
import org/allbinary/logic/io/path/AbPath as AbPathModule
export AbPathModule

type
    AbFilePath* = ref object of AbPath

proc newAbFilePath*(aPath: string): AbFilePath
proc initAbFilePath*(this: AbFilePath, aPath: string)
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/io/path/AbPathData as AbPathDataModule
export AbPathDataModule
import org/allbinary/logic/io/path/PathUtil as PathUtilModule
export PathUtilModule


proc initAbFilePath*(this: AbFilePath, aPath: string) =
        initAbPath(this, StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        let pathData: AbPathData = AbPathData.getInstance()
        let abPathUtil: PathUtil = PathUtil.getInstance()
        this.schema = this.getSchema(aPath)
        this.setName(pathData.getNameFromPath(aPath))
        this.setPath(abPathUtil.adjust(this.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())))

proc newAbFilePath*(aPath: string): AbFilePath =
    result = AbFilePath()
    initAbFilePath(result, aPath)

when declared(newAbFilePathHook1):
    newAbFilePathHook1 = proc (aPath: string): AbPath = newAbFilePath(aPath)

