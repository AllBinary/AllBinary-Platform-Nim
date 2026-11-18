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
# package org.allbinary.game.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule

type
    GameConfigurationSingleton* = ref object of JObject
        list*: BasicArrayList
        hashtable*: ABHashtable

proc newGameConfigurationSingleton*(): GameConfigurationSingleton
proc initGameConfigurationSingleton*(this: GameConfigurationSingleton)
proc getInstance*(t: typedesc[GameConfigurationSingleton]): GameConfigurationSingleton {.discardable.}
method getInstanceByName*(this: GameConfigurationSingleton, name: string): GameConfiguration {.base, discardable.}
method getOptionsBasicArrayList*(this: GameConfigurationSingleton): BasicArrayList {.base, discardable.}
method add*(this: GameConfigurationSingleton, gameConfiguration: GameConfiguration) {.base.}
method getHashtable*(this: GameConfigurationSingleton): ABHashtable {.base, discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var GameConfigurationSingleton_SINGLETONValue: GameConfigurationSingleton
var GameConfigurationSingleton_SINGLETONSet = false
proc SINGLETON*(t: typedesc[GameConfigurationSingleton]): GameConfigurationSingleton =
    if not GameConfigurationSingleton_SINGLETONSet:
        GameConfigurationSingleton_SINGLETONSet = true
        GameConfigurationSingleton_SINGLETONValue = newGameConfigurationSingleton()
    GameConfigurationSingleton_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[GameConfigurationSingleton], value: GameConfigurationSingleton) =
    GameConfigurationSingleton_SINGLETONSet = true
    GameConfigurationSingleton_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsGameConfigurationSingleton(this: GameConfigurationSingleton) =
    
    
    discard

proc getInstance*(t: typedesc[GameConfigurationSingleton]): GameConfigurationSingleton {.discardable.} =
        return GameConfigurationSingleton.SINGLETON

proc initGameConfigurationSingleton*(this: GameConfigurationSingleton) =
        this.initFieldsGameConfigurationSingleton()
        this.list = newBasicArrayListD()
        this.hashtable = StdUtil.getInstance().createHashtable()

proc newGameConfigurationSingleton*(): GameConfigurationSingleton =
    result = GameConfigurationSingleton()
    initGameConfigurationSingleton(result)

method getInstanceByName*(this: GameConfigurationSingleton, name: string): GameConfiguration {.base, discardable.} =
        return GameConfiguration(JObject(this.hashtable.get(name)))

method getOptionsBasicArrayList*(this: GameConfigurationSingleton): BasicArrayList {.base, discardable.} =
        return this.list

method add*(this: GameConfigurationSingleton, gameConfiguration: GameConfiguration) {.base.} =
        this.list.add(gameConfiguration)

method getHashtable*(this: GameConfigurationSingleton): ABHashtable {.base, discardable.} =
        return this.hashtable

