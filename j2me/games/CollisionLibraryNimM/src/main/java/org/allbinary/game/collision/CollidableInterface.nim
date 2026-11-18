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
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/NamedInterface as NamedInterfaceModule
export NamedInterfaceModule
import org/allbinary/game/collision/CollisionType as CollisionTypeModule
export CollisionTypeModule

type
    CollidableInterface* = ref object of NamedInterface


method isCollidable*(this: CollidableInterface, ownerLayer: CollidableCompositeLayer): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isCollidable")

method isCollision*(this: CollidableInterface, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isCollision")

method collide*(this: CollidableInterface, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableCompositeLayer) {.base.} =
        raise newJException("AbstractMethodError", "collide")

method getCollisionTypeWith*(this: CollidableInterface, layerInterface: AllBinaryLayer): CollisionType {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCollisionTypeWith")

