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
# package org.allbinary.game.combat.damage

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/NamedInterface as NamedInterfaceModule
export NamedInterfaceModule

type
    DamageableInterface* = ref object of NamedInterface


method damage*(this: DamageableInterface, damage: int32, damageType: int32) {.base.} =
        raise newJException("AbstractMethodError", "damage")

method getDamage*(this: DamageableInterface, damageType: int32): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getDamage")

