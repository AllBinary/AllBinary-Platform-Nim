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
# package org.allbinary.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    VirtualKeyboardEvent* = ref object of AllBinaryEventObject

proc newVirtualKeyboardEvent*(anyType: JObject): VirtualKeyboardEvent
proc initVirtualKeyboardEvent*(this: VirtualKeyboardEvent, anyType: JObject)


proc initVirtualKeyboardEvent*(this: VirtualKeyboardEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)

proc newVirtualKeyboardEvent*(anyType: JObject): VirtualKeyboardEvent =
    result = VirtualKeyboardEvent()
    initVirtualKeyboardEvent(result, anyType)

when declared(newVirtualKeyboardEventHook1):
    newVirtualKeyboardEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newVirtualKeyboardEvent(anyType)

