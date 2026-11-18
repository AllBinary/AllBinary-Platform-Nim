#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PropertyInitUtil* = ref object of JObject

proc newPropertyInitUtil*(): PropertyInitUtil
proc getInstance*(t: typedesc[PropertyInitUtil], value: int32): PropertyInitUtil {.discardable.}
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var PropertyInitUtil_instanceValue: PropertyInitUtil
var PropertyInitUtil_instanceSet = false
proc instance*(t: typedesc[PropertyInitUtil]): PropertyInitUtil =
    if not PropertyInitUtil_instanceSet:
        PropertyInitUtil_instanceSet = true
        PropertyInitUtil_instanceValue = newPropertyInitUtil()
    PropertyInitUtil_instanceValue

proc initPropertyInitUtil*(this: PropertyInitUtil) =
    discard

proc newPropertyInitUtil*(): PropertyInitUtil =
    result = PropertyInitUtil()
    initPropertyInitUtil(result)

proc getInstance*(t: typedesc[PropertyInitUtil], value: int32): PropertyInitUtil {.discardable.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let logUtil: LogUtil = LogUtil.getInstance()
        logUtil.putF(newStringMaker().append("PropertyInitUtil: ").appendint(value).toString(), logUtil, commonStrings.CONSTRUCTOR)
        return PropertyInitUtil.instance

