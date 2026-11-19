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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    HighScoreCommandsBaseFactory* = ref object of JObject
        logUtil*: LogUtil
        HIGH_SCORE_COMMANDS*: JArray[Command]

proc newHighScoreCommandsBaseFactory*(HIGH_SCORE_COMMANDS: JArray[Command]): HighScoreCommandsBaseFactory
proc initHighScoreCommandsBaseFactory*(this: HighScoreCommandsBaseFactory, HIGH_SCORE_COMMANDS: JArray[Command])
method isHighScoreCommand*(this: HighScoreCommandsBaseFactory, command: Command): bool {.base, discardable.}
method getIndex*(this: HighScoreCommandsBaseFactory, command: Command): int32 {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsHighScoreCommandsBaseFactory(this: HighScoreCommandsBaseFactory) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initHighScoreCommandsBaseFactory*(this: HighScoreCommandsBaseFactory, HIGH_SCORE_COMMANDS: JArray[Command]) =
        this.initFieldsHighScoreCommandsBaseFactory()
        this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS

proc newHighScoreCommandsBaseFactory*(HIGH_SCORE_COMMANDS: JArray[Command]): HighScoreCommandsBaseFactory =
    result = HighScoreCommandsBaseFactory()
    initHighScoreCommandsBaseFactory(result, HIGH_SCORE_COMMANDS)

method isHighScoreCommand*(this: HighScoreCommandsBaseFactory, command: Command): bool {.base, discardable.} =
        block:
            var index: int32 = this.HIGH_SCORE_COMMANDS.length -% 1
            while index >= 0:
                defer: index = index -% 1
                if (jSame(command, this.HIGH_SCORE_COMMANDS[index])):
                    return true
        return false

method getIndex*(this: HighScoreCommandsBaseFactory, command: Command): int32 {.base, discardable.} =
        block:
            var index: int32 = this.HIGH_SCORE_COMMANDS.length -% 1
            while index >= 0:
                defer: index = index -% 1
                if (jSame(command, this.HIGH_SCORE_COMMANDS[index])):
                    return index
        raise newJException("Exception", "No Such Command")

