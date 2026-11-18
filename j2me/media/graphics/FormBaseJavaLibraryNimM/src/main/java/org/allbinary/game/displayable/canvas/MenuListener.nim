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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule

type
    MenuListener* = ref object of GameKeyEventSourceInterface


method open*(this: MenuListener) {.base.} =
        raise newJException("AbstractMethodError", "open")

method close*(this: MenuListener) {.base.} =
        raise newJException("AbstractMethodError", "close")

