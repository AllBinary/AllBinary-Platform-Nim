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
# package org.allbinary.logic.communication.log

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule

#ActualPlatform
type
    PreLogUtil* = ref object of JObject

proc newPreLogUtil*(): PreLogUtil
proc initPreLogUtil*(this: PreLogUtil)
proc put*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string)
proc putOE*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string, exception: JObject)
proc putS*(t: typedesc[PreLogUtil], specialMessage: string, className: string, functionName: string)
proc putSE*(t: typedesc[PreLogUtil], specialMessage: string, className: string, functionName: string, exception: JObject)
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/communication/log/LogFormatUtil as LogFormatUtilModule
export LogFormatUtilModule

var PreLogUtil_LOG_SUCCESSValue: string
var PreLogUtil_LOG_SUCCESSSet = false
proc LOG_SUCCESS*(t: typedesc[PreLogUtil]): string =
    if not PreLogUtil_LOG_SUCCESSSet:
        PreLogUtil_LOG_SUCCESSSet = true
        PreLogUtil_LOG_SUCCESSValue = "org.allbinary: "
    PreLogUtil_LOG_SUCCESSValue

proc initPreLogUtil*(this: PreLogUtil) =
        discard
        discard

proc newPreLogUtil*(): PreLogUtil =
    result = PreLogUtil()
    initPreLogUtil(result)

proc put*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string) =
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)

proc putOE*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string, exception: JObject) =
        var className: string = CommonStrings.getInstance().EMPTY
        if (not jIsNil(jClassName(anyType))):
            className = jNewString(jClassName(anyType))
        let message: string = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        echo jstr(PreLogUtil.LOG_SUCCESS)
        echo jstr(message)

proc putS*(t: typedesc[PreLogUtil], specialMessage: string, className: string, functionName: string) =
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)

proc putSE*(t: typedesc[PreLogUtil], specialMessage: string, className: string, functionName: string, exception: JObject) =
        let message: string = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        echo jstr(PreLogUtil.LOG_SUCCESS)
        echo jstr(message)

