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
import org/allbinary/game/input/J2MEGameInputMapping as J2MEGameInputMappingModule
export J2MEGameInputMappingModule

type
    MotionJ2MEGameInputMapping* = ref object of J2MEGameInputMapping

proc newMotionJ2MEGameInputMapping*(): MotionJ2MEGameInputMapping
method getDefault*(this: MotionJ2MEGameInputMapping): InputToGameKeyMapping {.discardable.}
import org/allbinary/game/input/MotionJ2MEDefaultGameInputMapping as MotionJ2MEDefaultGameInputMappingModule
export MotionJ2MEDefaultGameInputMappingModule


proc initMotionJ2MEGameInputMapping*(this: MotionJ2MEGameInputMapping) =
    initJ2MEGameInputMapping(this)

proc newMotionJ2MEGameInputMapping*(): MotionJ2MEGameInputMapping =
    result = MotionJ2MEGameInputMapping()
    initMotionJ2MEGameInputMapping(result)

method getDefault*(this: MotionJ2MEGameInputMapping): InputToGameKeyMapping {.discardable.} =
        return newMotionJ2MEDefaultGameInputMapping().getInputMapping()

when declared(newMotionJ2MEGameInputMappingHook0):
    newMotionJ2MEGameInputMappingHook0 = proc (): J2MEGameInputMapping = newMotionJ2MEGameInputMapping()

