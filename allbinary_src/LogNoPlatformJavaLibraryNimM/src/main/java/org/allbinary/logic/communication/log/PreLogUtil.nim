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

#NoPlatform
type
    PreLogUtil* = ref object of JObject

proc newPreLogUtil*(): PreLogUtil
proc initPreLogUtil*(this: PreLogUtil)
proc put*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string)
proc putOE*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string, exception: JObject)
proc putSE*(t: typedesc[PreLogUtil], specialMessage: string, className: string, functionName: string, exception: JObject)
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule


proc initPreLogUtil*(this: PreLogUtil) =
        discard
        discard

proc newPreLogUtil*(): PreLogUtil =
    result = PreLogUtil()
    initPreLogUtil(result)

proc put*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string) =
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)

proc putOE*(t: typedesc[PreLogUtil], specialMessage: string, anyType: JObject, functionName: string, exception: JObject) =
        raise newJException("RuntimeException", "")

proc putSE*(t: typedesc[PreLogUtil], specialMessage: string, className: string, functionName: string, exception: JObject) =
        raise newJException("RuntimeException", "")

