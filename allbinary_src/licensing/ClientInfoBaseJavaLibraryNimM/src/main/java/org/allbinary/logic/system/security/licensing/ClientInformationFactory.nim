#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/ClientInformation as ClientInformationModule
export ClientInformationModule

type
    ClientInformationFactory* = ref object of JObject

proc newClientInformationFactory*(): ClientInformationFactory
method getInstance*(this: ClientInformationFactory): ClientInformation {.base, discardable.}
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


proc initClientInformationFactory*(this: ClientInformationFactory) =
    discard

proc newClientInformationFactory*(): ClientInformationFactory =
    result = ClientInformationFactory()
    initClientInformationFactory(result)

method getInstance*(this: ClientInformationFactory): ClientInformation {.base, discardable.} =
        let logUtil: LogUtil = LogUtil.getInstance()
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, commonStrings.GET_INSTANCE)
        let stringUtil: StringUtil = StringUtil.getInstance()
        return newClientInformation(stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING)

