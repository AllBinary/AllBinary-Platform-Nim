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
    GamePersistanceSingleton* = ref object of KeyValuePersistance

proc newGamePersistanceSingleton*(): GamePersistanceSingleton
proc initGamePersistanceSingleton*(this: GamePersistanceSingleton)
proc getInstance*(t: typedesc[GamePersistanceSingleton]): GamePersistanceSingleton {.discardable.}
import org/allbinary/game/configuration/persistance/GamePersistanceStrings as GamePersistanceStringsModule
export GamePersistanceStringsModule

var GamePersistanceSingleton_GAME_PERSISTANCEValue: GamePersistanceSingleton
var GamePersistanceSingleton_GAME_PERSISTANCESet = false
proc GAME_PERSISTANCE*(t: typedesc[GamePersistanceSingleton]): GamePersistanceSingleton =
    if not GamePersistanceSingleton_GAME_PERSISTANCESet:
        GamePersistanceSingleton_GAME_PERSISTANCESet = true
        GamePersistanceSingleton_GAME_PERSISTANCEValue = newGamePersistanceSingleton()
    GamePersistanceSingleton_GAME_PERSISTANCEValue
proc `GAME_PERSISTANCE=`*(t: typedesc[GamePersistanceSingleton], value: GamePersistanceSingleton) =
    GamePersistanceSingleton_GAME_PERSISTANCESet = true
    GamePersistanceSingleton_GAME_PERSISTANCEValue = value

proc getInstance*(t: typedesc[GamePersistanceSingleton]): GamePersistanceSingleton {.discardable.} =
        return GamePersistanceSingleton.GAME_PERSISTANCE

proc initGamePersistanceSingleton*(this: GamePersistanceSingleton) =
        initKeyValuePersistance(this, GamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID)

proc newGamePersistanceSingleton*(): GamePersistanceSingleton =
    result = GamePersistanceSingleton()
    initGamePersistanceSingleton(result)

when declared(newGamePersistanceSingletonHook0):
    newGamePersistanceSingletonHook0 = proc (): KeyValuePersistance = newGamePersistanceSingleton()

