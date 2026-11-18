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

type
    HighScoreCommands* = ref object of JObject
        DISPLAY*: Command
        PERSONAL*: Command
        WORLD*: Command

proc newHighScoreCommands*(): HighScoreCommands
proc getInstance*(t: typedesc[HighScoreCommands]): HighScoreCommands {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var HighScoreCommands_instanceValue: HighScoreCommands
var HighScoreCommands_instanceSet = false
proc instance*(t: typedesc[HighScoreCommands]): HighScoreCommands =
    if not HighScoreCommands_instanceSet:
        HighScoreCommands_instanceSet = true
        HighScoreCommands_instanceValue = newHighScoreCommands()
    HighScoreCommands_instanceValue

# Java field initializers run after the base initializer
proc initFieldsHighScoreCommands(this: HighScoreCommands) =
    this.DISPLAY = newCommand("Scores", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.PERSONAL = newCommand("Personal", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.WORLD = newCommand("World", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    discard

proc initHighScoreCommands*(this: HighScoreCommands) =
    this.initFieldsHighScoreCommands()

proc newHighScoreCommands*(): HighScoreCommands =
    result = HighScoreCommands()
    initHighScoreCommands(result)

proc getInstance*(t: typedesc[HighScoreCommands]): HighScoreCommands {.discardable.} =
        return HighScoreCommands.instance

