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
import javax/microedition/lcdui/Gauge as GaugeModule
export GaugeModule
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule

type
    GameConfigurationGauge* = ref object of Gauge

proc newGameConfigurationGauge*(gameConfiguration: GameConfiguration): GameConfigurationGauge
proc initGameConfigurationGauge*(this: GameConfigurationGauge, gameConfiguration: GameConfiguration)


proc initGameConfigurationGauge*(this: GameConfigurationGauge, gameConfiguration: GameConfiguration) =
        initGauge(this, gameConfiguration.getName(), gameConfiguration.isModifiable().booleanValue(), gameConfiguration.getMaxValue().intValue() - gameConfiguration.getMinValue().intValue(), gameConfiguration.getValue().intValue() - gameConfiguration.getMinValue().intValue())

proc newGameConfigurationGauge*(gameConfiguration: GameConfiguration): GameConfigurationGauge =
    result = GameConfigurationGauge()
    initGameConfigurationGauge(result, gameConfiguration)

when declared(newGameConfigurationGaugeHook1):
    newGameConfigurationGaugeHook1 = proc (gameConfiguration: GameConfiguration): Gauge = newGameConfigurationGauge(gameConfiguration)

