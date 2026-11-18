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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/GameMode as GameModeModule
export GameModeModule
import org/allbinary/game/GameInfoData as GameInfoDataModule
export GameInfoDataModule
import org/allbinary/game/GameType as GameTypeModule
export GameTypeModule
import org/allbinary/game/PlayerType as PlayerTypeModule
export PlayerTypeModule

type
    GameInfo* = ref object of JObject
        logUtil*: LogUtil
        gameInfoData*: GameInfoData
        gameType*: GameType
        gameMode*: GameMode
        playerType*: PlayerType
        highestLevel*: int32
        currentLevel*: int32
        NEW_LEVEL*: string
        SET_CURRENT_LEVEL*: string
        NEXT_GAME_LEVEL*: string

proc newGameInfo*(gameType: GameType, gameMode: GameMode, playerType: PlayerType, highestLevel: int32, currentLevel: int32): GameInfo
proc initGameInfo*(this: GameInfo, gameType: GameType, gameMode: GameMode, playerType: PlayerType, highestLevel: int32, currentLevel: int32)
method getGameType*(this: GameInfo): GameType {.base, discardable.}
method getGameMode*(this: GameInfo): GameMode {.base, discardable.}
method getPlayerType*(this: GameInfo): PlayerType {.base, discardable.}
method getHighestLevel*(this: GameInfo): int32 {.base, discardable.}
method setHighestLevel*(this: GameInfo, highestLevel: int32) {.base.}
method getCurrentLevel*(this: GameInfo): int32 {.base, discardable.}
method setCurrentLevel*(this: GameInfo, currentLevel: int32) {.base.}
method nextGameLevel*(this: GameInfo) {.base.}
method previousGameLevel*(this: GameInfo) {.base.}
method isLastLevel*(this: GameInfo): bool {.base, discardable.}
method toHashtable*(this: GameInfo): ABHashtable {.base, discardable.}
method toString*(this: GameInfo): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/game/GameTypeFactory as GameTypeFactoryModule
export GameTypeFactoryModule
import org/allbinary/game/PlayerTypesFactory as PlayerTypesFactoryModule
export PlayerTypesFactoryModule

var GameInfo_NONEValue: GameInfo
var GameInfo_NONESet = false
proc NONE*(t: typedesc[GameInfo]): GameInfo =
    if not GameInfo_NONESet:
        GameInfo_NONESet = true
        GameInfo_NONEValue = newGameInfo(GameTypeFactory.getInstance().NONE, GameMode.NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1)
    GameInfo_NONEValue
var GameInfo_LEVEL_NAMEValue: string
var GameInfo_LEVEL_NAMESet = false
proc LEVEL_NAME*(t: typedesc[GameInfo]): string =
    if not GameInfo_LEVEL_NAMESet:
        GameInfo_LEVEL_NAMESet = true
        GameInfo_LEVEL_NAMEValue = "LEVEL"
    GameInfo_LEVEL_NAMEValue

# Java field initializers run after the base initializer
proc initFieldsGameInfo(this: GameInfo) =
    this.logUtil = LogUtil.getInstance()
    this.gameInfoData = GameInfoData.getInstance()
    
    
    
    this.highestLevel = 0
    
    this.NEW_LEVEL = "New Level: "
    this.SET_CURRENT_LEVEL = "setCurrentLevel"
    this.NEXT_GAME_LEVEL = "nextGameLevel"
    discard

proc initGameInfo*(this: GameInfo, gameType: GameType, gameMode: GameMode, playerType: PlayerType, highestLevel: int32, currentLevel: int32) =
        this.initFieldsGameInfo()
        this.gameType = gameType
        this.gameMode = gameMode
        this.setHighestLevel(highestLevel)
        this.currentLevel = currentLevel
        this.playerType = playerType

proc newGameInfo*(gameType: GameType, gameMode: GameMode, playerType: PlayerType, highestLevel: int32, currentLevel: int32): GameInfo =
    result = GameInfo()
    initGameInfo(result, gameType, gameMode, playerType, highestLevel, currentLevel)

method getGameType*(this: GameInfo): GameType {.base, discardable.} =
        return this.gameType

method getGameMode*(this: GameInfo): GameMode {.base, discardable.} =
        return this.gameMode

method getPlayerType*(this: GameInfo): PlayerType {.base, discardable.} =
        return this.playerType

method getHighestLevel*(this: GameInfo): int32 {.base, discardable.} =
        return this.highestLevel

method setHighestLevel*(this: GameInfo, highestLevel: int32) {.base.} =
        this.highestLevel = highestLevel

method getCurrentLevel*(this: GameInfo): int32 {.base, discardable.} =
        return this.currentLevel

method setCurrentLevel*(this: GameInfo, currentLevel: int32) {.base.} =
        this.currentLevel = currentLevel
        this.logUtil.putF(newStringMaker().append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.SET_CURRENT_LEVEL)

method nextGameLevel*(this: GameInfo) {.base.} =
        if this.getCurrentLevel() < this.getHighestLevel():
            this.currentLevel = this.currentLevel +% 1
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.NEXT_GAME_LEVEL)

method previousGameLevel*(this: GameInfo) {.base.} =
        if this.getCurrentLevel() > 1:
            this.currentLevel = this.currentLevel -% 1

method isLastLevel*(this: GameInfo): bool {.base, discardable.} =
        if this.getCurrentLevel() >= this.getHighestLevel():
            return true
        else:
            return false

method toHashtable*(this: GameInfo): ABHashtable {.base, discardable.} =
        let hashtable: ABHashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(this.gameInfoData.GAME_TYPE, this.getGameType().toString())
        hashtable.put(this.gameInfoData.GAME_MODE, this.gameMode.toString())
        hashtable.put(this.gameInfoData.PLAYER_TYPE, this.playerType.toString())
        hashtable.put(this.gameInfoData.HIGHEST_LEVEL, jstr(this.getHighestLevel()))
        hashtable.put(this.gameInfoData.CURRENT_LEVEL, jstr(this.currentLevel))
        return hashtable

method toString*(this: GameInfo): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        stringBuffer.append(this.gameInfoData.GAME_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(this.getGameType().toString())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(this.gameInfoData.GAME_MODE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(this.gameMode.toString())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(this.gameInfoData.PLAYER_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(StringUtil.getInstance().toString(this.playerType))
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(this.gameInfoData.HIGHEST_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(this.getHighestLevel())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(this.gameInfoData.CURRENT_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(this.currentLevel)
        return stringBuffer.toString()

