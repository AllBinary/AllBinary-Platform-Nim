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
import org/allbinary/game/GameType as GameTypeModule
export GameTypeModule

type
    GameTypeFactory* = ref object of JObject
        NULL_GAME_TYPE_ARRAY*: JArray[GameType]
        NONE*: GameType
        SINGLE_PLAYER*: GameType
        MULTI_PLAYER*: GameType
        BOT*: GameType

proc newGameTypeFactory*(): GameTypeFactory
proc getInstance*(t: typedesc[GameTypeFactory]): GameTypeFactory {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var GameTypeFactory_instanceValue: GameTypeFactory
var GameTypeFactory_instanceSet = false
proc instance*(t: typedesc[GameTypeFactory]): GameTypeFactory =
    if not GameTypeFactory_instanceSet:
        GameTypeFactory_instanceSet = true
        GameTypeFactory_instanceValue = newGameTypeFactory()
    GameTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameTypeFactory(this: GameTypeFactory) =
    this.NULL_GAME_TYPE_ARRAY = newJArray[GameType](0, default(GameType))
    this.NONE = newGameType(StringUtil.getInstance().NULL_STRING)
    this.SINGLE_PLAYER = newGameType("Single Player")
    this.MULTI_PLAYER = newGameType("Multi Player")
    this.BOT = newGameType("Artificial Player")
    discard

proc initGameTypeFactory*(this: GameTypeFactory) =
    this.initFieldsGameTypeFactory()

proc newGameTypeFactory*(): GameTypeFactory =
    result = GameTypeFactory()
    initGameTypeFactory(result)

proc getInstance*(t: typedesc[GameTypeFactory]): GameTypeFactory {.discardable.} =
        return GameTypeFactory.instance

