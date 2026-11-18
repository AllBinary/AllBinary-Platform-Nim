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
import org/allbinary/math/NoDecimalTrigTable as NoDecimalTrigTableModule
export NoDecimalTrigTableModule
import org/allbinary/game/part/weapon/BasicWeaponPart as BasicWeaponPartModule
export BasicWeaponPartModule

type
    StraightMultiProjectileWeaponPart* = ref object of BasicWeaponPart
        weaponLayerCircularStaticPool*: WeaponLayerCircularPool
        total*: int32
        noDecimalTrigTable*: NoDecimalTrigTable

proc newStraightMultiProjectileWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): StraightMultiProjectileWeaponPart
proc initStraightMultiProjectileWeaponPart*(this: StraightMultiProjectileWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship)
proc createStraightMultiProjectileWeaponPart*(t: typedesc[StraightMultiProjectileWeaponPart], animationInterface: Animation, weaponLayerCircularStaticPool: WeaponLayerCircularPool): StraightMultiProjectileWeaponPart {.discardable.}
method processScore*(this: StraightMultiProjectileWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface)
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule
import org/allbinary/game/score/NoScoreable as NoScoreableModule
export NoScoreableModule


# Java field initializers run after the base initializer
proc initFieldsStraightMultiProjectileWeaponPart(this: StraightMultiProjectileWeaponPart) =
    
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    discard

proc createStraightMultiProjectileWeaponPart*(t: typedesc[StraightMultiProjectileWeaponPart], animationInterface: Animation, weaponLayerCircularStaticPool: WeaponLayerCircularPool): StraightMultiProjectileWeaponPart {.discardable.} =
        return newStraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)

proc initStraightMultiProjectileWeaponPart*(this: StraightMultiProjectileWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship) =
        initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        this.initFieldsStraightMultiProjectileWeaponPart()
        this.total = total
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool

proc newStraightMultiProjectileWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): StraightMultiProjectileWeaponPart =
    result = StraightMultiProjectileWeaponPart()
    initStraightMultiProjectileWeaponPart(result, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)

method processScore*(this: StraightMultiProjectileWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface) =
        let sourceLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        let reducedWidth: int32 = (sourceLayerInterface.getWidth() *% 8 div 10)
        let halfWidth: int32 = (ashr(reducedWidth, 1))
        let x: int32 = this.relativeRelationship.getX()
        let y: int32 = this.relativeRelationship.getY()
        var sine: int64 = 0
        var beamX: int32 = 0
        var cosine: int64 = 0
        var beamY: int32 = 0
        var weaponLayer: WeaponLayer = nil
        let increment: int32 = reducedWidth div (this.total -% 1)
        var next: int32 = -halfWidth
        block:
            var index: int32 = 0
            while index < this.total:
                defer: index = index +% 1
                sine = (int64(next) *% this.noDecimalTrigTable.sin(int32(angle)))
                beamX = jToInt32((sine div int64(this.noDecimalTrigTable.SCALE)))
                cosine = (int64(next) *% this.noDecimalTrigTable.cos(int32(angle)))
                beamY = -jToInt32((cosine div int64(this.noDecimalTrigTable.SCALE)))
                weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x +% beamX, y +% beamY, 0, int32(angle), int32(otherAngle), weaponProperties, scoreableInterface)
                allbinaryLayerManager.append(weaponLayer)
                next = next +% increment

when declared(newStraightMultiProjectileWeaponPartHook7):
    newStraightMultiProjectileWeaponPartHook7 = proc (animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponLayerCircularStaticPool: WeaponLayerCircularPool, total: int32, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart = newStraightMultiProjectileWeaponPart(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)

