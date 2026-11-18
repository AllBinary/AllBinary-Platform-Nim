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

type
    GameSpeed* = ref object of JObject

proc newGameSpeed*(): GameSpeed
method getSpeed*(this: GameSpeed): int32 {.base, discardable.}
method getDelay*(this: GameSpeed): int32 {.base, discardable.}
proc getInstance*(t: typedesc[GameSpeed]): GameSpeed {.discardable.}
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule

var GameSpeed_instanceValue: GameSpeed
var GameSpeed_instanceSet = false
proc instance*(t: typedesc[GameSpeed]): GameSpeed =
    if not GameSpeed_instanceSet:
        GameSpeed_instanceSet = true
        GameSpeed_instanceValue = newGameSpeed()
    GameSpeed_instanceValue

proc initGameSpeed*(this: GameSpeed) =
    discard

proc newGameSpeed*(): GameSpeed =
    result = GameSpeed()
    initGameSpeed(result)

method getSpeed*(this: GameSpeed): int32 {.base, discardable.} =
        var speedGameConfiguration: GameConfiguration = GameConfigurationCentral.getInstance().SPEED
        return (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue() +% 1)

method getDelay*(this: GameSpeed): int32 {.base, discardable.} =
        var speedGameConfiguration: GameConfiguration = GameConfigurationCentral.getInstance().SPEED
        return 19 *% (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue())

proc getInstance*(t: typedesc[GameSpeed]): GameSpeed {.discardable.} =
        return GameSpeed.instance

