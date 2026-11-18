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
# package org.allbinary.game.combat

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/combat/damage/DamageableBaseBehavior as DamageableBaseBehaviorModule
export DamageableBaseBehaviorModule
import org/allbinary/game/combat/destroy/DestroyableBaseBehavior as DestroyableBaseBehaviorModule
export DestroyableBaseBehaviorModule

type
    CombatBaseBehavior* = ref object of JObject
        damageableBaseBehavior*: DamageableBaseBehavior
        destroyableBaseBehavior*: DestroyableBaseBehavior
        readyForExplosion*: bool

proc newCombatBaseBehavior*(damageableBaseBehavior: DamageableBaseBehavior, destroyableBaseBehavior: DestroyableBaseBehavior): CombatBaseBehavior
proc initCombatBaseBehavior*(this: CombatBaseBehavior, damageableBaseBehavior: DamageableBaseBehavior, destroyableBaseBehavior: DestroyableBaseBehavior)
method getDamageableBaseBehavior*(this: CombatBaseBehavior): DamageableBaseBehavior {.base, discardable.}
method getDestroyableBaseBehavior*(this: CombatBaseBehavior): DestroyableBaseBehavior {.base, discardable.}
method isReadyForExplosion*(this: CombatBaseBehavior): bool {.base, discardable.}
method setReadyForExplosion*(this: CombatBaseBehavior, readyForExplosion: bool) {.base.}

var CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue: CombatBaseBehavior
var CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet = false
proc NULL_COMBAT_BEHAVIOR*(t: typedesc[CombatBaseBehavior]): CombatBaseBehavior =
    if not CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet:
        CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet = true
        CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue = newCombatBaseBehavior(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance())
    CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue

# Java field initializers run after the base initializer
proc initFieldsCombatBaseBehavior(this: CombatBaseBehavior) =
    
    
    this.readyForExplosion = false
    discard

proc initCombatBaseBehavior*(this: CombatBaseBehavior, damageableBaseBehavior: DamageableBaseBehavior, destroyableBaseBehavior: DestroyableBaseBehavior) =
        this.initFieldsCombatBaseBehavior()
        this.damageableBaseBehavior = damageableBaseBehavior
        this.destroyableBaseBehavior = destroyableBaseBehavior

proc newCombatBaseBehavior*(damageableBaseBehavior: DamageableBaseBehavior, destroyableBaseBehavior: DestroyableBaseBehavior): CombatBaseBehavior =
    result = CombatBaseBehavior()
    initCombatBaseBehavior(result, damageableBaseBehavior, destroyableBaseBehavior)

method getDamageableBaseBehavior*(this: CombatBaseBehavior): DamageableBaseBehavior {.base, discardable.} =
        return this.damageableBaseBehavior

method getDestroyableBaseBehavior*(this: CombatBaseBehavior): DestroyableBaseBehavior {.base, discardable.} =
        return this.destroyableBaseBehavior

method isReadyForExplosion*(this: CombatBaseBehavior): bool {.base, discardable.} =
        return this.readyForExplosion

method setReadyForExplosion*(this: CombatBaseBehavior, readyForExplosion: bool) {.base.} =
        this.readyForExplosion = readyForExplosion

