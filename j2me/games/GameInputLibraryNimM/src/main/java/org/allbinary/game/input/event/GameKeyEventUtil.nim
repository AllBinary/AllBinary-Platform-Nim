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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GameKeyEventUtil* = ref object of JObject

proc newGameKeyEventUtil*(): GameKeyEventUtil
proc initGameKeyEventUtil*(this: GameKeyEventUtil)
proc getKey*(t: typedesc[GameKeyEventUtil], anyType: JObject): int32 {.discardable.}
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule


proc initGameKeyEventUtil*(this: GameKeyEventUtil) =
        discard
        discard

proc newGameKeyEventUtil*(): GameKeyEventUtil =
    result = GameKeyEventUtil()
    initGameKeyEventUtil(result)

proc getKey*(t: typedesc[GameKeyEventUtil], anyType: JObject): int32 {.discardable.} =
        var gameKeyEvent: GameKeyEvent = GameKeyEvent(JObject(anyType))
        return gameKeyEvent.getKey()

