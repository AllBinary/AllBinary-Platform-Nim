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
import org/allbinary/game/collision/CollisionHelper as CollisionHelperModule
export CollisionHelperModule

type
    SourceCollisionHelper* = ref object of CollisionHelper

proc newSourceCollisionHelper*(layerInterface: AllBinaryLayer): SourceCollisionHelper
proc initSourceCollisionHelper*(this: SourceCollisionHelper, layerInterface: AllBinaryLayer)
method isCollidable*(this: SourceCollisionHelper, layerInterface: CollidableCompositeLayer): bool {.discardable.}


proc initSourceCollisionHelper*(this: SourceCollisionHelper, layerInterface: AllBinaryLayer) =
        initCollisionHelper(this, layerInterface)

proc newSourceCollisionHelper*(layerInterface: AllBinaryLayer): SourceCollisionHelper =
    result = SourceCollisionHelper()
    initSourceCollisionHelper(result, layerInterface)

method isCollidable*(this: SourceCollisionHelper, layerInterface: CollidableCompositeLayer): bool {.discardable.} =
        if (not jSame(this.sourceLayerInterface, layerInterface)):
            return true
        return false

when declared(newSourceCollisionHelperHook1):
    newSourceCollisionHelperHook1 = proc (layerInterface: AllBinaryLayer): CollisionHelper = newSourceCollisionHelper(layerInterface)

