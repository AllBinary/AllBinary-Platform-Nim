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
import org/allbinary/game/collision/CollisionProcessor as CollisionProcessorModule
export CollisionProcessorModule

type
    LayerCollisionUtil* = ref object of JObject
        collisionProcessor*: CollisionProcessor

proc newLayerCollisionUtil*(): LayerCollisionUtil
proc initLayerCollisionUtil*(this: LayerCollisionUtil)
proc getInstance*(t: typedesc[LayerCollisionUtil]): LayerCollisionUtil {.discardable.}
method isCollision*(this: LayerCollisionUtil, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/game/collision/Collision2DProcessor as Collision2DProcessorModule
export Collision2DProcessorModule
import org/allbinary/game/collision/CollisionThreedProcessor as CollisionThreedProcessorModule
export CollisionThreedProcessorModule

var LayerCollisionUtil_instanceValue: LayerCollisionUtil
var LayerCollisionUtil_instanceSet = false
proc instance*(t: typedesc[LayerCollisionUtil]): LayerCollisionUtil =
    if not LayerCollisionUtil_instanceSet:
        LayerCollisionUtil_instanceSet = true
        LayerCollisionUtil_instanceValue = newLayerCollisionUtil()
    LayerCollisionUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLayerCollisionUtil(this: LayerCollisionUtil) =
    
    discard

proc getInstance*(t: typedesc[LayerCollisionUtil]): LayerCollisionUtil {.discardable.} =
        return LayerCollisionUtil.instance

proc initLayerCollisionUtil*(this: LayerCollisionUtil) =
        this.initFieldsLayerCollisionUtil()
        var features: Features = Features.getInstance()
        var gameFeatureFactory: GameFeatureFactory = GameFeatureFactory.getInstance()
        if OpenGLFeatureUtil.getInstance().isAnyThreed() and (not features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)):
            this.collisionProcessor = newCollisionThreedProcessor()
        else:
            this.collisionProcessor = newCollision2DProcessor()

proc newLayerCollisionUtil*(): LayerCollisionUtil =
    result = LayerCollisionUtil()
    initLayerCollisionUtil(result)

method isCollision*(this: LayerCollisionUtil, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.base, discardable.} =
        return this.collisionProcessor.isCollision(myLayer, myLayer2)

