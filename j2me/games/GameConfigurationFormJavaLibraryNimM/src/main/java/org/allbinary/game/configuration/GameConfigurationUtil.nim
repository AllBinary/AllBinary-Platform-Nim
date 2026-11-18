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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule
import org/allbinary/game/configuration/GameOptionsForm as GameOptionsFormModule
export GameOptionsFormModule
import org/allbinary/game/configuration/GameConfigurationGauge as GameConfigurationGaugeModule
export GameConfigurationGaugeModule

type
    GameConfigurationUtil* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        GAUGE_UPDATE*: string
        FROM*: string
        TO*: string
        COMPETITION_VALUE*: int32

proc newGameConfigurationUtil*(): GameConfigurationUtil
proc getInstance*(t: typedesc[GameConfigurationUtil]): GameConfigurationUtil {.discardable.}
method change*(this: GameConfigurationUtil, gameOptionsForm: GameOptionsForm, gauge: GameConfigurationGauge) {.base.}
method update*(this: GameConfigurationUtil, gauge: GameConfigurationGauge) {.base.}
method setDefault*(this: GameConfigurationUtil, gauge: GameConfigurationGauge) {.base.}
method updateChallange*(this: GameConfigurationUtil, gameOptionsForm: GameOptionsForm, gameConfiguration: GameConfiguration) {.base.}
method updateCompetitionValue*(this: GameConfigurationUtil) {.base.}
method getCompetitionValue*(this: GameConfigurationUtil): int32 {.base, discardable.}
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/game/configuration/GameConfigurationSingleton as GameConfigurationSingletonModule
export GameConfigurationSingletonModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule

var GameConfigurationUtil_instanceValue: GameConfigurationUtil
var GameConfigurationUtil_instanceSet = false
proc instance*(t: typedesc[GameConfigurationUtil]): GameConfigurationUtil =
    if not GameConfigurationUtil_instanceSet:
        GameConfigurationUtil_instanceSet = true
        GameConfigurationUtil_instanceValue = newGameConfigurationUtil()
    GameConfigurationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameConfigurationUtil(this: GameConfigurationUtil) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.GAUGE_UPDATE = "Gauge Update: "
    this.FROM = " from: "
    this.TO = " to: "
    this.COMPETITION_VALUE = 1
    discard

proc initGameConfigurationUtil*(this: GameConfigurationUtil) =
    this.initFieldsGameConfigurationUtil()

proc newGameConfigurationUtil*(): GameConfigurationUtil =
    result = GameConfigurationUtil()
    initGameConfigurationUtil(result)

proc getInstance*(t: typedesc[GameConfigurationUtil]): GameConfigurationUtil {.discardable.} =
        return GameConfigurationUtil.instance

method change*(this: GameConfigurationUtil, gameOptionsForm: GameOptionsForm, gauge: GameConfigurationGauge) {.base.} =
        this.update(gauge)
        var gameConfigurationSingleton: GameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfiguration: GameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        this.updateChallange(gameOptionsForm, gameConfiguration)

method update*(this: GameConfigurationUtil, gauge: GameConfigurationGauge) {.base.} =
        var gameConfigurationSingleton: GameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfiguration: GameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var value: int32 = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().intValue())
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.GAUGE_UPDATE)
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(this.FROM)
        stringBuffer.appendint(int32(gameConfiguration.getValue().intValue()))
        stringBuffer.append(this.TO)
        stringBuffer.appendint(int32(value.intValue()))
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.UPDATE)
        gameConfiguration.setValue(value)

method setDefault*(this: GameConfigurationUtil, gauge: GameConfigurationGauge) {.base.} =
        var gameConfigurationSingleton: GameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfiguration: GameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Gauge Default: ")
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(this.TO)
        stringBuffer.appendint(int32(gameConfiguration.getDefaultValue().intValue()))
        this.logUtil.putF(stringBuffer.toString(), this, "setDefault")
        gauge.setValue(gameConfiguration.getDefaultValue().intValue() - gameConfiguration.getMinValue().intValue())
        gameConfiguration.setValue(gameConfiguration.getDefaultValue())

method updateChallange*(this: GameConfigurationUtil, gameOptionsForm: GameOptionsForm, gameConfiguration: GameConfiguration) {.base.} =
        var gameConfigurationSingleton: GameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfigurationCentral: GameConfigurationCentral = GameConfigurationCentral.getInstance()
        if gameConfiguration == gameConfigurationCentral.CHALLENGE_LEVEL:
            this.logUtil.putF(this.commonStrings.START, this, "updateChallange")
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            let size: int32 = gameOptionsForm.size()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    var item: Item = gameOptionsForm.get(index)
                    if (item of GameConfigurationGauge):
                        var gauge: GameConfigurationGauge = GameConfigurationGauge(JObject(item))
                        var name: string = item.getLabel()
                        var nextGameConfiguration: GameConfiguration = gameConfigurationSingleton.getInstanceByName(name)
                        if nextGameConfiguration == gameConfigurationCentral.COLLIDE_DAMAGE:
                            gauge.setValue(gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                        elif nextGameConfiguration == gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL:
                            gauge.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                        elif nextGameConfiguration == gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL:
                            gauge.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue())
                        elif nextGameConfiguration == gameConfigurationCentral.SPEED_CHALLENGE_LEVEL:
                            gauge.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue())

method updateCompetitionValue*(this: GameConfigurationUtil) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, "updateCompetitionValue")
        var gameConfigurationCentral: GameConfigurationCentral = GameConfigurationCentral.getInstance()
        this.COMPETITION_VALUE = gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue()
        this.COMPETITION_VALUE = (ashr(this.COMPETITION_VALUE, 2))

method getCompetitionValue*(this: GameConfigurationUtil): int32 {.base, discardable.} =
        return this.COMPETITION_VALUE

