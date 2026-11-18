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
# package org.allbinary.game.input.mapping.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    InputMappingEvent* = ref object of AllBinaryEventObject
        inputToGameKeyMapping*: InputToGameKeyMapping

proc newInputMappingEvent*(anyType: JObject): InputMappingEvent
proc initInputMappingEvent*(this: InputMappingEvent, anyType: JObject)
method setInputToGameKeyMapping*(this: InputMappingEvent, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method getInputToGameKeyMapping*(this: InputMappingEvent): InputToGameKeyMapping {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsInputMappingEvent(this: InputMappingEvent) =
    this.inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    discard

proc initInputMappingEvent*(this: InputMappingEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsInputMappingEvent()

proc newInputMappingEvent*(anyType: JObject): InputMappingEvent =
    result = InputMappingEvent()
    initInputMappingEvent(result, anyType)

method setInputToGameKeyMapping*(this: InputMappingEvent, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        this.inputToGameKeyMapping = inputToGameKeyMapping

method getInputToGameKeyMapping*(this: InputMappingEvent): InputToGameKeyMapping {.base, discardable.} =
        return this.inputToGameKeyMapping

when declared(newInputMappingEventHook1):
    newInputMappingEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newInputMappingEvent(anyType)

