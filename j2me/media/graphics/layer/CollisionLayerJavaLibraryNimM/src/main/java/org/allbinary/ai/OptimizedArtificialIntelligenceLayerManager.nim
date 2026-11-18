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
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    OptimizedArtificialIntelligenceLayerManager* = ref object of LayerManager

proc newOptimizedArtificialIntelligenceLayerManager*(): OptimizedArtificialIntelligenceLayerManager
proc initOptimizedArtificialIntelligenceLayerManager*(this: OptimizedArtificialIntelligenceLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initOptimizedArtificialIntelligenceLayerManager*(this: OptimizedArtificialIntelligenceLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newOptimizedArtificialIntelligenceLayerManager*(): OptimizedArtificialIntelligenceLayerManager =
    result = OptimizedArtificialIntelligenceLayerManager()
    initOptimizedArtificialIntelligenceLayerManager(result)

when declared(newOptimizedArtificialIntelligenceLayerManagerHook0):
    newOptimizedArtificialIntelligenceLayerManagerHook0 = proc (): LayerManager = newOptimizedArtificialIntelligenceLayerManager()

