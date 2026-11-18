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

type
    GameState* = ref object of JObject
        name*: string

proc newGameState*(name: string, state: int32): GameState
proc initGameState*(this: GameState, name: string, state: int32)
method toString*(this: GameState): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsGameState(this: GameState) =
    
    discard

proc initGameState*(this: GameState, name: string, state: int32) =
        this.initFieldsGameState()
        this.name = name

proc newGameState*(name: string, state: int32): GameState =
    result = GameState()
    initGameState(result, name, state)

method toString*(this: GameState): string {.discardable.} =
        return this.name

