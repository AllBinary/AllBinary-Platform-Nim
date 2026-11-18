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
    BasicHighScoresGameInfoFactory* = ref object of JObject
        MULTI_PLAYER_SERVER*: GameInfo
        SINGLE_PLAYER_SERVER*: GameInfo

proc newBasicHighScoresGameInfoFactory*(): BasicHighScoresGameInfoFactory
proc getInstance*(t: typedesc[BasicHighScoresGameInfoFactory]): BasicHighScoresGameInfoFactory {.discardable.}
import org/allbinary/game/GameTypeFactory as GameTypeFactoryModule
export GameTypeFactoryModule
import org/allbinary/game/GameMode as GameModeModule
export GameModeModule
import org/allbinary/game/PlayerTypesFactory as PlayerTypesFactoryModule
export PlayerTypesFactoryModule

var BasicHighScoresGameInfoFactory_SINGLETONValue: BasicHighScoresGameInfoFactory
var BasicHighScoresGameInfoFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[BasicHighScoresGameInfoFactory]): BasicHighScoresGameInfoFactory =
    if not BasicHighScoresGameInfoFactory_SINGLETONSet:
        BasicHighScoresGameInfoFactory_SINGLETONSet = true
        BasicHighScoresGameInfoFactory_SINGLETONValue = newBasicHighScoresGameInfoFactory()
    BasicHighScoresGameInfoFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsBasicHighScoresGameInfoFactory(this: BasicHighScoresGameInfoFactory) =
    this.MULTI_PLAYER_SERVER = newGameInfo(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
    this.SINGLE_PLAYER_SERVER = newGameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
    discard

proc initBasicHighScoresGameInfoFactory*(this: BasicHighScoresGameInfoFactory) =
    this.initFieldsBasicHighScoresGameInfoFactory()

proc newBasicHighScoresGameInfoFactory*(): BasicHighScoresGameInfoFactory =
    result = BasicHighScoresGameInfoFactory()
    initBasicHighScoresGameInfoFactory(result)

proc getInstance*(t: typedesc[BasicHighScoresGameInfoFactory]): BasicHighScoresGameInfoFactory {.discardable.} =
        return BasicHighScoresGameInfoFactory.SINGLETON

