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
# package org.allbinary.android.input.motion.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    AnalogControllerConfigurationEvent* = ref object of AllBinaryEventObject

proc newAnalogControllerConfigurationEvent*(anyType: JObject): AnalogControllerConfigurationEvent
proc initAnalogControllerConfigurationEvent*(this: AnalogControllerConfigurationEvent, anyType: JObject)


proc initAnalogControllerConfigurationEvent*(this: AnalogControllerConfigurationEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)

proc newAnalogControllerConfigurationEvent*(anyType: JObject): AnalogControllerConfigurationEvent =
    result = AnalogControllerConfigurationEvent()
    initAnalogControllerConfigurationEvent(result, anyType)

when declared(newAnalogControllerConfigurationEventHook1):
    newAnalogControllerConfigurationEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newAnalogControllerConfigurationEvent(anyType)

