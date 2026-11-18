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
# package org.allbinary.game.combat.weapon

{.warning[UnusedImport]: off.}
import allbinary_java

type
    SimpleWeaponProperties* = ref object of JObject
        damage*: int32
        dissipation*: int16
        range*: int32

proc newSimpleWeaponProperties*(): SimpleWeaponProperties
method set*(this: SimpleWeaponProperties, simpleWeaponProperties: SimpleWeaponProperties) {.base.}
method setDamage*(this: SimpleWeaponProperties, damage: int32) {.base.}
method getDamage*(this: SimpleWeaponProperties): int32 {.base, discardable.}
method setDissipation*(this: SimpleWeaponProperties, dissipation: int16) {.base.}
method getDissipation*(this: SimpleWeaponProperties): int16 {.base, discardable.}
method getRange*(this: SimpleWeaponProperties): int32 {.base, discardable.}
method setRange*(this: SimpleWeaponProperties, range: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsSimpleWeaponProperties(this: SimpleWeaponProperties) =
    this.damage = 0
    this.dissipation = 0
    this.range = 0
    discard

proc initSimpleWeaponProperties*(this: SimpleWeaponProperties) =
    this.initFieldsSimpleWeaponProperties()

proc newSimpleWeaponProperties*(): SimpleWeaponProperties =
    result = SimpleWeaponProperties()
    initSimpleWeaponProperties(result)

method set*(this: SimpleWeaponProperties, simpleWeaponProperties: SimpleWeaponProperties) {.base.} =
        this.setDamage(simpleWeaponProperties.getDamage())
        this.setDissipation(simpleWeaponProperties.getDissipation())
        this.setRange(simpleWeaponProperties.getRange())

method setDamage*(this: SimpleWeaponProperties, damage: int32) {.base.} =
        this.damage = damage

method getDamage*(this: SimpleWeaponProperties): int32 {.base, discardable.} =
        return this.damage

method setDissipation*(this: SimpleWeaponProperties, dissipation: int16) {.base.} =
        this.dissipation = dissipation

method getDissipation*(this: SimpleWeaponProperties): int16 {.base, discardable.} =
        return this.dissipation

method getRange*(this: SimpleWeaponProperties): int32 {.base, discardable.} =
        return this.range

method setRange*(this: SimpleWeaponProperties, range: int32) {.base.} =
        this.range = range

