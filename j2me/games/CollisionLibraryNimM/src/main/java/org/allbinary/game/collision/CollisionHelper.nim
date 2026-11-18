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

type
    CollisionHelper* = ref object of JObject
        sourceLayerInterface*: AllBinaryLayer

proc newCollisionHelper*(sourceLayerInterface: AllBinaryLayer): CollisionHelper
proc initCollisionHelper*(this: CollisionHelper, sourceLayerInterface: AllBinaryLayer)
method isCollidable*(this: CollisionHelper, layerInterface: CollidableCompositeLayer): bool {.base, discardable.}
method getOwnerLayerInterface*(this: CollisionHelper): AllBinaryLayer {.base, discardable.}
method setOwnerLayerInterface*(this: CollisionHelper, sourceLayerInterface: AllBinaryLayer) {.base.}


# Java field initializers run after the base initializer
proc initFieldsCollisionHelper(this: CollisionHelper) =
    
    discard

proc initCollisionHelper*(this: CollisionHelper, sourceLayerInterface: AllBinaryLayer) =
        this.initFieldsCollisionHelper()
        this.sourceLayerInterface = sourceLayerInterface

proc newCollisionHelper*(sourceLayerInterface: AllBinaryLayer): CollisionHelper =
    result = CollisionHelper()
    initCollisionHelper(result, sourceLayerInterface)

method isCollidable*(this: CollisionHelper, layerInterface: CollidableCompositeLayer): bool {.base, discardable.} =
        return true

method getOwnerLayerInterface*(this: CollisionHelper): AllBinaryLayer {.base, discardable.} =
        return this.sourceLayerInterface

method setOwnerLayerInterface*(this: CollisionHelper, sourceLayerInterface: AllBinaryLayer) {.base.} =
        this.sourceLayerInterface = sourceLayerInterface

