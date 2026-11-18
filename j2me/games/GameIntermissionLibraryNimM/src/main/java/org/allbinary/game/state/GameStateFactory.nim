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
# package org.allbinary.game.state

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule

type
    GameStateFactory* = ref object of JObject
        index*: int32
        NO_GAME_STATE*: GameState
        PLAYING_GAME_STATE*: GameState
        SHOW_END_RESULT_GAME_STATE*: GameState
        SHOW_HIGH_SCORE_GAME_STATE*: GameState

proc newGameStateFactory*(): GameStateFactory
proc initGameStateFactory*(this: GameStateFactory)
proc getInstance*(t: typedesc[GameStateFactory]): GameStateFactory {.discardable.}
method createGameState*(this: GameStateFactory, name: string): GameState {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var GameStateFactory_instanceValue: JObject
var GameStateFactory_instanceSet = false
proc instance*(t: typedesc[GameStateFactory]): JObject =
    if not GameStateFactory_instanceSet:
        GameStateFactory_instanceSet = true
        GameStateFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GameStateFactory_instanceValue
proc `instance=`*(t: typedesc[GameStateFactory], value: JObject) =
    GameStateFactory_instanceSet = true
    GameStateFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGameStateFactory(this: GameStateFactory) =
    this.index = 0
    this.NO_GAME_STATE = this.createGameState("NO_GAME_STATE")
    this.PLAYING_GAME_STATE = this.createGameState("PLAYING_GAME_STATE")
    this.SHOW_END_RESULT_GAME_STATE = this.createGameState("SHOW_END_RESULT_GAME_STATE")
    this.SHOW_HIGH_SCORE_GAME_STATE = this.createGameState("SHOW_HIGH_SCORE_GAME_STATE")
    discard

proc getInstance*(t: typedesc[GameStateFactory]): GameStateFactory {.discardable.} =
        if GameStateFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            GameStateFactory.instance = newGameStateFactory()
        return GameStateFactory(JObject(GameStateFactory.instance))

proc initGameStateFactory*(this: GameStateFactory) =
        this.initFieldsGameStateFactory()
        discard

proc newGameStateFactory*(): GameStateFactory =
    result = GameStateFactory()
    initGameStateFactory(result)

method createGameState*(this: GameStateFactory, name: string): GameState {.base, discardable.} =
        return newGameState(name, jPostIncrement(this.index))

