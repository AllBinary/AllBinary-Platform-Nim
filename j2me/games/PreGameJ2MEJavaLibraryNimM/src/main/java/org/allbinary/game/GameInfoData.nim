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

type
    GameInfoData* = ref object of JObject
        GAME_TYPE*: string
        GAME_MODE*: string
        PLAYER_TYPE*: string
        HIGHEST_LEVEL*: string
        CURRENT_LEVEL*: string
        SOFTWARE_INFORMATION*: string

proc newGameInfoData*(): GameInfoData
proc initGameInfoData*(this: GameInfoData)
proc getInstance*(t: typedesc[GameInfoData]): GameInfoData {.discardable.}

var GameInfoData_instanceValue: GameInfoData
var GameInfoData_instanceSet = false
proc instance*(t: typedesc[GameInfoData]): GameInfoData =
    if not GameInfoData_instanceSet:
        GameInfoData_instanceSet = true
        GameInfoData_instanceValue = newGameInfoData()
    GameInfoData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameInfoData(this: GameInfoData) =
    this.GAME_TYPE = "GAME_TYPE"
    this.GAME_MODE = "GAME_MODE"
    this.PLAYER_TYPE = "PLAYER_TYPE"
    this.HIGHEST_LEVEL = "HIGHEST_LEVEL"
    this.CURRENT_LEVEL = "CURRENT_LEVEL"
    this.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION"
    discard

proc getInstance*(t: typedesc[GameInfoData]): GameInfoData {.discardable.} =
        return GameInfoData.instance

proc initGameInfoData*(this: GameInfoData) =
        this.initFieldsGameInfoData()
        discard

proc newGameInfoData*(): GameInfoData =
    result = GameInfoData()
    initGameInfoData(result)

