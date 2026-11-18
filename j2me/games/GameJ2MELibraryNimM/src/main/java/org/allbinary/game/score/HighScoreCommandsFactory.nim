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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/score/HighScoreCommandsBaseFactory as HighScoreCommandsBaseFactoryModule
export HighScoreCommandsBaseFactoryModule

type
    HighScoreCommandsFactory* = ref object of HighScoreCommandsBaseFactory

proc newHighScoreCommandsFactory*(): HighScoreCommandsFactory
proc initHighScoreCommandsFactory*(this: HighScoreCommandsFactory)
proc getInstance*(t: typedesc[HighScoreCommandsFactory]): HighScoreCommandsFactory {.discardable.}
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/game/score/HighScoreCommands as HighScoreCommandsModule
export HighScoreCommandsModule

var HighScoreCommandsFactory_instanceValue: HighScoreCommandsFactory
var HighScoreCommandsFactory_instanceSet = false
proc instance*(t: typedesc[HighScoreCommandsFactory]): HighScoreCommandsFactory =
    if not HighScoreCommandsFactory_instanceSet:
        HighScoreCommandsFactory_instanceSet = true
        HighScoreCommandsFactory_instanceValue = newHighScoreCommandsFactory()
    HighScoreCommandsFactory_instanceValue

proc getInstance*(t: typedesc[HighScoreCommandsFactory]): HighScoreCommandsFactory {.discardable.} =
        return HighScoreCommandsFactory.instance

proc initHighScoreCommandsFactory*(this: HighScoreCommandsFactory) =
        initHighScoreCommandsBaseFactory(this, newJArrayFromRefs[Command](HighScoreCommands.getInstance().PERSONAL, HighScoreCommands.getInstance().WORLD))

proc newHighScoreCommandsFactory*(): HighScoreCommandsFactory =
    result = HighScoreCommandsFactory()
    initHighScoreCommandsFactory(result)

when declared(newHighScoreCommandsFactoryHook0):
    newHighScoreCommandsFactoryHook0 = proc (): HighScoreCommandsBaseFactory = newHighScoreCommandsFactory()

