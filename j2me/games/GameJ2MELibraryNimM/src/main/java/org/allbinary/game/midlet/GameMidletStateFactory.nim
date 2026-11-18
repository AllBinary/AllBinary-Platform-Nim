# Generated Code Do Not Modify
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/state/GameState as GameStateModule
export GameStateModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    GameMidletStateFactory* = ref object of JObject
        logUtil*: LogUtil
        currentGameState*: GameState

proc newGameMidletStateFactory*(): GameMidletStateFactory
proc initGameMidletStateFactory*(this: GameMidletStateFactory)
proc getInstance*(t: typedesc[GameMidletStateFactory]): GameMidletStateFactory {.discardable.}
method getCurrentGameState*(this: GameMidletStateFactory): GameState {.base, discardable.}
method setCurrentGameState*(this: GameMidletStateFactory, currentGameState: GameState) {.base.}
import org/allbinary/game/state/GameStateFactory as GameStateFactoryModule
export GameStateFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

var GameMidletStateFactory_INSTANCEValue: GameMidletStateFactory
var GameMidletStateFactory_INSTANCESet = false
proc INSTANCE*(t: typedesc[GameMidletStateFactory]): GameMidletStateFactory =
    if not GameMidletStateFactory_INSTANCESet:
        GameMidletStateFactory_INSTANCESet = true
        GameMidletStateFactory_INSTANCEValue = newGameMidletStateFactory()
    GameMidletStateFactory_INSTANCEValue

# Java field initializers run after the base initializer
proc initFieldsGameMidletStateFactory(this: GameMidletStateFactory) =
    this.logUtil = LogUtil.getInstance()
    this.currentGameState = GameStateFactory.getInstance().NO_GAME_STATE
    discard

proc initGameMidletStateFactory*(this: GameMidletStateFactory) =
        this.initFieldsGameMidletStateFactory()
        discard

proc newGameMidletStateFactory*(): GameMidletStateFactory =
    result = GameMidletStateFactory()
    initGameMidletStateFactory(result)

proc getInstance*(t: typedesc[GameMidletStateFactory]): GameMidletStateFactory {.discardable.} =
        return GameMidletStateFactory.INSTANCE

method getCurrentGameState*(this: GameMidletStateFactory): GameState {.base, discardable.} =
        return this.currentGameState

method setCurrentGameState*(this: GameMidletStateFactory, currentGameState: GameState) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString(currentGameState)).toString(), this, "setCurrentGameState")
        this.currentGameState = currentGameState

