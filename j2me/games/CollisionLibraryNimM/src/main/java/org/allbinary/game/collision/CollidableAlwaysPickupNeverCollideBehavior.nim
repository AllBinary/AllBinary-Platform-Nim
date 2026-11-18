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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/collision/CollidableNeverCollideBehavior as CollidableNeverCollideBehaviorModule
export CollidableNeverCollideBehaviorModule
import org/allbinary/game/collision/CollisionType as CollisionTypeModule
export CollisionTypeModule

type
    CollidableAlwaysPickupNeverCollideBehavior* = ref object of CollidableNeverCollideBehavior

proc newCollidableAlwaysPickupNeverCollideBehavior*(): CollidableAlwaysPickupNeverCollideBehavior
proc initCollidableAlwaysPickupNeverCollideBehavior*(this: CollidableAlwaysPickupNeverCollideBehavior)
method getCollisionTypeWith*(this: CollidableAlwaysPickupNeverCollideBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.}
import org/allbinary/game/collision/CollisionTypeFactory as CollisionTypeFactoryModule
export CollisionTypeFactoryModule


proc initCollidableAlwaysPickupNeverCollideBehavior*(this: CollidableAlwaysPickupNeverCollideBehavior) =
        initCollidableNeverCollideBehavior(this, true)

proc newCollidableAlwaysPickupNeverCollideBehavior*(): CollidableAlwaysPickupNeverCollideBehavior =
    result = CollidableAlwaysPickupNeverCollideBehavior()
    initCollidableAlwaysPickupNeverCollideBehavior(result)

method getCollisionTypeWith*(this: CollidableAlwaysPickupNeverCollideBehavior, layerInterface: AllBinaryLayer): CollisionType {.discardable.} =
        return CollisionTypeFactory.getInstance().PICKUP

when declared(newCollidableAlwaysPickupNeverCollideBehaviorHook0):
    newCollidableAlwaysPickupNeverCollideBehaviorHook0 = proc (): CollidableNeverCollideBehavior = newCollidableAlwaysPickupNeverCollideBehavior()

