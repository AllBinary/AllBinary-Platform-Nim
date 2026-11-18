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
import org/allbinary/game/PlayerType as PlayerTypeModule
export PlayerTypeModule

type
    PlayerTypesFactory* = ref object of JObject
        PLAYER_TYPE_ONE*: PlayerType
        PLAYER_TYPE_TWO*: PlayerType
        PLAYER_TYPE_THREE*: PlayerType

proc newPlayerTypesFactory*(): PlayerTypesFactory
proc getInstance*(t: typedesc[PlayerTypesFactory]): PlayerTypesFactory {.discardable.}

var PlayerTypesFactory_SINGLETONValue: PlayerTypesFactory
var PlayerTypesFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[PlayerTypesFactory]): PlayerTypesFactory =
    if not PlayerTypesFactory_SINGLETONSet:
        PlayerTypesFactory_SINGLETONSet = true
        PlayerTypesFactory_SINGLETONValue = newPlayerTypesFactory()
    PlayerTypesFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsPlayerTypesFactory(this: PlayerTypesFactory) =
    this.PLAYER_TYPE_ONE = newPlayerType("Player Type One", 0)
    this.PLAYER_TYPE_TWO = newPlayerType("Player Type Two", 1)
    this.PLAYER_TYPE_THREE = newPlayerType("Player Type Three", 2)
    discard

proc initPlayerTypesFactory*(this: PlayerTypesFactory) =
    this.initFieldsPlayerTypesFactory()

proc newPlayerTypesFactory*(): PlayerTypesFactory =
    result = PlayerTypesFactory()
    initPlayerTypesFactory(result)

proc getInstance*(t: typedesc[PlayerTypesFactory]): PlayerTypesFactory {.discardable.} =
        return PlayerTypesFactory.SINGLETON

