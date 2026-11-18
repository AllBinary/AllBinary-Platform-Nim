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
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import javax/microedition/lcdui/ItemStateListener as ItemStateListenerModule
export ItemStateListenerModule
import org/allbinary/game/configuration/GameOptionsForm as GameOptionsFormModule
export GameOptionsFormModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/configuration/feature/GameFeature as GameFeatureModule
export GameFeatureModule

type
    GameFeatureItemStateListener* = ref object of ItemStateListener
        logUtil*: LogUtil
        gameOptionsForm*: GameOptionsForm

proc newGameFeatureItemStateListener*(gameOptionsForm: GameOptionsForm): GameFeatureItemStateListener
proc initGameFeatureItemStateListener*(this: GameFeatureItemStateListener, gameOptionsForm: GameOptionsForm)
proc add*(t: typedesc[GameFeatureItemStateListener], gameFeature: GameFeature)
method itemStateChanged*(this: GameFeatureItemStateListener, item: Item)
import javax/microedition/lcdui/ChoiceGroup as ChoiceGroupModule
export ChoiceGroupModule
import org/allbinary/game/configuration/GameConfigurationGauge as GameConfigurationGaugeModule
export GameConfigurationGaugeModule
import org/allbinary/game/configuration/GameConfigurationUtil as GameConfigurationUtilModule
export GameConfigurationUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/game/configuration/feature/GameFeatureUtil as GameFeatureUtilModule
export GameFeatureUtilModule

var GameFeatureItemStateListener_toggleListValue: BasicArrayList
var GameFeatureItemStateListener_toggleListSet = false
proc toggleList*(t: typedesc[GameFeatureItemStateListener]): BasicArrayList =
    if not GameFeatureItemStateListener_toggleListSet:
        GameFeatureItemStateListener_toggleListSet = true
        GameFeatureItemStateListener_toggleListValue = newBasicArrayListD()
    GameFeatureItemStateListener_toggleListValue
proc `toggleList=`*(t: typedesc[GameFeatureItemStateListener], value: BasicArrayList) =
    GameFeatureItemStateListener_toggleListSet = true
    GameFeatureItemStateListener_toggleListValue = value

# Java field initializers run after the base initializer
proc initFieldsGameFeatureItemStateListener(this: GameFeatureItemStateListener) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initGameFeatureItemStateListener*(this: GameFeatureItemStateListener, gameOptionsForm: GameOptionsForm) =
        this.initFieldsGameFeatureItemStateListener()
        this.gameOptionsForm = gameOptionsForm
        var gameFeatureFactory: GameFeatureFactory = GameFeatureFactory.getInstance()
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS)
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS)
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS)
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND)
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)

proc newGameFeatureItemStateListener*(gameOptionsForm: GameOptionsForm): GameFeatureItemStateListener =
    result = GameFeatureItemStateListener()
    initGameFeatureItemStateListener(result, gameOptionsForm)

proc add*(t: typedesc[GameFeatureItemStateListener], gameFeature: GameFeature) =
        if (not GameFeatureItemStateListener.toggleList.contains(gameFeature)):
            GameFeatureItemStateListener.toggleList.add(gameFeature)

method itemStateChanged*(this: GameFeatureItemStateListener, item: Item) =
        try:
            var itemLabel: string = item.getLabel()
            this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged")
            if (item of GameConfigurationGauge):
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, GameConfigurationGauge(JObject(item)))
            elif (item of ChoiceGroup):
                var gameFeatureUtil: GameFeatureUtil = GameFeatureUtil.getInstance()
                if gameFeatureUtil.isExclusive(itemLabel):
                    gameFeatureUtil.updateExclusiveForChoiceGroup(ChoiceGroup(JObject(item)))
                else:
                    gameFeatureUtil.updateMultiple(ChoiceGroup(JObject(item)))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "itemStateChanged", e)

