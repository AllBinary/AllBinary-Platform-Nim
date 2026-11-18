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
    GameStateCompositeInterface* = ref object of JObject


method setGameState*(this: GameStateCompositeInterface, gameState: GameState) {.base.} =
        raise newJException("AbstractMethodError", "setGameState")

method getGameState*(this: GameStateCompositeInterface): GameState {.base, discardable.} =
        raise newJException("AbstractMethodError", "getGameState")

