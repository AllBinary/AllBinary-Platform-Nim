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
    ArcedMultiBeamWeaponPart* = ref object of BasicWeaponPart
        weaponLayerCircularStaticPool*: WeaponLayerCircularPool
        total*: int32
        TOTAL_ANGLE*: int32

proc newArcedMultiBeamWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): ArcedMultiBeamWeaponPart
proc initArcedMultiBeamWeaponPart*(this: ArcedMultiBeamWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship)
method processScore*(this: ArcedMultiBeamWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface)
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


# Java field initializers run after the base initializer
proc initFieldsArcedMultiBeamWeaponPart(this: ArcedMultiBeamWeaponPart) =
    
    
    this.TOTAL_ANGLE = int32(AngleFactory.getInstance().TOTAL_ANGLE)
    discard

proc initArcedMultiBeamWeaponPart*(this: ArcedMultiBeamWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship) =
        initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        this.initFieldsArcedMultiBeamWeaponPart()
        this.total = total
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool

proc newArcedMultiBeamWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): ArcedMultiBeamWeaponPart =
    result = ArcedMultiBeamWeaponPart()
    initArcedMultiBeamWeaponPart(result, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)

method processScore*(this: ArcedMultiBeamWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface) =
        let increment: int16 = jToInt16(((this.total -% 1) div this.TOTAL_ANGLE))
        let minAngle: int16 = jToInt16((int32(angle) -% (ashr((int32(increment) *% this.total), 1))))
        var next: int32 = 0
        var weaponLayer: WeaponLayer = nil
        block:
            var index: int32 = 0
            while index < this.total:
                defer: index = index +% 1
                weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), 0, (minAngle +% increment), int32(otherAngle), weaponProperties, scoreableInterface)
                allbinaryLayerManager.append(weaponLayer)
                next = next +% int32(increment)

when declared(newArcedMultiBeamWeaponPartHook7):
    newArcedMultiBeamWeaponPartHook7 = proc (animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart = newArcedMultiBeamWeaponPart(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)

