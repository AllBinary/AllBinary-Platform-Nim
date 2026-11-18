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
        NORMAL_GAME_OVER_WIN*: string
        TEASER_DEMO_GAME_END_LAST_LEVEL*: string
        TEASER_DEMO_GAME_END*: string
        gameOverStr*: string
        winStr*: string

proc newEndGameInfo*(): EndGameInfo
method update*(this: EndGameInfo, gameInfo: GameInfo, myCanvas: MyCanvas) {.base.}
method getGameOverStr*(this: EndGameInfo): string {.base, discardable.}
method setGameOverStr*(this: EndGameInfo, gameOverStr: string) {.base.}
method getWinStr*(this: EndGameInfo): string {.base, discardable.}
method setWinStr*(this: EndGameInfo, winStr: string) {.base.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsEndGameInfo(this: EndGameInfo) =
    this.NORMAL_GAME_OVER_WIN = "You Won"
    this.TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo."
    this.TEASER_DEMO_GAME_END = "Demo Game Over."
    this.gameOverStr = StringUtil.getInstance().EMPTY_STRING
    this.winStr = this.gameOverStr
    discard

proc initEndGameInfo*(this: EndGameInfo) =
    this.initFieldsEndGameInfo()

proc newEndGameInfo*(): EndGameInfo =
    result = EndGameInfo()
    initEndGameInfo(result)

method update*(this: EndGameInfo, gameInfo: GameInfo, myCanvas: MyCanvas) {.base.} =
        if gameInfo.isLastLevel():
            this.setWinStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL)
            this.setGameOverStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL)
        else:
            this.setWinStr(this.NORMAL_GAME_OVER_WIN)
            this.setGameOverStr(this.TEASER_DEMO_GAME_END)

method getGameOverStr*(this: EndGameInfo): string {.base, discardable.} =
        return this.gameOverStr

method setGameOverStr*(this: EndGameInfo, gameOverStr: string) {.base.} =
        this.gameOverStr = gameOverStr

method getWinStr*(this: EndGameInfo): string {.base, discardable.} =
        return this.winStr

method setWinStr*(this: EndGameInfo, winStr: string) {.base.} =
        this.winStr = winStr

