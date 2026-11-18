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
import java/lang/Long as LongModule
export LongModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule

type
    SaveGameForm* = ref object of CommandForm
        meUtil*: MIDPUtil

proc newSaveGameForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): SaveGameForm
proc initSaveGameForm*(this: SaveGameForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
proc createForm*(t: typedesc[SaveGameForm], commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm {.discardable.}
proc getInstance*(t: typedesc[SaveGameForm]): CommandForm {.discardable.}
method initCommands*(this: SaveGameForm, cmdListener: CommandListener)
import javax/microedition/lcdui/TextField as TextFieldModule
export TextFieldModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/logic/ABSystemWrapper as ABSystemWrapperModule
export ABSystemWrapperModule

var SaveGameForm_FORMValue: CommandForm
var SaveGameForm_FORMSet = false
proc FORMStatic*(t: typedesc[SaveGameForm]): CommandForm =
    if not SaveGameForm_FORMSet:
        SaveGameForm_FORMSet = true
        SaveGameForm_FORMValue = CommandForm.getNullCommandForm()
    SaveGameForm_FORMValue
proc `FORMStatic=`*(t: typedesc[SaveGameForm], value: CommandForm) =
    SaveGameForm_FORMSet = true
    SaveGameForm_FORMValue = value

# Java field initializers run after the base initializer
proc initFieldsSaveGameForm(this: SaveGameForm) =
    this.meUtil = MIDPUtil.getInstance()
    discard

proc createForm*(t: typedesc[SaveGameForm], commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm {.discardable.} =
        SaveGameForm.FORMStatic = newSaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        return SaveGameForm.FORMStatic

proc getInstance*(t: typedesc[SaveGameForm]): CommandForm {.discardable.} =
        return SaveGameForm.FORMStatic

proc initSaveGameForm*(this: SaveGameForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        this.initFieldsSaveGameForm()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        var timeString: string = jstr(ABSystemWrapper.getInstance().currentTimeMillis())
        this.meUtil.appendItem(this, newTextField("Name: ", timeString, 30, TextField.ANY))
        this.initCommands(commandListener)

proc newSaveGameForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): SaveGameForm =
    result = SaveGameForm()
    initSaveGameForm(result, commandListener, title, backgrounBasicColor, foregroundBasicColor)

method initCommands*(this: SaveGameForm, cmdListener: CommandListener) =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.SAVE)
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)

when declared(newSaveGameFormHook4):
    newSaveGameFormHook4 = proc (commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm = newSaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)

