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

type
    ForcedLogUtil* = ref object of JObject

proc newForcedLogUtil*(): ForcedLogUtil
proc log*(t: typedesc[ForcedLogUtil], message: string, anyType: JObject)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule


proc initForcedLogUtil*(this: ForcedLogUtil) =
    discard

proc newForcedLogUtil*(): ForcedLogUtil =
    result = ForcedLogUtil()
    initForcedLogUtil(result)

proc log*(t: typedesc[ForcedLogUtil], message: string, anyType: JObject) =
        try:
            raise newJException("Exception", message)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE(CommonStrings.getInstance().EXCEPTION, anyType, "log", e)

