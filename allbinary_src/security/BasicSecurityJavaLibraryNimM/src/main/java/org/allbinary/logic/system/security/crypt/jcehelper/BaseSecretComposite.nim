#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.crypt.jcehelper

{.warning[UnusedImport]: off.}
import allbinary_java

type
    BaseSecretComposite* = ref object of JObject

proc newBaseSecretComposite*(): BaseSecretComposite
method encrypt*(this: BaseSecretComposite, array: JArray[int8]): JArray[int8] {.base, discardable.}
method decrypt*(this: BaseSecretComposite, array: JArray[int8]): JArray[int8] {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var BaseSecretComposite_NULL_SECRET_COMPOSITEValue: BaseSecretComposite
var BaseSecretComposite_NULL_SECRET_COMPOSITESet = false
proc NULL_SECRET_COMPOSITE*(t: typedesc[BaseSecretComposite]): BaseSecretComposite =
    if not BaseSecretComposite_NULL_SECRET_COMPOSITESet:
        BaseSecretComposite_NULL_SECRET_COMPOSITESet = true
        BaseSecretComposite_NULL_SECRET_COMPOSITEValue = newBaseSecretComposite()
    BaseSecretComposite_NULL_SECRET_COMPOSITEValue

proc initBaseSecretComposite*(this: BaseSecretComposite) =
    discard

proc newBaseSecretComposite*(): BaseSecretComposite =
    result = BaseSecretComposite()
    initBaseSecretComposite(result)

method encrypt*(this: BaseSecretComposite, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        return NullUtil.getInstance().NULL_BYTE_ARRAY

method decrypt*(this: BaseSecretComposite, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        return NullUtil.getInstance().NULL_BYTE_ARRAY

