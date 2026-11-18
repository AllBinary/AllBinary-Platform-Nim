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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule

type
    InGameOptionsForm* = ref object of CommandForm

proc newInGameOptionsForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): InGameOptionsForm
proc initInGameOptionsForm*(this: InGameOptionsForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method initCommands*(this: InGameOptionsForm, cmdListener: CommandListener)
import javax/microedition/lcdui/Choice as ChoiceModule
export ChoiceModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/feature/GameFeatureFormUtil as GameFeatureFormUtilModule
export GameFeatureFormUtilModule
import org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups as InGameFeatureChoiceGroupsModule
export InGameFeatureChoiceGroupsModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var InGameOptionsForm_DISPLAYValue: Command
var InGameOptionsForm_DISPLAYSet = false
proc DISPLAY*(t: typedesc[InGameOptionsForm]): Command =
    if not InGameOptionsForm_DISPLAYSet:
        InGameOptionsForm_DISPLAYSet = true
        InGameOptionsForm_DISPLAYValue = newCommand("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    InGameOptionsForm_DISPLAYValue
var InGameOptionsForm_SAVEValue: Command
var InGameOptionsForm_SAVESet = false
proc SAVE*(t: typedesc[InGameOptionsForm]): Command =
    if not InGameOptionsForm_SAVESet:
        InGameOptionsForm_SAVESet = true
        InGameOptionsForm_SAVEValue = newCommand("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    InGameOptionsForm_SAVEValue
var InGameOptionsForm_DEFAULTValue: Command
var InGameOptionsForm_DEFAULTSet = false
proc DEFAULT*(t: typedesc[InGameOptionsForm]): Command =
    if not InGameOptionsForm_DEFAULTSet:
        InGameOptionsForm_DEFAULTSet = true
        InGameOptionsForm_DEFAULTValue = newCommand("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    InGameOptionsForm_DEFAULTValue

proc initInGameOptionsForm*(this: InGameOptionsForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        let gameFeatureFormUtil: GameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getExclusiveInstance().get(), Choice.EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getMultipleInstance().get(), Choice.MULTIPLE)
        this.initCommands(commandListener)

proc newInGameOptionsForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): InGameOptionsForm =
    result = InGameOptionsForm()
    initInGameOptionsForm(result, commandListener, title, backgrounBasicColor, foregroundBasicColor)

method initCommands*(this: InGameOptionsForm, cmdListener: CommandListener) =
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.addCommand(InGameOptionsForm.DEFAULT)
        this.setCommandListener(cmdListener)

when declared(newInGameOptionsFormHook4):
    newInGameOptionsFormHook4 = proc (commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm = newInGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)

