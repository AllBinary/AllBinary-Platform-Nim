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
    CollidableDamageWeaponBehavior* = ref object of CollidableDestroyableDamageableBehavior
        collided*: bool
        collisionHelper*: CollisionHelper

proc newCollidableDamageWeaponBehavior*(collidable: bool): CollidableDamageWeaponBehavior
proc initCollidableDamageWeaponBehavior*(this: CollidableDamageWeaponBehavior, collidable: bool)
method init*(this: CollidableDamageWeaponBehavior, sourceLayerInterface: AllBinaryLayer) {.base.}
method isCollision*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.}
method collide*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer)
method isCollisionInterface*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.}
method collideInterface*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface)
method getCollisionTypeWith*(this: CollidableDamageWeaponBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.}
method isCollided*(this: CollidableDamageWeaponBehavior): bool {.base, discardable.}
method setCollided*(this: CollidableDamageWeaponBehavior, collided: bool) {.base.}
import org/allbinary/game/collision/CollidableHelperFactory as CollidableHelperFactoryModule
export CollidableHelperFactoryModule
import org/allbinary/game/collision/CollisionTypeFactory as CollisionTypeFactoryModule
export CollisionTypeFactoryModule
import org/allbinary/game/combat/damage/DamageableInterface as DamageableInterfaceModule
export DamageableInterfaceModule


# Java field initializers run after the base initializer
proc initFieldsCollidableDamageWeaponBehavior(this: CollidableDamageWeaponBehavior) =
    this.collided = false
    
    discard

proc initCollidableDamageWeaponBehavior*(this: CollidableDamageWeaponBehavior, collidable: bool) =
        initCollidableDestroyableDamageableBehavior(this, collidable)
        this.initFieldsCollidableDamageWeaponBehavior()
        this.setCollided(false)
        this.setCollidable(true)
        this.collisionHelper = CollidableHelperFactory.getInstance()

proc newCollidableDamageWeaponBehavior*(collidable: bool): CollidableDamageWeaponBehavior =
    result = CollidableDamageWeaponBehavior()
    initCollidableDamageWeaponBehavior(result, collidable)

method init*(this: CollidableDamageWeaponBehavior, sourceLayerInterface: AllBinaryLayer) {.base.} =
        this.setCollided(false)
        this.collisionHelper.setOwnerLayerInterface(sourceLayerInterface)

method isCollision*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.} =
        if this.collisionHelper.isCollidable(collisionLayer):
            if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]:
                return procCall CollidableDestroyableDamageableBehavior(this).isCollision(ownerLayer, collisionLayer)
        return false

method collide*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer) =
        procCall CollidableDestroyableDamageableBehavior(this).collide(ownerLayer, collisionLayer)
        this.collided = true

method isCollisionInterface*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.} =
        if this.collisionHelper.isCollidable(CollidableCompositeLayer(JObject(collidableInterfaceCompositeInterface))):
            let layerInterface: AllBinaryLayer = AllBinaryLayer(JObject(collidableInterfaceCompositeInterface))
            if ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]:
                if this.layerCollisionUtil.isCollision(ownerLayer, layerInterface):
                    return true
        return false

method collideInterface*(this: CollidableDamageWeaponBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) =
        this.damageUtil.process(DamageableInterface(JObject(ownerLayer)), DamageableInterface(JObject(collidableInterfaceCompositeInterface)))
        this.collided = true

method getCollisionTypeWith*(this: CollidableDamageWeaponBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.} =
        return CollisionTypeFactory.getInstance().COLLISION

method isCollided*(this: CollidableDamageWeaponBehavior): bool {.base, discardable.} =
        return this.collided

method setCollided*(this: CollidableDamageWeaponBehavior, collided: bool) {.base.} =
        this.collided = collided

when declared(newCollidableDamageWeaponBehaviorHook1):
    newCollidableDamageWeaponBehaviorHook1 = proc (collidable: bool): CollidableDestroyableDamageableBehavior = newCollidableDamageWeaponBehavior(collidable)

