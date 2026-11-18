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
import org/allbinary/game/input/GameInputProcessor as GameInputProcessorModule
export GameInputProcessorModule

type
    GameInputProcessorUtil* = ref object of JObject

proc newGameInputProcessorUtil*(): GameInputProcessorUtil
proc init*(t: typedesc[GameInputProcessorUtil], inputProcessorArray: JArray[GameInputProcessor])
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule


proc initGameInputProcessorUtil*(this: GameInputProcessorUtil) =
    discard

proc newGameInputProcessorUtil*(): GameInputProcessorUtil =
    result = GameInputProcessorUtil()
    initGameInputProcessorUtil(result)

proc init*(t: typedesc[GameInputProcessorUtil], inputProcessorArray: JArray[GameInputProcessor]) =
        let noInputProcessor: GameInputProcessor = GameInputProcessor.getInstance()
        let total: int32 = InputFactory.getInstance().MAX
        block:
            var index: int32 = 0
            while index < total:
                defer: index = index +% 1
                var inputProcessorCanBeNull: GameInputProcessor = inputProcessorArray[index]
                if (jIsNil(inputProcessorCanBeNull)):
                    inputProcessorArray[index] = noInputProcessor

