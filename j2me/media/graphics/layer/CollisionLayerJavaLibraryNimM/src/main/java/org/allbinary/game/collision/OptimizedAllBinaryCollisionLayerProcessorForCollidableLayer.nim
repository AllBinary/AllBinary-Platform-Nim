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
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer* = ref object of LayerProcessor

proc newOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer*(): OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer
proc initOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer*(this: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer)
method processAt*(this: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, startIndex: int32)
method isProcessorLayer*(this: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule
import org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager as OptimizedAllBinaryCollisionLayerManagerModule
export OptimizedAllBinaryCollisionLayerManagerModule
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule


proc initOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer*(this: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer) =
        initLayerProcessor(this, newOptimizedAllBinaryCollisionLayerManager())

proc newOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer*(): OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer =
    result = OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer()
    initOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer(result)

method processAt*(this: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, startIndex: int32) =
        var collidableInterfaceCompositeInterface: CollidableCompositeLayer = CollidableCompositeLayer(JObject(layerInterface))
        var collidableBase: CollidableBaseBehavior = collidableInterfaceCompositeInterface.getCollidableInferface()
        if collidableBase.isCollidable(collidableInterfaceCompositeInterface):
            let layerManager: LayerManager = this.getLayerManager()
            let size: int32 = layerManager.getSize()
            var collidableInterfaceCompositeInterface2: CollidableCompositeLayer = nil
            var collidableBase2: CollidableBaseBehavior = nil
            block:
                var index: int32 = startIndex +% 1
                while index < size:
                    defer: index = index +% 1
                    collidableInterfaceCompositeInterface2 = CollidableCompositeLayer(JObject(layerManager.getLayerAt(index)))
                    collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
                    if collidableBase2.isCollidable(collidableInterfaceCompositeInterface) and collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2):
                        collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                        collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)

method isProcessorLayer*(this: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsCollidableInterface():
            return true
        else:
            return false

when declared(newOptimizedAllBinaryCollisionLayerProcessorForCollidableLayerHook0):
    newOptimizedAllBinaryCollisionLayerProcessorForCollidableLayerHook0 = proc (): LayerProcessor = newOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer()

