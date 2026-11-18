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
# package org.allbinary.game.input.mapping.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface as InputMappingEventListenerInterfaceModule
export InputMappingEventListenerInterfaceModule
import org/allbinary/game/input/mapping/event/InputMappingEvent as InputMappingEventModule
export InputMappingEventModule

type
    NullInputMappingEventListener* = ref object of InputMappingEventListenerInterface

proc newNullInputMappingEventListener*(): NullInputMappingEventListener
method onInputMappingEvent*(this: NullInputMappingEventListener, inputMappingEvent: InputMappingEvent)
method onEvent*(this: NullInputMappingEventListener, eventObject: AllBinaryEventObject)

var NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue: NullInputMappingEventListener
var NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet = false
proc NULL_INPUT_MAPPING_EVENT_LISTENERStatic*(t: typedesc[NullInputMappingEventListener]): NullInputMappingEventListener =
    if not NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet:
        NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet = true
        NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue = newNullInputMappingEventListener()
    NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue

proc initNullInputMappingEventListener*(this: NullInputMappingEventListener) =
    discard

proc newNullInputMappingEventListener*(): NullInputMappingEventListener =
    result = NullInputMappingEventListener()
    initNullInputMappingEventListener(result)

method onInputMappingEvent*(this: NullInputMappingEventListener, inputMappingEvent: InputMappingEvent) =
        discard

method onEvent*(this: NullInputMappingEventListener, eventObject: AllBinaryEventObject) =
        discard

