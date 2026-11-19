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
import org/allbinary/game/input/event/DownGameKeyEventListenerInterface as DownGameKeyEventListenerInterfaceModule
export DownGameKeyEventListenerInterfaceModule
import org/allbinary/game/input/event/UpGameKeyEventListenerInterface as UpGameKeyEventListenerInterfaceModule
export UpGameKeyEventListenerInterfaceModule
import org/allbinary/game/input/event/PressGameKeyEventListenerInterface as PressGameKeyEventListenerInterfaceModule
export PressGameKeyEventListenerInterfaceModule

type
    GameKeyEventListenerInterface* = ref object of DownGameKeyEventListenerInterface

converter jAsUpGameKeyEventListenerInterface*(value: GameKeyEventListenerInterface): UpGameKeyEventListenerInterface = cast[UpGameKeyEventListenerInterface](value)
converter jAsPressGameKeyEventListenerInterface*(value: GameKeyEventListenerInterface): PressGameKeyEventListenerInterface = cast[PressGameKeyEventListenerInterface](value)

