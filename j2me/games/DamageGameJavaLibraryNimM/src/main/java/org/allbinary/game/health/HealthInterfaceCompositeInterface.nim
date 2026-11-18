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
import org/allbinary/game/health/Health as HealthModule
export HealthModule

type
    HealthInterfaceCompositeInterface* = ref object of JObject


method getHealthInterface*(this: HealthInterfaceCompositeInterface): Health {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHealthInterface")

