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
# package org.allbinary.game.health

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/health/HealthListenerInterface as HealthListenerInterfaceModule
export HealthListenerInterfaceModule

type
    HealthInterface* = ref object of JObject


method isAlive*(this: HealthInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isAlive")

method damage*(this: HealthInterface, ahealth: int32) {.base.} =
        raise newJException("AbstractMethodError", "damage")

method heal*(this: HealthInterface, ahealth: int32) {.base.} =
        raise newJException("AbstractMethodError", "heal")

method healMax*(this: HealthInterface) {.base.} =
        raise newJException("AbstractMethodError", "healMax")

method getMaxHealth*(this: HealthInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMaxHealth")

method setMaxHealth*(this: HealthInterface, maxHealth: int32) {.base.} =
        raise newJException("AbstractMethodError", "setMaxHealth")

method getHealth*(this: HealthInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHealth")

method addListener*(this: HealthInterface, healthListenerInterface: HealthListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "addListener")

