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
    ArtificialIntelligenceLayerProcessor* = ref object of LayerProcessor

proc newArtificialIntelligenceLayerProcessor*(): ArtificialIntelligenceLayerProcessor
proc initArtificialIntelligenceLayerProcessor*(this: ArtificialIntelligenceLayerProcessor)
method processAt*(this: ArtificialIntelligenceLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: ArtificialIntelligenceLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.}
import org/allbinary/ai/ArtificialIntelligenceLayerManager as ArtificialIntelligenceLayerManagerModule
export ArtificialIntelligenceLayerManagerModule
import org/allbinary/ai/ArtificialIntelligenceCompositeInterface as ArtificialIntelligenceCompositeInterfaceModule
export ArtificialIntelligenceCompositeInterfaceModule


proc initArtificialIntelligenceLayerProcessor*(this: ArtificialIntelligenceLayerProcessor) =
        initLayerProcessor(this, newArtificialIntelligenceLayerManager())

proc newArtificialIntelligenceLayerProcessor*(): ArtificialIntelligenceLayerProcessor =
    result = ArtificialIntelligenceLayerProcessor()
    initArtificialIntelligenceLayerProcessor(result)

method processAt*(this: ArtificialIntelligenceLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        var artificialIntelligenceCompositeInterface: ArtificialIntelligenceCompositeInterface = ArtificialIntelligenceCompositeInterface(JObject(layerInterface))
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager)

method isProcessorLayer*(this: ArtificialIntelligenceLayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.} =
        if layerInterface.implmentsArtificialIntelligenceCompositeInterface():
            return true
        else:
            return false

when declared(newArtificialIntelligenceLayerProcessorHook0):
    newArtificialIntelligenceLayerProcessorHook0 = proc (): LayerProcessor = newArtificialIntelligenceLayerProcessor()

