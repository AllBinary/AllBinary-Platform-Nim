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
# package org.allbinary.game.combat.destroy.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule

type
    DestroyedEventListenerInterface* = ref object of EventListenerInterface


method onDestroyed*(this: DestroyedEventListenerInterface, destroyedEvent: DestroyedEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDestroyed")

