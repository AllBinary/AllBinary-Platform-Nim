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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/game/midlet/DemoGameMidletEvent as DemoGameMidletEventModule
export DemoGameMidletEventModule

type
    DemoGameMidletEventListener* = ref object of EventListenerInterface


method onDemoStart*(this: DemoGameMidletEventListener) {.base.} =
        raise newJException("AbstractMethodError", "onDemoStart")

method onGameStart*(this: DemoGameMidletEventListener) {.base.} =
        raise newJException("AbstractMethodError", "onGameStart")

method onDemoGameMidletEvent*(this: DemoGameMidletEventListener, demoGameMidletEvent: DemoGameMidletEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDemoGameMidletEvent")

