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
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule

type
    GameOptionsForm* = ref object of CommandForm
        meUtil*: MIDPUtil

proc newGameOptionsForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameOptionsForm
proc initGameOptionsForm*(this: GameOptionsForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method closeClientInformation*(this: GameOptionsForm, abeClientInformation: AbeClientInformationInterface) {.base.}
method addTextFieldsIfSimulated*(this: GameOptionsForm) {.base.}
method addTextFields*(this: GameOptionsForm) {.base.}
method addConfiguration*(this: GameOptionsForm) {.base.}
method initCommands*(this: GameOptionsForm, cmdListener: CommandListener)
method save*(this: GameOptionsForm, abeClientInformation: AbeClientInformationInterface) {.base.}
import javax/microedition/lcdui/Choice as ChoiceModule
export ChoiceModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import javax/microedition/lcdui/TextField as TextFieldModule
export TextFieldModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/feature/GameFeatureChoiceGroups as GameFeatureChoiceGroupsModule
export GameFeatureChoiceGroupsModule
import org/allbinary/game/configuration/feature/GameFeatureFormUtil as GameFeatureFormUtilModule
export GameFeatureFormUtilModule
import org/allbinary/game/configuration/feature/GameFeatureItemCommandListener as GameFeatureItemCommandListenerModule
export GameFeatureItemCommandListenerModule
import org/allbinary/game/configuration/feature/GameFeatureItemStateListener as GameFeatureItemStateListenerModule
export GameFeatureItemStateListenerModule
import org/allbinary/game/configuration/feature/SensorFeatureFactory as SensorFeatureFactoryModule
export SensorFeatureFactoryModule
import org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton as GameConfigurationPersistanceSingletonModule
export GameConfigurationPersistanceSingletonModule
import org/allbinary/game/configuration/persistance/KeyValuePersistance as KeyValuePersistanceModule
export KeyValuePersistanceModule
import org/allbinary/graphics/displayable/command/MyCommandsFactory as MyCommandsFactoryModule
export MyCommandsFactoryModule
import org/allbinary/input/gyro/OrientationData as OrientationDataModule
export OrientationDataModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/configuration/GameConfigurationTextInput as GameConfigurationTextInputModule
export GameConfigurationTextInputModule
import org/allbinary/game/configuration/GameConfigurationSingleton as GameConfigurationSingletonModule
export GameConfigurationSingletonModule
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule
import org/allbinary/game/configuration/GameConfigurationGauge as GameConfigurationGaugeModule
export GameConfigurationGaugeModule
import org/allbinary/game/configuration/GameConfigurationUtil as GameConfigurationUtilModule
export GameConfigurationUtilModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule


# Java field initializers run after the base initializer
proc initFieldsGameOptionsForm(this: GameOptionsForm) =
    this.meUtil = MIDPUtil.getInstance()
    discard

proc initGameOptionsForm*(this: GameOptionsForm, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        this.initFieldsGameOptionsForm()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.addConfiguration()
        let gameFeatureFormUtil: GameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getExclusiveInstance().get(), Choice.EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getMultipleInstance().get(), Choice.MULTIPLE)
        this.initCommands(commandListener)
        this.setItemStateListener(newGameFeatureItemStateListener(this))
        this.addTextFieldsIfSimulated()

proc newGameOptionsForm*(commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameOptionsForm =
    result = GameOptionsForm()
    initGameOptionsForm(result, commandListener, title, backgrounBasicColor, foregroundBasicColor)

method closeClientInformation*(this: GameOptionsForm, abeClientInformation: AbeClientInformationInterface) {.base.} =
        procCall CommandForm(this).close()
        this.save(abeClientInformation)

method addTextFieldsIfSimulated*(this: GameOptionsForm) {.base.} =
        var key: string = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT
        let hashtable: ABHashtable = GameFeatureChoiceGroups.getExclusiveInstance().get()
        if (not jIsNil(hashtable)):
            var listCanBeNull: JObject = hashtable.get(key)
            if (not jIsNil(listCanBeNull)):
                let list: BasicArrayList = BasicArrayList(JObject(listCanBeNull))
                if list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS):
                    this.addTextFields()

method addTextFields*(this: GameOptionsForm) {.base.} =
        let hashtable: ABHashtable = GameConfigurationTextInput.getHashtable()
        let size: int32 = hashtable.size()
        let objectArray: JArray[JObject] = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var gameConfigurationTextInput: GameConfigurationTextInput = nil
        var textField: TextField = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                gameConfigurationTextInput = GameConfigurationTextInput(JObject(hashtable.get(JObject(JObject(objectArray[index])))))
                textField = newTextField(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField.ANY)
                this.meUtil.appendItem(this, textField)

method addConfiguration*(this: GameOptionsForm) {.base.} =
        let METHOD_NAME: string = "addConfiguration"
        let NAME: string = "Name: "
        let list: BasicArrayList = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList()
        let GAUGE_CHANGE: Command = MyCommandsFactory.getInstance().GAUGE_CHANGE
        let stringMaker: StringMaker = newStringMaker()
        let size: int32 = list.size()
        var gameConfiguration: GameConfiguration = nil
        var gauge: GameConfigurationGauge = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                gameConfiguration = GameConfiguration(JObject(list.objectArray[index]))
                stringMaker.delete(0, stringMaker.length())
                this.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), this, METHOD_NAME)
                gauge = newGameConfigurationGauge(gameConfiguration)
                gauge.setDefaultCommand(GAUGE_CHANGE)
                gauge.setItemCommandListener(newGameFeatureItemCommandListener(this))
                this.meUtil.appendItem(this, gauge)

method initCommands*(this: GameOptionsForm, cmdListener: CommandListener) =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.CLOSE_OPTIONS)
        this.addCommand(gameCommandsFactory.DEFAULT_OPTIONS)
        this.setCommandListener(cmdListener)

method save*(this: GameOptionsForm, abeClientInformation: AbeClientInformationInterface) {.base.} =
        let size: int32 = this.size()
        var item: Item = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                item = this.get(index)
                if (item of GameConfigurationGauge):
                    GameConfigurationUtil.getInstance().update(GameConfigurationGauge(JObject(item)))
                elif (item of TextField):
                    GameConfigurationTextInput.update(TextField(JObject(item)))
        GameConfigurationUtil.getInstance().updateCompetitionValue()
        let hashtable: ABHashtable = StdUtil.getInstance().createHashtable()
        let SCALE: GameConfiguration = GameConfigurationCentral.getInstance().SCALE
        hashtable.put(SCALE.getName(), jstr(SCALE.getValue().intValue()))
        let keyValuePersistance: KeyValuePersistance = GameConfigurationPersistanceSingleton.getInstance()
        keyValuePersistance.clear()
        keyValuePersistance.loadAll(abeClientInformation)
        let list: BasicArrayList = keyValuePersistance.getIds()
        keyValuePersistance.save(abeClientInformation, hashtable)
        let size2: int32 = list.size()
        var integer: int32 = nil
        block:
            var index: int32 = 0
            while index < size2:
                defer: index = index +% 1
                integer = jUnboxInteger(list.objectArray[index])
                keyValuePersistance.delete(abeClientInformation, integer.intValue())

when declared(newGameOptionsFormHook4):
    newGameOptionsFormHook4 = proc (commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm = newGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)

