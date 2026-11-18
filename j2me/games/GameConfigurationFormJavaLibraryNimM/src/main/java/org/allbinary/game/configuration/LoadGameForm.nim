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
import java/lang/Integer as IntegerModule
export IntegerModule
import javax/microedition/lcdui/ChoiceGroup as ChoiceGroupModule
export ChoiceGroupModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    LoadGameForm* = ref object of CommandForm
        meUtil*: MIDPUtil
        areChoices*: bool

proc newLoadGameForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): LoadGameForm
proc initLoadGameForm*(this: LoadGameForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method initCommands*(this: LoadGameForm, cmdListener: CommandListener)
method update*(this: LoadGameForm)
method add*(this: LoadGameForm, list: BasicArrayList, name: string, option: int32) {.base.}
method getChoiceGroup*(this: LoadGameForm, list: BasicArrayList, name: string, option: int32): ChoiceGroup {.base, discardable.}
method getSelectedId*(this: LoadGameForm): int32 {.base, discardable.}
method getSelectedText*(this: LoadGameForm): int32 {.base, discardable.}
import javax/microedition/lcdui/Choice as ChoiceModule
export ChoiceModule
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import javax/microedition/lcdui/StringItem as StringItemModule
export StringItemModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/persistance/GamePersistanceSingleton as GamePersistanceSingletonModule
export GamePersistanceSingletonModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsLoadGameForm(this: LoadGameForm) =
    this.meUtil = MIDPUtil.getInstance()
    this.areChoices = false
    discard

proc initLoadGameForm*(this: LoadGameForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        this.initFieldsLoadGameForm()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.update()
        this.initCommands(commandListener)

proc newLoadGameForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): LoadGameForm =
    result = LoadGameForm()
    initLoadGameForm(result, commandListener, title, backgrounBasicColor, foregroundBasicColor)

method initCommands*(this: LoadGameForm, cmdListener: CommandListener) =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.LOAD_FILE)
        this.addCommand(gameCommandsFactory.DELETE_FILE)
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)

method update*(this: LoadGameForm) =
        let list: BasicArrayList = GamePersistanceSingleton.getInstance().getIds()
        this.deleteAll()
        if list.size() > 0:
            this.add(list, "Select A Saved Game", Choice.EXCLUSIVE)
            this.areChoices = true
        else:
            this.meUtil.appendItem(this, newStringItem("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item.PLAIN))
            this.areChoices = false
        procCall CommandForm(this).update()

method add*(this: LoadGameForm, list: BasicArrayList, name: string, option: int32) {.base.} =
        var choiceGroup: ChoiceGroup = this.getChoiceGroup(list, name, option)
        if list.size() > 0:
            choiceGroup.setSelectedIndex(0, true)
        this.meUtil.appendItem(this, choiceGroup)

method getChoiceGroup*(this: LoadGameForm, list: BasicArrayList, name: string, option: int32): ChoiceGroup {.base, discardable.} =
        let METHOD_NAME: string = "getChoiceGroup"
        let ADDING_CHOICE: string = "Adding Choice: "
        let choiceGroup: ChoiceGroup = newChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var anyType: JObject = list.objectArray[index]
                this.logUtil.putF(newStringMaker().append(ADDING_CHOICE).append(anyType.toString()).toString(), this, METHOD_NAME)
                choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGEStatic)
        return choiceGroup

method getSelectedId*(this: LoadGameForm): int32 {.base, discardable.} =
        if this.areChoices:
            let choiceGroup: ChoiceGroup = ChoiceGroup(JObject(this.get(0)))
            return choiceGroup.getSelectedIndex()
        else:
            return -1

method getSelectedText*(this: LoadGameForm): int32 {.base, discardable.} =
        if this.areChoices:
            let choiceGroup: ChoiceGroup = ChoiceGroup(JObject(this.get(0)))
            let value: int32 = jstr(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue()
            return value
        else:
            return -1

when declared(newLoadGameFormHook4):
    newLoadGameFormHook4 = proc (commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm = newLoadGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)

