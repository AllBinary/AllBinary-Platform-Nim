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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule

type
    DownKeyEventListenerInterface* = ref object of EventListenerInterface


method onDownKeyEvent*(this: DownKeyEventListenerInterface, keyInteger: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDownKeyEvent")

method onDownKey*(this: DownKeyEventListenerInterface, keyInteger: int32) {.base.} =
        raise newJException("AbstractMethodError", "onDownKey")

