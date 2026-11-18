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

type
    GameDifficultyFactory* = ref object of JObject
        level*: int32

proc newGameDifficultyFactory*(): GameDifficultyFactory
proc getInstance*(t: typedesc[GameDifficultyFactory]): GameDifficultyFactory {.discardable.}
method setLevel*(this: GameDifficultyFactory, level: int32) {.base.}
method getLevel*(this: GameDifficultyFactory): int32 {.base, discardable.}

var GameDifficultyFactory_instanceValue: GameDifficultyFactory
var GameDifficultyFactory_instanceSet = false
proc instance*(t: typedesc[GameDifficultyFactory]): GameDifficultyFactory =
    if not GameDifficultyFactory_instanceSet:
        GameDifficultyFactory_instanceSet = true
        GameDifficultyFactory_instanceValue = newGameDifficultyFactory()
    GameDifficultyFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameDifficultyFactory(this: GameDifficultyFactory) =
    this.level = 0
    discard

proc initGameDifficultyFactory*(this: GameDifficultyFactory) =
    this.initFieldsGameDifficultyFactory()

proc newGameDifficultyFactory*(): GameDifficultyFactory =
    result = GameDifficultyFactory()
    initGameDifficultyFactory(result)

proc getInstance*(t: typedesc[GameDifficultyFactory]): GameDifficultyFactory {.discardable.} =
        return GameDifficultyFactory.instance

method setLevel*(this: GameDifficultyFactory, level: int32) {.base.} =
        this.level = level

method getLevel*(this: GameDifficultyFactory): int32 {.base, discardable.} =
        return this.level

