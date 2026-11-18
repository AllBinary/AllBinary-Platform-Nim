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
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/game/input/PCGameInputMapping as PCGameInputMappingModule
export PCGameInputMappingModule

type
    LaptopGameInputMapping* = ref object of PCGameInputMapping

proc newLaptopGameInputMapping*(): LaptopGameInputMapping
method getDefault*(this: LaptopGameInputMapping): InputToGameKeyMapping {.discardable.}
import org/allbinary/game/input/LaptopDefaultGameInputMapping as LaptopDefaultGameInputMappingModule
export LaptopDefaultGameInputMappingModule


proc initLaptopGameInputMapping*(this: LaptopGameInputMapping) =
    initPCGameInputMapping(this)

proc newLaptopGameInputMapping*(): LaptopGameInputMapping =
    result = LaptopGameInputMapping()
    initLaptopGameInputMapping(result)

method getDefault*(this: LaptopGameInputMapping): InputToGameKeyMapping {.discardable.} =
        return newLaptopDefaultGameInputMapping().getInputMapping()

when declared(newLaptopGameInputMappingHook0):
    newLaptopGameInputMappingHook0 = proc (): PCGameInputMapping = newLaptopGameInputMapping()

