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
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule

type
    CollidableNeverCollideBehavior* = ref object of CollidableBaseBehavior

proc newCollidableNeverCollideBehavior*(isCollidable: bool): CollidableNeverCollideBehavior
proc initCollidableNeverCollideBehavior*(this: CollidableNeverCollideBehavior, isCollidable: bool)
method isCollision*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, allbinaryCollidableLayer: CollidableCompositeLayer): bool {.discardable.}
method collide*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, allbinaryCollidableLayer: CollidableCompositeLayer)
method collideInterface*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface)
method isCollisionInterface*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.}


proc initCollidableNeverCollideBehavior*(this: CollidableNeverCollideBehavior, isCollidable: bool) =
        initCollidableBaseBehavior(this, isCollidable)

proc newCollidableNeverCollideBehavior*(isCollidable: bool): CollidableNeverCollideBehavior =
    result = CollidableNeverCollideBehavior()
    initCollidableNeverCollideBehavior(result, isCollidable)

method isCollision*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, allbinaryCollidableLayer: CollidableCompositeLayer): bool {.discardable.} =
        return false

method collide*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, allbinaryCollidableLayer: CollidableCompositeLayer) =
        discard

method collideInterface*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface) =
        discard

method isCollisionInterface*(this: CollidableNeverCollideBehavior, ownerLayer: CollidableCompositeLayer, collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface): bool {.discardable.} =
        return false

when declared(newCollidableNeverCollideBehaviorHook1):
    newCollidableNeverCollideBehaviorHook1 = proc (isCollidable: bool): CollidableBaseBehavior = newCollidableNeverCollideBehavior(isCollidable)

