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
    NormalJ2MEGameInputMapping* = ref object of J2MEGameInputMapping

proc newNormalJ2MEGameInputMapping*(): NormalJ2MEGameInputMapping
method getDefault*(this: NormalJ2MEGameInputMapping): InputToGameKeyMapping {.discardable.}
import org/allbinary/game/input/NormalJ2MEDefaultGameInputMapping as NormalJ2MEDefaultGameInputMappingModule
export NormalJ2MEDefaultGameInputMappingModule


proc initNormalJ2MEGameInputMapping*(this: NormalJ2MEGameInputMapping) =
    initJ2MEGameInputMapping(this)

proc newNormalJ2MEGameInputMapping*(): NormalJ2MEGameInputMapping =
    result = NormalJ2MEGameInputMapping()
    initNormalJ2MEGameInputMapping(result)

method getDefault*(this: NormalJ2MEGameInputMapping): InputToGameKeyMapping {.discardable.} =
        return newNormalJ2MEDefaultGameInputMapping().getInputMapping()

when declared(newNormalJ2MEGameInputMappingHook0):
    newNormalJ2MEGameInputMappingHook0 = proc (): J2MEGameInputMapping = newNormalJ2MEGameInputMapping()

