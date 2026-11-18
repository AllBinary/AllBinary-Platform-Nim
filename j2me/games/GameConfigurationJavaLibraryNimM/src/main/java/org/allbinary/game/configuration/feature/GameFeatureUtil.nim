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
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import javax/microedition/lcdui/ChoiceGroup as ChoiceGroupModule
export ChoiceGroupModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule

type
    GameFeatureUtil* = ref object of JObject
        logUtil*: LogUtil
        tsUtil*: TsUtil
        enumerationUtil*: EnumerationUtil
        ON_GAME_FEATURE_CHANGE*: string
        GAME_FEATURE_CHANGED*: string

proc newGameFeatureUtil*(): GameFeatureUtil
proc getInstance*(t: typedesc[GameFeatureUtil]): GameFeatureUtil {.discardable.}
method setDefault*(this: GameFeatureUtil, choiceGroup: ChoiceGroup) {.base.}
method updateMultiple*(this: GameFeatureUtil, choiceGroup: ChoiceGroup) {.base.}
method updateExclusiveForChoiceGroup*(this: GameFeatureUtil, choiceGroup: ChoiceGroup) {.base.}
method isExclusive*(this: GameFeatureUtil, itemLabel: string): bool {.base, discardable.}
method updateExclusive*(this: GameFeatureUtil, selectedChoiceLabel: string) {.base.}
method updateExclusiveList*(this: GameFeatureUtil, gameFeature: Feature, list: BasicArrayList) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureChoiceGroups as GameFeatureChoiceGroupsModule
export GameFeatureChoiceGroupsModule

var GameFeatureUtil_instanceValue: GameFeatureUtil
var GameFeatureUtil_instanceSet = false
proc instance*(t: typedesc[GameFeatureUtil]): GameFeatureUtil =
    if not GameFeatureUtil_instanceSet:
        GameFeatureUtil_instanceSet = true
        GameFeatureUtil_instanceValue = newGameFeatureUtil()
    GameFeatureUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameFeatureUtil(this: GameFeatureUtil) =
    this.logUtil = LogUtil.getInstance()
    this.tsUtil = TsUtil.getInstance()
    this.enumerationUtil = EnumerationUtil.getInstance()
    this.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange"
    this.GAME_FEATURE_CHANGED = "Game Feature Changed: "
    discard

proc initGameFeatureUtil*(this: GameFeatureUtil) =
    this.initFieldsGameFeatureUtil()

proc newGameFeatureUtil*(): GameFeatureUtil =
    result = GameFeatureUtil()
    initGameFeatureUtil(result)

proc getInstance*(t: typedesc[GameFeatureUtil]): GameFeatureUtil {.discardable.} =
        return GameFeatureUtil.instance

method setDefault*(this: GameFeatureUtil, choiceGroup: ChoiceGroup) {.base.} =
        var stringBuffer: StringMaker = newStringMaker()
        let METHOD_NAME: string = "setDefault"
        let SELECTED_ARRAY_RETURN: string = "selectedArray_return["
        let SELECTED_SEP: string = "] = "
        var selectedArray_return: JArray[bool] = newJArray[bool](choiceGroup.size(), default(bool))
        var total: int32 = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
        var features: Features = Features.getInstance()
        block:
            var index: int32 = 0
            while index < selectedArray_return.length:
                defer: index = index +% 1
                var isSelected: bool = selectedArray_return[index]
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(SELECTED_ARRAY_RETURN)
                stringBuffer.appendint(index)
                stringBuffer.append(SELECTED_SEP)
                stringBuffer.appendboolean(isSelected)
                this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
                var selectedChoiceLabel: string = choiceGroup.getString(index)
                var gameFeature: Feature = Feature.getInstance(selectedChoiceLabel)
                if features.isDefault(gameFeature):
                    features.add(gameFeature)
                    choiceGroup.setSelectedIndex(index, true)
                else:
                    features.remove(gameFeature)
                    choiceGroup.setSelectedIndex(index, false)

