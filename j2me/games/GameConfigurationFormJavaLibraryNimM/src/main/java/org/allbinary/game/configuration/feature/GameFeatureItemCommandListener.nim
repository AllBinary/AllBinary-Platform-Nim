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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import javax/microedition/lcdui/ItemCommandListener as ItemCommandListenerModule
export ItemCommandListenerModule
import org/allbinary/game/configuration/GameOptionsForm as GameOptionsFormModule
export GameOptionsFormModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    GameFeatureItemCommandListener* = ref object of ItemCommandListener
        logUtil*: LogUtil
        gameOptionsForm*: GameOptionsForm

proc newGameFeatureItemCommandListener*(gameOptionsForm: GameOptionsForm): GameFeatureItemCommandListener
proc initGameFeatureItemCommandListener*(this: GameFeatureItemCommandListener, gameOptionsForm: GameOptionsForm)
method commandAction*(this: GameFeatureItemCommandListener, command: Command, item: Item)
import org/allbinary/game/configuration/GameConfigurationGauge as GameConfigurationGaugeModule
export GameConfigurationGaugeModule
import org/allbinary/game/configuration/GameConfigurationUtil as GameConfigurationUtilModule
export GameConfigurationUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/midlet/MidletStrings as MidletStringsModule
export MidletStringsModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsGameFeatureItemCommandListener(this: GameFeatureItemCommandListener) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initGameFeatureItemCommandListener*(this: GameFeatureItemCommandListener, gameOptionsForm: GameOptionsForm) =
        this.initFieldsGameFeatureItemCommandListener()
        this.gameOptionsForm = gameOptionsForm

proc newGameFeatureItemCommandListener*(gameOptionsForm: GameOptionsForm): GameFeatureItemCommandListener =
    result = GameFeatureItemCommandListener()
    initGameFeatureItemCommandListener(result, gameOptionsForm)

method commandAction*(this: GameFeatureItemCommandListener, command: Command, item: Item) =
        try:
            var itemLabel: string = item.getLabel()
            this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, MidletStrings.getInstance().COMMAND_ACTION)
            if (item of GameConfigurationGauge):
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, GameConfigurationGauge(JObject(item)))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, MidletStrings.getInstance().COMMAND_ACTION, e)

