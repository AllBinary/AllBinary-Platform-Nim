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
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule
import org/allbinary/game/configuration/event/BaseChangedGameFeatureListener as BaseChangedGameFeatureListenerModule
export BaseChangedGameFeatureListenerModule

type
    ChangedGameFeatureListener* = ref object of BaseChangedGameFeatureListener

proc newChangedGameFeatureListener*(): ChangedGameFeatureListener
proc getInstance*(t: typedesc[ChangedGameFeatureListener]): ChangedGameFeatureListener {.discardable.}
method isChangedGameConfiguration*(this: ChangedGameFeatureListener, gameConfiguration: GameConfiguration): bool {.base, discardable.}

var ChangedGameFeatureListener_gameFeatureListenerValue: ChangedGameFeatureListener
var ChangedGameFeatureListener_gameFeatureListenerSet = false
proc gameFeatureListener*(t: typedesc[ChangedGameFeatureListener]): ChangedGameFeatureListener =
    if not ChangedGameFeatureListener_gameFeatureListenerSet:
        ChangedGameFeatureListener_gameFeatureListenerSet = true
        ChangedGameFeatureListener_gameFeatureListenerValue = newChangedGameFeatureListener()
    ChangedGameFeatureListener_gameFeatureListenerValue

proc initChangedGameFeatureListener*(this: ChangedGameFeatureListener) =
    initBaseChangedGameFeatureListener(this)

proc newChangedGameFeatureListener*(): ChangedGameFeatureListener =
    result = ChangedGameFeatureListener()
    initChangedGameFeatureListener(result)

proc getInstance*(t: typedesc[ChangedGameFeatureListener]): ChangedGameFeatureListener {.discardable.} =
        return ChangedGameFeatureListener.gameFeatureListener

method isChangedGameConfiguration*(this: ChangedGameFeatureListener, gameConfiguration: GameConfiguration): bool {.base, discardable.} =
        return this.list.contains(gameConfiguration)

when declared(newChangedGameFeatureListenerHook0):
    newChangedGameFeatureListenerHook0 = proc (): BaseChangedGameFeatureListener = newChangedGameFeatureListener()