method updateMultiple*(this: GameFeatureUtil, choiceGroup: ChoiceGroup) {.base.} =
        var stringBuffer: StringMaker = newStringMaker()
        let METHOD_NAME: string = "updateMultiple"
        let SELECTED_ARRAY_RETURN: string = "selectedArray_return["
        let SELECTED_SEP: string = "] = "
        var selectedArray_return: JArray[bool] = newJArray[bool](choiceGroup.size(), default(bool))
        var total: int32 = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
        var features: Features = Features.getInstance()
        block:
            var index: int32 = 0
            while index < selectedArray_return.length:
                defer: index = index +% 1
                var isSelected: bool = selectedArray_return[index]
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(SELECTED_ARRAY_RETURN)
                stringBuffer.appendint(index)
                stringBuffer.append(SELECTED_SEP)
                stringBuffer.appendboolean(isSelected)
                this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
                var selectedChoiceLabel: string = choiceGroup.getString(index)
                var gameFeature: Feature = Feature.getInstance(selectedChoiceLabel)
                if (not isSelected) and features.isFeature(gameFeature):
                    features.remove(gameFeature)
                elif isSelected and (not features.isFeature(gameFeature)):
                    features.add(gameFeature)

method updateExclusiveForChoiceGroup*(this: GameFeatureUtil, choiceGroup: ChoiceGroup) {.base.} =
        var stringBuffer: StringMaker = newStringMaker()
        let METHOD_NAME: string = "updateExclusive"
        let SELECTED_ARRAY_RETURN: string = "selectedArray_return["
        let SELECTED_SEP: string = "] = "
        var selectedArray_return: JArray[bool] = newJArray[bool](choiceGroup.size(), default(bool))
        var total: int32 = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Exclusive Total Choices: 1==")
        stringBuffer.appendint(total)
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
        block:
            var index: int32 = 0
            while index < selectedArray_return.length:
                defer: index = index +% 1
                var isSelected: bool = selectedArray_return[index]
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(SELECTED_ARRAY_RETURN)
                stringBuffer.appendint(index)
                stringBuffer.append(SELECTED_SEP)
                stringBuffer.appendboolean(isSelected)
                this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
                if isSelected:
                    var selectedChoiceLabel: string = choiceGroup.getString(index)
                    this.updateExclusive(selectedChoiceLabel)

method isExclusive*(this: GameFeatureUtil, itemLabel: string): bool {.base, discardable.} =
        let enumeration: Enumeration = GameFeatureChoiceGroups.getExclusiveInstance().get().keys()
        var name: string = ""
        while this.enumerationUtil.hasMoreElements(enumeration):
            name = jstr(this.enumerationUtil.nextElement(enumeration))
            if this.tsUtil.compareTo(itemLabel, name) == 0:
                return true
        return false

method updateExclusive*(this: GameFeatureUtil, selectedChoiceLabel: string) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), this, "updateExclusive")
        let gameFeature: Feature = Feature.getInstance(selectedChoiceLabel)
        let hashtable: ABHashtable = GameFeatureChoiceGroups.getExclusiveInstance().get()
        let objectArray: JArray[JObject] = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var basicArrayList: BasicArrayList = nil
        var anyType: JObject = nil
        var size: int32 = objectArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                anyType = JObject(JObject(objectArray[index]))
                basicArrayList = BasicArrayList(JObject(hashtable.get(anyType)))
                this.updateExclusiveList(gameFeature, basicArrayList)

method updateExclusiveList*(this: GameFeatureUtil, gameFeature: Feature, list: BasicArrayList) {.base.} =
        if list.contains(gameFeature):
            var features: Features = Features.getInstance()
            var addIndex: int32 = list.indexOf(gameFeature)
            var size: int32 = list.size()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    if addIndex != index:
                        features.remove(Feature(JObject(list.objectArray[index])))
                    else:
                        features.add(Feature(JObject(list.objectArray[index])))

