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
# package org.allbinary.game.input.mapping

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule

type
    GameInputMapping* = ref object of JObject
        name*: string
        gameKey*: GameKey

proc newGameInputMapping*(name: string, gameKey: GameKey): GameInputMapping
proc initGameInputMapping*(this: GameInputMapping, name: string, gameKey: GameKey)
method setGameKey*(this: GameInputMapping, gameKey: GameKey) {.base.}
method getGameKey*(this: GameInputMapping): GameKey {.base, discardable.}
method setName*(this: GameInputMapping, name: string) {.base.}
method getName*(this: GameInputMapping): string {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsGameInputMapping(this: GameInputMapping) =
    this.name = StringUtil.getInstance().EMPTY_STRING
    this.gameKey = GameKey.NULL_GAME_KEY
    discard

proc initGameInputMapping*(this: GameInputMapping, name: string, gameKey: GameKey) =
        this.initFieldsGameInputMapping()
        this.setName(name)
        this.setGameKey(gameKey)

proc newGameInputMapping*(name: string, gameKey: GameKey): GameInputMapping =
    result = GameInputMapping()
    initGameInputMapping(result, name, gameKey)

method setGameKey*(this: GameInputMapping, gameKey: GameKey) {.base.} =
        this.gameKey = gameKey

method getGameKey*(this: GameInputMapping): GameKey {.base, discardable.} =
        return this.gameKey

method setName*(this: GameInputMapping, name: string) {.base.} =
        this.name = name

method getName*(this: GameInputMapping): string {.base, discardable.} =
        return this.name

