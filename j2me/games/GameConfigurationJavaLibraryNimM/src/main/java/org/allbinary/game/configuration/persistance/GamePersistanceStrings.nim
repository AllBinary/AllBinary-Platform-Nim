#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.configuration.persistance

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GamePersistanceStrings* = ref object of JObject
        SAVED_GAME_RECORD_ID*: string
        SAVED_GAME_CONFIGURATION_RECORD_ID*: string
        DEFAULT_INPUT_MAPPING_RECORD_ID*: string
        SAVED_INPUT_CONFIGURATION_RECORD_ID*: string

proc newGamePersistanceStrings*(): GamePersistanceStrings
proc getInstance*(t: typedesc[GamePersistanceStrings]): GamePersistanceStrings {.discardable.}

var GamePersistanceStrings_instanceValue: GamePersistanceStrings
var GamePersistanceStrings_instanceSet = false
proc instance*(t: typedesc[GamePersistanceStrings]): GamePersistanceStrings =
    if not GamePersistanceStrings_instanceSet:
        GamePersistanceStrings_instanceSet = true
        GamePersistanceStrings_instanceValue = newGamePersistanceStrings()
    GamePersistanceStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGamePersistanceStrings(this: GamePersistanceStrings) =
    this.SAVED_GAME_RECORD_ID = "_SG"
    this.SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
    this.DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
    this.SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
    discard

proc initGamePersistanceStrings*(this: GamePersistanceStrings) =
    this.initFieldsGamePersistanceStrings()

proc newGamePersistanceStrings*(): GamePersistanceStrings =
    result = GamePersistanceStrings()
    initGamePersistanceStrings(result)

proc getInstance*(t: typedesc[GamePersistanceStrings]): GamePersistanceStrings {.discardable.} =
        return GamePersistanceStrings.instance

