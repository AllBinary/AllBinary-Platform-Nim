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
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule

type
    GameInfoCopyFactory* = ref object of JObject

proc newGameInfoCopyFactory*(): GameInfoCopyFactory
proc getInstanceMaxLevel*(t: typedesc[GameInfoCopyFactory], gameInfo: GameInfo, maxLevel: int32): GameInfo {.discardable.}
proc getInstance*(t: typedesc[GameInfoCopyFactory], gameInfo: GameInfo): GameInfo {.discardable.}


proc initGameInfoCopyFactory*(this: GameInfoCopyFactory) =
    discard

proc newGameInfoCopyFactory*(): GameInfoCopyFactory =
    result = GameInfoCopyFactory()
    initGameInfoCopyFactory(result)

proc getInstanceMaxLevel*(t: typedesc[GameInfoCopyFactory], gameInfo: GameInfo, maxLevel: int32): GameInfo {.discardable.} =
        return newGameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), gameInfo.getPlayerType(), maxLevel, gameInfo.getCurrentLevel())

proc getInstance*(t: typedesc[GameInfoCopyFactory], gameInfo: GameInfo): GameInfo {.discardable.} =
        return newGameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), gameInfo.getPlayerType(), gameInfo.getHighestLevel(), gameInfo.getCurrentLevel())

