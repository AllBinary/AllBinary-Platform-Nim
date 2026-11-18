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
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule

type
    IntermissionFactory* = ref object of JObject
        START_LEVEL_INTERMISSION_GAME_STATE*: GameState
        WAIT_LEVEL_INTERMISSION_GAME_STATE*: GameState
        SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE*: GameState
        SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE*: GameState

proc newIntermissionFactory*(): IntermissionFactory
proc getInstance*(t: typedesc[IntermissionFactory]): IntermissionFactory {.discardable.}
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule

var IntermissionFactory_instanceValue: IntermissionFactory
var IntermissionFactory_instanceSet = false
proc instance*(t: typedesc[IntermissionFactory]): IntermissionFactory =
    if not IntermissionFactory_instanceSet:
        IntermissionFactory_instanceSet = true
        IntermissionFactory_instanceValue = newIntermissionFactory()
    IntermissionFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsIntermissionFactory(this: IntermissionFactory) =
    this.START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE")
    this.WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE")
    this.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
    this.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    discard

proc initIntermissionFactory*(this: IntermissionFactory) =
    this.initFieldsIntermissionFactory()

proc newIntermissionFactory*(): IntermissionFactory =
    result = IntermissionFactory()
    initIntermissionFactory(result)

proc getInstance*(t: typedesc[IntermissionFactory]): IntermissionFactory {.discardable.} =
        return IntermissionFactory.instance

