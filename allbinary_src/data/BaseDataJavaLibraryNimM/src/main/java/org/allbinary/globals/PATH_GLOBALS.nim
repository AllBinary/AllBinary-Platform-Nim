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
# package org.allbinary.globals

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PATH_GLOBALS* = ref object of JObject
        DATA_PATH*: string
        INIT_PATH*: string
        VIEWS_PATH*: string
        LOG_PATH*: string
        BACKUP_PATH*: string

proc newPATH_GLOBALS*(): PATH_GLOBALS
proc initPATH_GLOBALS*(this: PATH_GLOBALS)
proc getInstance*(t: typedesc[PATH_GLOBALS]): PATH_GLOBALS {.discardable.}
import org/allbinary/logic/io/path/AbPathData as AbPathDataModule
export AbPathDataModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var PATH_GLOBALS_instanceValue: PATH_GLOBALS
var PATH_GLOBALS_instanceSet = false
proc instance*(t: typedesc[PATH_GLOBALS]): PATH_GLOBALS =
    if not PATH_GLOBALS_instanceSet:
        PATH_GLOBALS_instanceSet = true
        PATH_GLOBALS_instanceValue = newPATH_GLOBALS()
    PATH_GLOBALS_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPATH_GLOBALS(this: PATH_GLOBALS) =
    
    
    
    
    
    discard

proc getInstance*(t: typedesc[PATH_GLOBALS]): PATH_GLOBALS {.discardable.} =
        return PATH_GLOBALS.instance

proc initPATH_GLOBALS*(this: PATH_GLOBALS) =
        this.initFieldsPATH_GLOBALS()
        let stringBuffer: StringMaker = newStringMaker()
        let abPathData: AbPathData = AbPathData.getInstance()
        stringBuffer.append("data")
        stringBuffer.append(abPathData.SEPARATOR)
        this.DATA_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(this.DATA_PATH)
        stringBuffer.append(CommonStrings.getInstance().INIT)
        stringBuffer.append(abPathData.SEPARATOR)
        this.INIT_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(this.DATA_PATH)
        stringBuffer.append("log")
        stringBuffer.append(abPathData.SEPARATOR)
        this.LOG_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(this.DATA_PATH)
        stringBuffer.append("backup")
        stringBuffer.append(abPathData.SEPARATOR)
        this.BACKUP_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(this.INIT_PATH)
        stringBuffer.append("views")
        stringBuffer.append(abPathData.SEPARATOR)
        this.VIEWS_PATH = stringBuffer.toString()

proc newPATH_GLOBALS*(): PATH_GLOBALS =
    result = PATH_GLOBALS()
    initPATH_GLOBALS(result)

