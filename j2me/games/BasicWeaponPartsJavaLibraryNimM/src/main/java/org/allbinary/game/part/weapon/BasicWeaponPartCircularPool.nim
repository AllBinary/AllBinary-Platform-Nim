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
# package org.allbinary.game.part.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/part/weapon/BasicWeaponPart as BasicWeaponPartModule
export BasicWeaponPartModule
import org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface as BasicWeaponPartFactoryInterfaceModule
export BasicWeaponPartFactoryInterfaceModule

type
    BasicWeaponPartCircularPool* = ref object of JObject
        basicWeaponPart*: BasicWeaponPart

proc newBasicWeaponPartCircularPool*(): BasicWeaponPartCircularPool
method init*(this: BasicWeaponPartCircularPool, basicWeaponPartFactoryInterface: BasicWeaponPartFactoryInterface) {.base.}
method getInstance*(this: BasicWeaponPartCircularPool, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart {.base, discardable.}

var BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue: BasicWeaponPartCircularPool
var BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet = false
proc NULL_BASIC_WEAPON_PART_CIRCULAR_POOL*(t: typedesc[BasicWeaponPartCircularPool]): BasicWeaponPartCircularPool =
    if not BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet:
        BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet = true
        BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue = newBasicWeaponPartCircularPool()
    BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue

# Java field initializers run after the base initializer
proc initFieldsBasicWeaponPartCircularPool(this: BasicWeaponPartCircularPool) =
    this.basicWeaponPart = BasicWeaponPart.NULL_BASIC_WEAPON_PART
    discard

proc initBasicWeaponPartCircularPool*(this: BasicWeaponPartCircularPool) =
    this.initFieldsBasicWeaponPartCircularPool()

proc newBasicWeaponPartCircularPool*(): BasicWeaponPartCircularPool =
    result = BasicWeaponPartCircularPool()
    initBasicWeaponPartCircularPool(result)

method init*(this: BasicWeaponPartCircularPool, basicWeaponPartFactoryInterface: BasicWeaponPartFactoryInterface) {.base.} =
        this.basicWeaponPart = basicWeaponPartFactoryInterface.getInstance()

method getInstance*(this: BasicWeaponPartCircularPool, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart {.base, discardable.} =
        this.basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        return this.basicWeaponPart

