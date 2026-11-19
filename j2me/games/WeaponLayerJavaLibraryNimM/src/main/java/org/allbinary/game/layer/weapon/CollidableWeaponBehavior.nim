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
# package org.allbinary.game.layer.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/game/collision/CollisionHelper as CollisionHelperModule
export CollisionHelperModule
import org/allbinary/game/collision/CollisionType as CollisionTypeModule
export CollisionTypeModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior as CollidableDestroyableDamageableBehaviorModule
export CollidableDestroyableDamageableBehaviorModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    CollidableWeaponBehavior* = ref object of CollidableDestroyableDamageableBehavior
        collided*: bool
        collisionHelper*: CollisionHelper

proc newCollidableWeaponBehavior*(collidable: bool): CollidableWeaponBehavior
proc initCollidableWeaponBehavior*(this: CollidableWeaponBehavior, collidable: bool)
proc getNullInstance*(t: typedesc[CollidableWeaponBehavior]): CollidableWeaponBehavior {.discardable.}
method init*(this: CollidableWeaponBehavior, sourceLayerInterface: AllBinaryLayer) {.base.}
method isCollision*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.}
method collide*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer)
method isCollisionInterface*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.}
method collideInterface*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface)
method getCollisionTypeWith*(this: CollidableWeaponBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.}
method isCollided*(this: CollidableWeaponBehavior): bool {.base, discardable.}
method setCollided*(this: CollidableWeaponBehavior, collided: bool) {.base.}
import org/allbinary/game/collision/CollidableHelperFactory as CollidableHelperFactoryModule
export CollidableHelperFactoryModule
import org/allbinary/game/collision/CollisionTypeFactory as CollisionTypeFactoryModule
export CollisionTypeFactoryModule
import org/allbinary/game/combat/damage/DamageableInterface as DamageableInterfaceModule
export DamageableInterfaceModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue: JObject
var CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet = false
proc NULL_COLLIDABLE_WEAPON_BEHAVIOR*(t: typedesc[CollidableWeaponBehavior]): JObject =
    if not CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet:
        CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet = true
        CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue = NullUtil.getInstance().NULL_OBJECT
    CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue
proc `NULL_COLLIDABLE_WEAPON_BEHAVIOR=`*(t: typedesc[CollidableWeaponBehavior], value: JObject) =
    CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet = true
    CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue = value

# Java field initializers run after the base initializer
proc initFieldsCollidableWeaponBehavior(this: CollidableWeaponBehavior) =
    this.collided = false
    
    discard

proc getNullInstance*(t: typedesc[CollidableWeaponBehavior]): CollidableWeaponBehavior {.discardable.} =
        if CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT:
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = newCollidableWeaponBehavior(false)
        return CollidableWeaponBehavior(JObject(CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR))

proc initCollidableWeaponBehavior*(this: CollidableWeaponBehavior, collidable: bool) =
        initCollidableDestroyableDamageableBehavior(this, collidable)
        this.initFieldsCollidableWeaponBehavior()
        this.setCollided(false)
        this.setCollidable(true)
        this.collisionHelper = CollidableHelperFactory.getInstance()

proc newCollidableWeaponBehavior*(collidable: bool): CollidableWeaponBehavior =
    result = CollidableWeaponBehavior()
    initCollidableWeaponBehavior(result, collidable)

method init*(this: CollidableWeaponBehavior, sourceLayerInterface: AllBinaryLayer) {.base.} =
        this.setCollided(false)
        this.collisionHelper.setOwnerLayerInterface(sourceLayerInterface)

method isCollision*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.} =
        if this.collisionHelper.isCollidable(collisionLayer):
            if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]:
                return procCall CollidableDestroyableDamageableBehavior(this).isCollision(ownerLayer, collisionLayer)
        return false

method collide*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer) =
        jSuperStatement(procCall CollidableDestroyableDamageableBehavior(this).collide(ownerLayer, collisionLayer))
        this.collided = true

method isCollisionInterface*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.} =
        if this.collisionHelper.isCollidable(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface))):
            let layerInterface: AllBinaryLayer = AllBinaryLayer(JObject(collidableInterfaceCompositeInterface))
            if ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]:
                if this.layerCollisionUtil.isCollision(ownerLayer, layerInterface):
                    return true
        return false

method collideInterface*(this: CollidableWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) =
        let ownerDamageableInterface: DamageableInterface = DamageableInterface(JObject(ownerLayer))
        let damageableInterface: DamageableInterface = DamageableInterface(JObject(collidableInterfaceCompositeInterface))
        this.damageUtil.process(ownerDamageableInterface, damageableInterface)
        this.collided = true

method getCollisionTypeWith*(this: CollidableWeaponBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.} =
        return CollisionTypeFactory.getInstance().COLLISION

method isCollided*(this: CollidableWeaponBehavior): bool {.base, discardable.} =
        return this.collided

method setCollided*(this: CollidableWeaponBehavior, collided: bool) {.base.} =
        this.collided = collided

when declared(newCollidableWeaponBehaviorHook1):
    newCollidableWeaponBehaviorHook1 = proc (collidable: bool): CollidableDestroyableDamageableBehavior = newCollidableWeaponBehavior(collidable)

