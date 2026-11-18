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
    GameDifficultyOptions* = ref object of CommandForm
        meUtil*: MIDPUtil
        list*: BasicArrayList

proc newGameDifficultyOptions*(commandListener: CommandListener, title: string, list: BasicArrayList, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameDifficultyOptions
proc initGameDifficultyOptions*(this: GameDifficultyOptions, commandListener: CommandListener, title: string, list: BasicArrayList, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method open*(this: GameDifficultyOptions)
method close*(this: GameDifficultyOptions)
method save*(this: GameDifficultyOptions) {.base.}
method initCommands*(this: GameDifficultyOptions, cmdListener: CommandListener)
method update*(this: GameDifficultyOptions)
method add*(this: GameDifficultyOptions, list: BasicArrayList, name: string, option: int32) {.base.}
method getChoiceGroup*(this: GameDifficultyOptions, list: BasicArrayList, name: string, option: int32): ChoiceGroup {.base, discardable.}
method setSelectedId*(this: GameDifficultyOptions, id: int32) {.base.}
method getSelectedId*(this: GameDifficultyOptions): int32 {.base, discardable.}
method getSelectedText*(this: GameDifficultyOptions): int32 {.base, discardable.}
import javax/microedition/lcdui/Choice as ChoiceModule
export ChoiceModule
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/persistance/GameDifficultyFactory as GameDifficultyFactoryModule
export GameDifficultyFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsGameDifficultyOptions(this: GameDifficultyOptions) =
    this.meUtil = MIDPUtil.getInstance()
    
    discard

proc initGameDifficultyOptions*(this: GameDifficultyOptions, commandListener: CommandListener, title: string, list: BasicArrayList, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        this.initFieldsGameDifficultyOptions()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.list = list
        this.update()
        this.initCommands(commandListener)
        let gameDifficultyFactory: GameDifficultyFactory = GameDifficultyFactory.getInstance()
        this.setSelectedId(gameDifficultyFactory.getLevel())

proc newGameDifficultyOptions*(commandListener: CommandListener, title: string, list: BasicArrayList, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameDifficultyOptions =
    result = GameDifficultyOptions()
    initGameDifficultyOptions(result, commandListener, title, list, backgrounBasicColor, foregroundBasicColor)

method open*(this: GameDifficultyOptions) =
        procCall CommandForm(this).open()

method close*(this: GameDifficultyOptions) =
        procCall CommandForm(this).close()
        this.save()

method save*(this: GameDifficultyOptions) {.base.} =
        let gameDifficultyFactory: GameDifficultyFactory = GameDifficultyFactory.getInstance()
        gameDifficultyFactory.setLevel(this.getSelectedId())

method initCommands*(this: GameDifficultyOptions, cmdListener: CommandListener) =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)

method update*(this: GameDifficultyOptions) =
        this.deleteAll()
        this.add(this.list, "Difficulty", Choice.EXCLUSIVE)
        procCall CommandForm(this).update()

method add*(this: GameDifficultyOptions, list: BasicArrayList, name: string, option: int32) {.base.} =
        let choiceGroup: ChoiceGroup = this.getChoiceGroup(list, name, option)
        if list.size() > 0:
            choiceGroup.setSelectedIndex(0, true)
        this.meUtil.appendItem(this, choiceGroup)

method getChoiceGroup*(this: GameDifficultyOptions, list: BasicArrayList, name: string, option: int32): ChoiceGroup {.base, discardable.} =
        let METHOD_NAME: string = "addChoiceGroup"
        let NAME: string = "Adding Choice: "
        let choiceGroup: ChoiceGroup = newChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        let size: int32 = list.size()
        var anyType: JObject = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                anyType = list.objectArray[index]
                this.logUtil.putF(newStringMaker().append(NAME).append(anyType.toString()).toString(), this, METHOD_NAME)
                choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGEStatic)
        return choiceGroup

method setSelectedId*(this: GameDifficultyOptions, id: int32) {.base.} =
        let choiceGroup: ChoiceGroup = ChoiceGroup(JObject(this.get(0)))
        choiceGroup.setSelectedIndex(id, true)

method getSelectedId*(this: GameDifficultyOptions): int32 {.base, discardable.} =
        let choiceGroup: ChoiceGroup = ChoiceGroup(JObject(this.get(0)))
        return choiceGroup.getSelectedIndex()

method getSelectedText*(this: GameDifficultyOptions): int32 {.base, discardable.} =
        let choiceGroup: ChoiceGroup = ChoiceGroup(JObject(this.get(0)))
        let value: int32 = jstr(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue()
        return value

when declared(newGameDifficultyOptionsHook5):
    newGameDifficultyOptionsHook5 = proc (commandListener: CommandListener, title: string, list: BasicArrayList, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm = newGameDifficultyOptions(commandListener, title, list, backgrounBasicColor, foregroundBasicColor)

