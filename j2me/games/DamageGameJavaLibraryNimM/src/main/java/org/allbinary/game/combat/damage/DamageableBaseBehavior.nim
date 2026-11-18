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
import org/allbinary/game/combat/damage/DamageableInterface as DamageableInterfaceModule
export DamageableInterfaceModule

type
    DamageableBaseBehavior* = ref object of DamageableInterface

proc newDamageableBaseBehavior*(): DamageableBaseBehavior
proc getInstance*(t: typedesc[DamageableBaseBehavior]): DamageableBaseBehavior {.discardable.}
method getName*(this: DamageableBaseBehavior): string {.discardable.}
method damage*(this: DamageableBaseBehavior, damage: int32, damageType: int32)
method getDamage*(this: DamageableBaseBehavior, damageType: int32): int32 {.discardable.}

var DamageableBaseBehavior_instanceValue: DamageableBaseBehavior
var DamageableBaseBehavior_instanceSet = false
proc instance*(t: typedesc[DamageableBaseBehavior]): DamageableBaseBehavior =
    if not DamageableBaseBehavior_instanceSet:
        DamageableBaseBehavior_instanceSet = true
        DamageableBaseBehavior_instanceValue = newDamageableBaseBehavior()
    DamageableBaseBehavior_instanceValue

proc initDamageableBaseBehavior*(this: DamageableBaseBehavior) =
    discard

proc newDamageableBaseBehavior*(): DamageableBaseBehavior =
    result = DamageableBaseBehavior()
    initDamageableBaseBehavior(result)

proc getInstance*(t: typedesc[DamageableBaseBehavior]): DamageableBaseBehavior {.discardable.} =
        return DamageableBaseBehavior.instance

method getName*(this: DamageableBaseBehavior): string {.discardable.} =
        return jClassName(this)

method damage*(this: DamageableBaseBehavior, damage: int32, damageType: int32) =
        discard

method getDamage*(this: DamageableBaseBehavior, damageType: int32): int32 {.discardable.} =
        return 6000

