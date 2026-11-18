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
# package org.allbinary.game.configuration.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/game/configuration/event/GameInitializedEvent as GameInitializedEventModule
export GameInitializedEventModule

type
    GameInitializedListenerInterface* = ref object of EventListenerInterface


method onGameInitialized*(this: GameInitializedListenerInterface, gameInitializedEvent: GameInitializedEvent) {.base.} =
        raise newJException("AbstractMethodError", "onGameInitialized")

