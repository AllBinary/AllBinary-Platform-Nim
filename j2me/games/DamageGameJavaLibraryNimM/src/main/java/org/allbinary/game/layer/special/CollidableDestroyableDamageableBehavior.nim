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
# package org.allbinary.game.layer.special

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/game/combat/damage/DamageUtil as DamageUtilModule
export DamageUtilModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule

type
    CollidableDestroyableDamageableBehavior* = ref object of CollidableBaseBehavior
        damageUtil*: DamageUtil

proc newCollidableDestroyableDamageableBehavior*(collidable: bool): CollidableDestroyableDamageableBehavior
proc initCollidableDestroyableDamageableBehavior*(this: CollidableDestroyableDamageableBehavior, collidable: bool)
method isCollision*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.}
method collide*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer)
method isCollisionInterface*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.}
method collideInterface*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface)
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule


# Java field initializers run after the base initializer
proc initFieldsCollidableDestroyableDamageableBehavior(this: CollidableDestroyableDamageableBehavior) =
    this.damageUtil = DamageUtil.getInstance()
    discard

proc initCollidableDestroyableDamageableBehavior*(this: CollidableDestroyableDamageableBehavior, collidable: bool) =
        initCollidableBaseBehavior(this, collidable)
        this.initFieldsCollidableDestroyableDamageableBehavior()

proc newCollidableDestroyableDamageableBehavior*(collidable: bool): CollidableDestroyableDamageableBehavior =
    result = CollidableDestroyableDamageableBehavior()
    initCollidableDestroyableDamageableBehavior(result, collidable)

method isCollision*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collisionLayer: CollidableCompositeLayer): bool {.discardable.} =
        if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]:
            return procCall CollidableBaseBehavior(this).isCollision(ownerLayer, collisionLayer)
        return false

method collide*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer) =
        let ownerCollidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(ownerLayer))
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(collidableInterfaceCompositeInterface))
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0)

method isCollisionInterface*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.} =
        ForcedLogUtil.log("No Longer Used", this)
        return false

method collideInterface*(this: CollidableDestroyableDamageableBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) =
        ForcedLogUtil.log("No Longer Used", this)

when declared(newCollidableDestroyableDamageableBehaviorHook1):
    newCollidableDestroyableDamageableBehaviorHook1 = proc (collidable: bool): CollidableBaseBehavior = newCollidableDestroyableDamageableBehavior(collidable)

