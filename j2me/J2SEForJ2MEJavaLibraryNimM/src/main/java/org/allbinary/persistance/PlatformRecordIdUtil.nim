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
# package org.allbinary.persistance

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule

type
    PlatformRecordIdUtil* = ref object of JObject
        PLATFORM_SHORT_NAME*: string

proc newPlatformRecordIdUtil*(): PlatformRecordIdUtil
proc getInstance*(t: typedesc[PlatformRecordIdUtil]): PlatformRecordIdUtil {.discardable.}
method getRecordId*(this: PlatformRecordIdUtil, abeClientInformation: AbeClientInformationInterface, baseRecordId: string): string {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var PlatformRecordIdUtil_instanceValue: PlatformRecordIdUtil
var PlatformRecordIdUtil_instanceSet = false
proc instance*(t: typedesc[PlatformRecordIdUtil]): PlatformRecordIdUtil =
    if not PlatformRecordIdUtil_instanceSet:
        PlatformRecordIdUtil_instanceSet = true
        PlatformRecordIdUtil_instanceValue = newPlatformRecordIdUtil()
    PlatformRecordIdUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPlatformRecordIdUtil(this: PlatformRecordIdUtil) =
    this.PLATFORM_SHORT_NAME = "JSE"
    discard

proc initPlatformRecordIdUtil*(this: PlatformRecordIdUtil) =
    this.initFieldsPlatformRecordIdUtil()

proc newPlatformRecordIdUtil*(): PlatformRecordIdUtil =
    result = PlatformRecordIdUtil()
    initPlatformRecordIdUtil(result)

proc getInstance*(t: typedesc[PlatformRecordIdUtil]): PlatformRecordIdUtil {.discardable.} =
        return PlatformRecordIdUtil.instance

method getRecordId*(this: PlatformRecordIdUtil, abeClientInformation: AbeClientInformationInterface, baseRecordId: string): string {.base, discardable.} =
        return newStringMaker().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(this.PLATFORM_SHORT_NAME).append(baseRecordId).toString()

