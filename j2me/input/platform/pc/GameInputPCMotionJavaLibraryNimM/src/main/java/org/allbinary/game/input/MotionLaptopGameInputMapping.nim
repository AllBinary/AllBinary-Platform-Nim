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
    MotionLaptopGameInputMapping* = ref object of PCGameInputMapping

proc newMotionLaptopGameInputMapping*(): MotionLaptopGameInputMapping
method getDefault*(this: MotionLaptopGameInputMapping): InputToGameKeyMapping {.discardable.}
import org/allbinary/game/input/MotionLaptopDefaultGameInputMapping as MotionLaptopDefaultGameInputMappingModule
export MotionLaptopDefaultGameInputMappingModule


proc initMotionLaptopGameInputMapping*(this: MotionLaptopGameInputMapping) =
    initPCGameInputMapping(this)

proc newMotionLaptopGameInputMapping*(): MotionLaptopGameInputMapping =
    result = MotionLaptopGameInputMapping()
    initMotionLaptopGameInputMapping(result)

method getDefault*(this: MotionLaptopGameInputMapping): InputToGameKeyMapping {.discardable.} =
        return newMotionLaptopDefaultGameInputMapping().getInputMapping()

when declared(newMotionLaptopGameInputMappingHook0):
    newMotionLaptopGameInputMappingHook0 = proc (): PCGameInputMapping = newMotionLaptopGameInputMapping()

