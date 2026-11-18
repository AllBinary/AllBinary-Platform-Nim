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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/layer/weapon/WeaponLayerCircularPool as WeaponLayerCircularPoolModule
export WeaponLayerCircularPoolModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/part/weapon/BasicWeaponPart as BasicWeaponPartModule
export BasicWeaponPartModule

type
    BasicProjectileWeaponPart* = ref object of BasicWeaponPart
        weaponLayerCircularStaticPool*: WeaponLayerCircularPool

proc newBasicProjectileWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicProjectileWeaponPart
proc initBasicProjectileWeaponPart*(this: BasicProjectileWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship)
proc createBasicProjectileWeaponPart*(t: typedesc[BasicProjectileWeaponPart], animationInterface: Animation, weaponLayerCircularStaticPool: WeaponLayerCircularPool): BasicProjectileWeaponPart {.discardable.}
method processScore*(this: BasicProjectileWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface)
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule
import org/allbinary/game/score/NoScoreable as NoScoreableModule
export NoScoreableModule


# Java field initializers run after the base initializer
proc initFieldsBasicProjectileWeaponPart(this: BasicProjectileWeaponPart) =
    
    discard

proc createBasicProjectileWeaponPart*(t: typedesc[BasicProjectileWeaponPart], animationInterface: Animation, weaponLayerCircularStaticPool: WeaponLayerCircularPool): BasicProjectileWeaponPart {.discardable.} =
        return newBasicProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)

proc initBasicProjectileWeaponPart*(this: BasicProjectileWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship) =
        initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        this.initFieldsBasicProjectileWeaponPart()
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool

proc newBasicProjectileWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicProjectileWeaponPart =
    result = BasicProjectileWeaponPart()
    initBasicProjectileWeaponPart(result, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)

method processScore*(this: BasicProjectileWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface) =
        let weaponLayer: WeaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), this.relativeRelationship.getZ(), int32(angle), int32(otherAngle), weaponProperties, scoreableInterface)
        allbinaryLayerManager.append(weaponLayer)

when declared(newBasicProjectileWeaponPartHook6):
    newBasicProjectileWeaponPartHook6 = proc (animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart = newBasicProjectileWeaponPart(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)

