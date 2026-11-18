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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule

type
    GameKeyMappingFactory* = ref object of JObject
        intKeyToGameKey*: JArray[GameKey]

proc newGameKeyMappingFactory*(): GameKeyMappingFactory
proc initGameKeyMappingFactory*(this: GameKeyMappingFactory)
proc getInstance*(t: typedesc[GameKeyMappingFactory]): GameKeyMappingFactory {.discardable.}
method getGameKey*(this: GameKeyMappingFactory, key: int32): GameKey {.base, discardable.}
method setGameKey*(this: GameKeyMappingFactory, gameKey: GameKey) {.base.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule

var GameKeyMappingFactory_instanceValue: JObject
var GameKeyMappingFactory_instanceSet = false
proc instance*(t: typedesc[GameKeyMappingFactory]): JObject =
    if not GameKeyMappingFactory_instanceSet:
        GameKeyMappingFactory_instanceSet = true
        GameKeyMappingFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GameKeyMappingFactory_instanceValue
proc `instance=`*(t: typedesc[GameKeyMappingFactory], value: JObject) =
    GameKeyMappingFactory_instanceSet = true
    GameKeyMappingFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGameKeyMappingFactory(this: GameKeyMappingFactory) =
    this.intKeyToGameKey = newJArray[GameKey](InputFactory.getInstance().MAX, default(GameKey))
    discard

proc getInstance*(t: typedesc[GameKeyMappingFactory]): GameKeyMappingFactory {.discardable.} =
        if GameKeyMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            GameKeyMappingFactory.instance = newGameKeyMappingFactory()
        return GameKeyMappingFactory(JObject(GameKeyMappingFactory.instance))

proc initGameKeyMappingFactory*(this: GameKeyMappingFactory) =
        this.initFieldsGameKeyMappingFactory()
        let gameKeyFactory: GameKeyFactory = GameKeyFactory.getInstance()
        this.setGameKey(gameKeyFactory.NONE)
        this.setGameKey(gameKeyFactory.UP)
        this.setGameKey(gameKeyFactory.DOWN)
        this.setGameKey(gameKeyFactory.LEFT)
        this.setGameKey(gameKeyFactory.RIGHT)
        this.setGameKey(gameKeyFactory.KEY_POUND)
        this.setGameKey(gameKeyFactory.KEY_STAR)
        this.setGameKey(gameKeyFactory.KEY_NUM0)
        this.setGameKey(gameKeyFactory.KEY_NUM1)
        this.setGameKey(gameKeyFactory.KEY_NUM2)
        this.setGameKey(gameKeyFactory.KEY_NUM3)
        this.setGameKey(gameKeyFactory.KEY_NUM4)
        this.setGameKey(gameKeyFactory.KEY_NUM5)
        this.setGameKey(gameKeyFactory.KEY_NUM6)
        this.setGameKey(gameKeyFactory.KEY_NUM7)
        this.setGameKey(gameKeyFactory.KEY_NUM8)
        this.setGameKey(gameKeyFactory.KEY_NUM9)
        this.setGameKey(gameKeyFactory.GAME_A)
        this.setGameKey(gameKeyFactory.GAME_B)
        this.setGameKey(gameKeyFactory.GAME_C)
        this.setGameKey(gameKeyFactory.GAME_D)
        this.setGameKey(gameKeyFactory.FIRE)
        this.setGameKey(gameKeyFactory.LEVEL_DOWN)
        this.setGameKey(gameKeyFactory.LEVEL_UP)

proc newGameKeyMappingFactory*(): GameKeyMappingFactory =
    result = GameKeyMappingFactory()
    initGameKeyMappingFactory(result)

method getGameKey*(this: GameKeyMappingFactory, key: int32): GameKey {.base, discardable.} =
        return this.intKeyToGameKey[key]

method setGameKey*(this: GameKeyMappingFactory, gameKey: GameKey) {.base.} =
        this.intKeyToGameKey[gameKey.getId()] = gameKey

