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
    CollidableCharacterBehavior* = ref object of CollidableDestroyableDamageableBehavior

proc newCollidableCharacterBehavior*(collidable: bool): CollidableCharacterBehavior
proc initCollidableCharacterBehavior*(this: CollidableCharacterBehavior, collidable: bool)
method collide*(this: CollidableCharacterBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer)
method collideInterface*(this: CollidableCharacterBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface)
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


proc initCollidableCharacterBehavior*(this: CollidableCharacterBehavior, collidable: bool) =
        initCollidableDestroyableDamageableBehavior(this, collidable)

proc newCollidableCharacterBehavior*(collidable: bool): CollidableCharacterBehavior =
    result = CollidableCharacterBehavior()
    initCollidableCharacterBehavior(result, collidable)

method collide*(this: CollidableCharacterBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer) =
        let collisionTypeFactory: CollisionTypeFactory = CollisionTypeFactory.getInstance()
        let collisionType: CollisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if (jSame(collisionType, collisionTypeFactory.PICKUP)):
            let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(ownerLayer))
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(PickedUpLayerInterface(JObject(collidableInterfaceCompositeInterface)))
        else:
            jSuperStatement(procCall CollidableDestroyableDamageableBehavior(this).collide(ownerLayer, collidableInterfaceCompositeInterface))

method collideInterface*(this: CollidableCharacterBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

when declared(newCollidableCharacterBehaviorHook1):
    newCollidableCharacterBehaviorHook1 = proc (collidable: bool): CollidableDestroyableDamageableBehavior = newCollidableCharacterBehavior(collidable)

