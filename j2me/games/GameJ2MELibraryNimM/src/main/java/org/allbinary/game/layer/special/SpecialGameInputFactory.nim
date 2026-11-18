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
# package org.allbinary.game.layer.special

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/special/SpecialGameInput as SpecialGameInputModule
export SpecialGameInputModule

type
    SpecialGameInputFactory* = ref object of JObject

proc newSpecialGameInputFactory*(): SpecialGameInputFactory

var SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue: SpecialGameInput
var SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet = false
proc NO_SPECIAL_GAME_INPUT*(t: typedesc[SpecialGameInputFactory]): SpecialGameInput =
    if not SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet:
        SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet = true
        SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue = newSpecialGameInput()
    SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue

proc initSpecialGameInputFactory*(this: SpecialGameInputFactory) =
    discard

proc newSpecialGameInputFactory*(): SpecialGameInputFactory =
    result = SpecialGameInputFactory()
    initSpecialGameInputFactory(result)

