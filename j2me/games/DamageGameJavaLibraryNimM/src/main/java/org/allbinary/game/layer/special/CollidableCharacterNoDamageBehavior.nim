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
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior as CollidableDestroyableDamageableBehaviorModule
export CollidableDestroyableDamageableBehaviorModule

type
    CollidableCharacterNoDamageBehavior* = ref object of CollidableDestroyableDamageableBehavior

proc newCollidableCharacterNoDamageBehavior*(collidable: bool): CollidableCharacterNoDamageBehavior
proc initCollidableCharacterNoDamageBehavior*(this: CollidableCharacterNoDamageBehavior, collidable: bool)
method collide*(this: CollidableCharacterNoDamageBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer)
method collideInterface*(this: CollidableCharacterNoDamageBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface)
import org/allbinary/game/collision/CollisionType as CollisionTypeModule
export CollisionTypeModule
import org/allbinary/game/collision/CollisionTypeFactory as CollisionTypeFactoryModule
export CollisionTypeFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterface as PickedUpLayerInterfaceModule
export PickedUpLayerInterfaceModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule


proc initCollidableCharacterNoDamageBehavior*(this: CollidableCharacterNoDamageBehavior, collidable: bool) =
        initCollidableDestroyableDamageableBehavior(this, collidable)

proc newCollidableCharacterNoDamageBehavior*(collidable: bool): CollidableCharacterNoDamageBehavior =
    result = CollidableCharacterNoDamageBehavior()
    initCollidableCharacterNoDamageBehavior(result, collidable)

method collide*(this: CollidableCharacterNoDamageBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer) =
        let collisionTypeFactory: CollisionTypeFactory = CollisionTypeFactory.getInstance()
        let collisionType: CollisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP:
            let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(ownerLayer))
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(PickedUpLayerInterface(JObject(collidableInterfaceCompositeInterface)))
        else:
            discard

method collideInterface*(this: CollidableCharacterNoDamageBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

when declared(newCollidableCharacterNoDamageBehaviorHook1):
    newCollidableCharacterNoDamageBehaviorHook1 = proc (collidable: bool): CollidableDestroyableDamageableBehavior = newCollidableCharacterNoDamageBehavior(collidable)

