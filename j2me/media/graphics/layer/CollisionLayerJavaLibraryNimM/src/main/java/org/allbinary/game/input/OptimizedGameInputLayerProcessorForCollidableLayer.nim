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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    OptimizedGameInputLayerProcessorForCollidableLayer* = ref object of LayerProcessor

proc newOptimizedGameInputLayerProcessorForCollidableLayer*(): OptimizedGameInputLayerProcessorForCollidableLayer
proc initOptimizedGameInputLayerProcessorForCollidableLayer*(this: OptimizedGameInputLayerProcessorForCollidableLayer)
method processAt*(this: OptimizedGameInputLayerProcessorForCollidableLayer, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: OptimizedGameInputLayerProcessorForCollidableLayer, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule
import org/allbinary/game/input/OptimizedGameInputLayerManager as OptimizedGameInputLayerManagerModule
export OptimizedGameInputLayerManagerModule


proc initOptimizedGameInputLayerProcessorForCollidableLayer*(this: OptimizedGameInputLayerProcessorForCollidableLayer) =
        initLayerProcessor(this, newOptimizedGameInputLayerManager())

proc newOptimizedGameInputLayerProcessorForCollidableLayer*(): OptimizedGameInputLayerProcessorForCollidableLayer =
    result = OptimizedGameInputLayerProcessorForCollidableLayer()
    initOptimizedGameInputLayerProcessorForCollidableLayer(result)

method processAt*(this: OptimizedGameInputLayerProcessorForCollidableLayer, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        let gameInputInterface: AllBinaryGameLayer = AllBinaryGameLayer(JObject(layerInterface))
        gameInputInterface.processInput(allBinaryLayerManager)

method isProcessorLayer*(this: OptimizedGameInputLayerProcessorForCollidableLayer, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsGameInputInterface():
            return true
        else:
            return false

when declared(newOptimizedGameInputLayerProcessorForCollidableLayerHook0):
    newOptimizedGameInputLayerProcessorForCollidableLayerHook0 = proc (): LayerProcessor = newOptimizedGameInputLayerProcessorForCollidableLayer()

