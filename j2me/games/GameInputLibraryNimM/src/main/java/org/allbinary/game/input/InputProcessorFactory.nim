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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/InputProcessor as InputProcessorModule
export InputProcessorModule

type
    InputProcessorFactory* = ref object of JObject
        inputProcessor*: InputProcessor

proc newInputProcessorFactory*(): InputProcessorFactory
proc getInstance*(t: typedesc[InputProcessorFactory]): InputProcessorFactory {.discardable.}
method getInputProcessor*(this: InputProcessorFactory): InputProcessor {.base, discardable.}

var InputProcessorFactory_instanceValue: InputProcessorFactory
var InputProcessorFactory_instanceSet = false
proc instance*(t: typedesc[InputProcessorFactory]): InputProcessorFactory =
    if not InputProcessorFactory_instanceSet:
        InputProcessorFactory_instanceSet = true
        InputProcessorFactory_instanceValue = newInputProcessorFactory()
    InputProcessorFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsInputProcessorFactory(this: InputProcessorFactory) =
    this.inputProcessor = newInputProcessor()
    discard

proc initInputProcessorFactory*(this: InputProcessorFactory) =
    this.initFieldsInputProcessorFactory()

proc newInputProcessorFactory*(): InputProcessorFactory =
    result = InputProcessorFactory()
    initInputProcessorFactory(result)

proc getInstance*(t: typedesc[InputProcessorFactory]): InputProcessorFactory {.discardable.} =
        return InputProcessorFactory.instance

method getInputProcessor*(this: InputProcessorFactory): InputProcessor {.base, discardable.} =
        return this.inputProcessor

