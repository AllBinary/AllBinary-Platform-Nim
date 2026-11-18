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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule

type
    EndGameInfo* = ref object of JObject
        NORMAL_GAME_OVER*: string
        NORMAL_GAME_OVER_WIN*: string
        gameOverStr*: string
        winStr*: string

proc newEndGameInfo*(): EndGameInfo
proc initEndGameInfo*(this: EndGameInfo)
method update*(this: EndGameInfo, gameInfo: GameInfo, myCanvas: MyCanvas) {.base.}
method getGameOverStr*(this: EndGameInfo): string {.base, discardable.}
method setGameOverStr*(this: EndGameInfo, gameOverStr: string) {.base.}
method getWinStr*(this: EndGameInfo): string {.base, discardable.}
method setWinStr*(this: EndGameInfo, winStr: string) {.base.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsEndGameInfo(this: EndGameInfo) =
    this.NORMAL_GAME_OVER = "Game Over"
    this.NORMAL_GAME_OVER_WIN = "You Won"
    this.gameOverStr = StringUtil.getInstance().EMPTY_STRING
    this.winStr = this.gameOverStr
    discard

proc initEndGameInfo*(this: EndGameInfo) =
        this.initFieldsEndGameInfo()
        discard

proc newEndGameInfo*(): EndGameInfo =
    result = EndGameInfo()
    initEndGameInfo(result)

method update*(this: EndGameInfo, gameInfo: GameInfo, myCanvas: MyCanvas) {.base.} =
        this.setGameOverStr(this.NORMAL_GAME_OVER)
        this.setWinStr(this.NORMAL_GAME_OVER_WIN)

method getGameOverStr*(this: EndGameInfo): string {.base, discardable.} =
        return this.gameOverStr

method setGameOverStr*(this: EndGameInfo, gameOverStr: string) {.base.} =
        this.gameOverStr = gameOverStr

method getWinStr*(this: EndGameInfo): string {.base, discardable.} =
        return this.winStr

method setWinStr*(this: EndGameInfo, winStr: string) {.base.} =
        this.winStr = winStr

