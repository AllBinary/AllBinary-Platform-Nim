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
import org/allbinary/game/collision/CollisionHelper as CollisionHelperModule
export CollisionHelperModule

type
    CollidableHelperFactory* = ref object of JObject

proc newCollidableHelperFactory*(): CollidableHelperFactory
proc getInstance*(t: typedesc[CollidableHelperFactory]): CollisionHelper {.discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/collision/SourceCollisionHelper as SourceCollisionHelperModule
export SourceCollisionHelperModule


proc initCollidableHelperFactory*(this: CollidableHelperFactory) =
    discard

proc newCollidableHelperFactory*(): CollidableHelperFactory =
    result = CollidableHelperFactory()
    initCollidableHelperFactory(result)

proc getInstance*(t: typedesc[CollidableHelperFactory]): CollisionHelper {.discardable.} =
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().COLLISIONS_WITH_SOURCE):
            return newCollisionHelper(AllBinaryLayer.NULL_ALLBINARY_LAYER)
        else:
            return newSourceCollisionHelper(AllBinaryLayer.NULL_ALLBINARY_LAYER)

