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
# package org.allbinary.game.tick

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule

type
    OptimizedTickableLayerProcessor* = ref object of LayerProcessor

proc newOptimizedTickableLayerProcessor*(): OptimizedTickableLayerProcessor
proc initOptimizedTickableLayerProcessor*(this: OptimizedTickableLayerProcessor)
method processAt*(this: OptimizedTickableLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: OptimizedTickableLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule
import org/allbinary/game/tick/OptimizedTickableLayerManager as OptimizedTickableLayerManagerModule
export OptimizedTickableLayerManagerModule


proc initOptimizedTickableLayerProcessor*(this: OptimizedTickableLayerProcessor) =
        initLayerProcessor(this, newOptimizedTickableLayerManager())

proc newOptimizedTickableLayerProcessor*(): OptimizedTickableLayerProcessor =
    result = OptimizedTickableLayerProcessor()
    initOptimizedTickableLayerProcessor(result)

method processAt*(this: OptimizedTickableLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        var tickableInterface: AllBinaryGameLayer = AllBinaryGameLayer(JObject(layerInterface))
        tickableInterface.processTick(allBinaryLayerManager)

method isProcessorLayer*(this: OptimizedTickableLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsTickableInterface():
            return true
        else:
            return false

when declared(newOptimizedTickableLayerProcessorHook0):
    newOptimizedTickableLayerProcessorHook0 = proc (): LayerProcessor = newOptimizedTickableLayerProcessor()

