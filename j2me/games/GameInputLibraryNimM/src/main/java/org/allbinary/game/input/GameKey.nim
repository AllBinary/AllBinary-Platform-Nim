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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    GameKey* = ref object of Input

proc newGameKey*(key: int32, name: string): GameKey
proc initGameKey*(this: GameKey, key: int32, name: string)
method toString*(this: GameKey): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var GameKey_NULL_GAME_KEYValue: GameKey
var GameKey_NULL_GAME_KEYSet = false
proc NULL_GAME_KEY*(t: typedesc[GameKey]): GameKey =
    if not GameKey_NULL_GAME_KEYSet:
        GameKey_NULL_GAME_KEYSet = true
        GameKey_NULL_GAME_KEYValue = newGameKey(-1, StringUtil.getInstance().NULL_STRING)
    GameKey_NULL_GAME_KEYValue

proc initGameKey*(this: GameKey, key: int32, name: string) =
        initInput(this, key, name)

proc newGameKey*(key: int32, name: string): GameKey =
    result = GameKey()
    initGameKey(result, key, name)

method toString*(this: GameKey): string {.discardable.} =
        return newStringMaker().append("GameKey ").append(procCall Input(this).toString()).toString()

when declared(newGameKeyHook2):
    newGameKeyHook2 = proc (key: int32, name: string): Input = newGameKey(key, name)

