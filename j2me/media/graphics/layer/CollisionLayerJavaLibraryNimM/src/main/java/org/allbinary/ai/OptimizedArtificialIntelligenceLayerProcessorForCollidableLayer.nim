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
# package org.allbinary.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer* = ref object of LayerProcessor

proc newOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer*(): OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer
proc initOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer*(this: OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer)
method processAt*(this: OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/ai/OptimizedArtificialIntelligenceLayerManager as OptimizedArtificialIntelligenceLayerManagerModule
export OptimizedArtificialIntelligenceLayerManagerModule


proc initOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer*(this: OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer) =
        initLayerProcessor(this, newOptimizedArtificialIntelligenceLayerManager())

proc newOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer*(): OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer =
    result = OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer()
    initOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer(result)

method processAt*(this: OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        var artificialIntelligenceCompositeInterface: CollidableCompositeLayer = CollidableCompositeLayer(JObject(layerInterface))
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager)

method isProcessorLayer*(this: OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsArtificialIntelligenceCompositeInterface():
            return true
        else:
            return false

when declared(newOptimizedArtificialIntelligenceLayerProcessorForCollidableLayerHook0):
    newOptimizedArtificialIntelligenceLayerProcessorForCollidableLayerHook0 = proc (): LayerProcessor = newOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer()

