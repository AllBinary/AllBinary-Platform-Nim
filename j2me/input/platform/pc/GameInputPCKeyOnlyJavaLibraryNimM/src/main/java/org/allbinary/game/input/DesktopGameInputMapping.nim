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
    DesktopGameInputMapping* = ref object of PCGameInputMapping

proc newDesktopGameInputMapping*(): DesktopGameInputMapping
method getDefault*(this: DesktopGameInputMapping): InputToGameKeyMapping {.discardable.}
import org/allbinary/game/input/DesktopDefaultGameInputMapping as DesktopDefaultGameInputMappingModule
export DesktopDefaultGameInputMappingModule


proc initDesktopGameInputMapping*(this: DesktopGameInputMapping) =
    initPCGameInputMapping(this)

proc newDesktopGameInputMapping*(): DesktopGameInputMapping =
    result = DesktopGameInputMapping()
    initDesktopGameInputMapping(result)

method getDefault*(this: DesktopGameInputMapping): InputToGameKeyMapping {.discardable.} =
        return newDesktopDefaultGameInputMapping().getInputMapping()

when declared(newDesktopGameInputMappingHook0):
    newDesktopGameInputMappingHook0 = proc (): PCGameInputMapping = newDesktopGameInputMapping()

