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
# package org.allbinary.game.configuration.persistance

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/persistance/KeyValuePersistance as KeyValuePersistanceModule
export KeyValuePersistanceModule

type
    GameConfigurationPersistanceSingleton* = ref object of KeyValuePersistance

proc newGameConfigurationPersistanceSingleton*(): GameConfigurationPersistanceSingleton
proc initGameConfigurationPersistanceSingleton*(this: GameConfigurationPersistanceSingleton)
proc getInstance*(t: typedesc[GameConfigurationPersistanceSingleton]): GameConfigurationPersistanceSingleton {.discardable.}
import org/allbinary/game/configuration/persistance/GamePersistanceStrings as GamePersistanceStringsModule
export GamePersistanceStringsModule

var GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue: GameConfigurationPersistanceSingleton
var GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet = false
proc GAME_PERSISTANCE*(t: typedesc[GameConfigurationPersistanceSingleton]): GameConfigurationPersistanceSingleton =
    if not GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet:
        GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet = true
        GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue = newGameConfigurationPersistanceSingleton()
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue
proc `GAME_PERSISTANCE=`*(t: typedesc[GameConfigurationPersistanceSingleton], value: GameConfigurationPersistanceSingleton) =
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet = true
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue = value

proc getInstance*(t: typedesc[GameConfigurationPersistanceSingleton]): GameConfigurationPersistanceSingleton {.discardable.} =
        return GameConfigurationPersistanceSingleton.GAME_PERSISTANCE

proc initGameConfigurationPersistanceSingleton*(this: GameConfigurationPersistanceSingleton) =
        initKeyValuePersistance(this, GamePersistanceStrings.getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID)

proc newGameConfigurationPersistanceSingleton*(): GameConfigurationPersistanceSingleton =
    result = GameConfigurationPersistanceSingleton()
    initGameConfigurationPersistanceSingleton(result)

when declared(newGameConfigurationPersistanceSingletonHook0):
    newGameConfigurationPersistanceSingletonHook0 = proc (): KeyValuePersistance = newGameConfigurationPersistanceSingleton()

