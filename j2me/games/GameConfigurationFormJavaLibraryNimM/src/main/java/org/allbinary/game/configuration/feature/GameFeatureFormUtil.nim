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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/ChoiceGroup as ChoiceGroupModule
export ChoiceGroupModule
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    GameFeatureFormUtil* = ref object of JObject
        logUtil*: LogUtil
        meUtil*: MIDPUtil

proc newGameFeatureFormUtil*(): GameFeatureFormUtil
proc getInstance*(t: typedesc[GameFeatureFormUtil]): GameFeatureFormUtil {.discardable.}
method getChoiceGroup*(this: GameFeatureFormUtil, hashtable: ABHashtable, name: string, option: int32): ChoiceGroup {.base, discardable.}
method addChoiceGroup*(this: GameFeatureFormUtil, form: CommandForm, hashtable: ABHashtable, option: int32) {.base.}
method setDefault*(this: GameFeatureFormUtil, form: CommandForm) {.base.}
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/game/configuration/GameConfigurationGauge as GameConfigurationGaugeModule
export GameConfigurationGaugeModule
import org/allbinary/game/configuration/GameConfigurationUtil as GameConfigurationUtilModule
export GameConfigurationUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule
import org/allbinary/game/configuration/feature/GameFeatureUtil as GameFeatureUtilModule
export GameFeatureUtilModule

var GameFeatureFormUtil_instanceValue: GameFeatureFormUtil
var GameFeatureFormUtil_instanceSet = false
proc instance*(t: typedesc[GameFeatureFormUtil]): GameFeatureFormUtil =
    if not GameFeatureFormUtil_instanceSet:
        GameFeatureFormUtil_instanceSet = true
        GameFeatureFormUtil_instanceValue = newGameFeatureFormUtil()
    GameFeatureFormUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameFeatureFormUtil(this: GameFeatureFormUtil) =
    this.logUtil = LogUtil.getInstance()
    this.meUtil = MIDPUtil.getInstance()
    discard

proc initGameFeatureFormUtil*(this: GameFeatureFormUtil) =
    this.initFieldsGameFeatureFormUtil()

proc newGameFeatureFormUtil*(): GameFeatureFormUtil =
    result = GameFeatureFormUtil()
    initGameFeatureFormUtil(result)

proc getInstance*(t: typedesc[GameFeatureFormUtil]): GameFeatureFormUtil {.discardable.} =
        return GameFeatureFormUtil.instance

method getChoiceGroup*(this: GameFeatureFormUtil, hashtable: ABHashtable, name: string, option: int32): ChoiceGroup {.base, discardable.} =
        let stringMaker: StringMaker = newStringMaker()
        let choiceGroup: ChoiceGroup = newChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        let list: BasicArrayList = BasicArrayList(JObject(hashtable.get(JObject(JObject(name)))))
        let features: Features = Features.getInstance()
        let ADD_CHOICE: string = ": Adding Choice: "
        let GET_CHOICE_GROUP: string = "getChoiceGroup"
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let gameFeature: Feature = Feature(JObject(list.objectArray[index]))
                stringMaker.delete(0, stringMaker.length())
                this.logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), this, GET_CHOICE_GROUP)
                choiceGroup.append(gameFeature.toString(), NullImage.NULL_IMAGEStatic)
                if features.isFeature(gameFeature):
                    choiceGroup.setSelectedIndex(index, true)
        return choiceGroup

method addChoiceGroup*(this: GameFeatureFormUtil, form: CommandForm, hashtable: ABHashtable, option: int32) {.base.} =
        let stringMaker: StringMaker = newStringMaker()
        let ADDING_CHOICE_GROUP: string = "Adding Choice Group: "
        let ADD_CHOICE_GROUP: string = "addChoiceGroup"
        let size: int32 = hashtable.size()
        let objectArray: JArray[JObject] = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var name: string = ""
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                name = jstr(objectArray[index])
                stringMaker.delete(0, stringMaker.length())
                this.logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), this, ADD_CHOICE_GROUP)
                this.meUtil.appendItem(form, this.getChoiceGroup(hashtable, name, option))

method setDefault*(this: GameFeatureFormUtil, form: CommandForm) {.base.} =
        let size: int32 = form.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var item: Item = form.get(index)
                if (item of GameConfigurationGauge):
                    GameConfigurationUtil.getInstance().setDefault(GameConfigurationGauge(JObject(item)))
                elif (item of ChoiceGroup):
                    GameFeatureUtil.getInstance().setDefault(ChoiceGroup(JObject(item)))

