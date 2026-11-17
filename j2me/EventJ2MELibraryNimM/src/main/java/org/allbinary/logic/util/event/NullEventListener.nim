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
# package org.allbinary.logic.util.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    NullEventListener* = ref object of EventListenerInterface

proc newNullEventListener*(): NullEventListener
method onEvent*(this: NullEventListener, eventObject: AllBinaryEventObject)

var NullEventListener_NULL_EVENT_LISTENERValue: NullEventListener
var NullEventListener_NULL_EVENT_LISTENERSet = false
proc NULL_EVENT_LISTENERStatic*(t: typedesc[NullEventListener]): NullEventListener =
    if not NullEventListener_NULL_EVENT_LISTENERSet:
        NullEventListener_NULL_EVENT_LISTENERSet = true
        NullEventListener_NULL_EVENT_LISTENERValue = newNullEventListener()
    NullEventListener_NULL_EVENT_LISTENERValue

proc initNullEventListener*(this: NullEventListener) =
    discard

proc newNullEventListener*(): NullEventListener =
    result = NullEventListener()
    initNullEventListener(result)

method onEvent*(this: NullEventListener, eventObject: AllBinaryEventObject) =
        discard

