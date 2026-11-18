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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/item/CommandTextItemArrayFactory as CommandTextItemArrayFactoryModule
export CommandTextItemArrayFactoryModule

type
    GameLimitedCommandTextItemArrayFactory* = ref object of JObject
        commandTextItemArrayFactory*: CommandTextItemArrayFactory

proc newGameLimitedCommandTextItemArrayFactory*(): GameLimitedCommandTextItemArrayFactory
proc getInstance*(t: typedesc[GameLimitedCommandTextItemArrayFactory]): GameLimitedCommandTextItemArrayFactory {.discardable.}
method getCommandTextItemArrayFactory*(this: GameLimitedCommandTextItemArrayFactory): CommandTextItemArrayFactory {.base, discardable.}
import org/allbinary/graphics/form/item/LimitCommandsVisitor as LimitCommandsVisitorModule
export LimitCommandsVisitorModule

var GameLimitedCommandTextItemArrayFactory_instanceValue: GameLimitedCommandTextItemArrayFactory
var GameLimitedCommandTextItemArrayFactory_instanceSet = false
proc instance*(t: typedesc[GameLimitedCommandTextItemArrayFactory]): GameLimitedCommandTextItemArrayFactory =
    if not GameLimitedCommandTextItemArrayFactory_instanceSet:
        GameLimitedCommandTextItemArrayFactory_instanceSet = true
        GameLimitedCommandTextItemArrayFactory_instanceValue = newGameLimitedCommandTextItemArrayFactory()
    GameLimitedCommandTextItemArrayFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameLimitedCommandTextItemArrayFactory(this: GameLimitedCommandTextItemArrayFactory) =
    this.commandTextItemArrayFactory = newCommandTextItemArrayFactory(newLimitCommandsVisitor())
    discard

proc initGameLimitedCommandTextItemArrayFactory*(this: GameLimitedCommandTextItemArrayFactory) =
    this.initFieldsGameLimitedCommandTextItemArrayFactory()

proc newGameLimitedCommandTextItemArrayFactory*(): GameLimitedCommandTextItemArrayFactory =
    result = GameLimitedCommandTextItemArrayFactory()
    initGameLimitedCommandTextItemArrayFactory(result)

proc getInstance*(t: typedesc[GameLimitedCommandTextItemArrayFactory]): GameLimitedCommandTextItemArrayFactory {.discardable.} =
        return GameLimitedCommandTextItemArrayFactory.instance

method getCommandTextItemArrayFactory*(this: GameLimitedCommandTextItemArrayFactory): CommandTextItemArrayFactory {.base, discardable.} =
        return this.commandTextItemArrayFactory

