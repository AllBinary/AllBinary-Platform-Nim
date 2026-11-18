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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    SingleLayerLayerProcessor* = ref object of LayerProcessor

proc newSingleLayerLayerProcessor*(): SingleLayerLayerProcessor
proc initSingleLayerLayerProcessor*(this: SingleLayerLayerProcessor)
method process*(this: SingleLayerLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/layer/SingleLayerLayerManager as SingleLayerLayerManagerModule
export SingleLayerLayerManagerModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule


proc initSingleLayerLayerProcessor*(this: SingleLayerLayerProcessor) =
        initLayerProcessor(this, newSingleLayerLayerManager())

proc newSingleLayerLayerProcessor*(): SingleLayerLayerProcessor =
    result = SingleLayerLayerProcessor()
    initSingleLayerLayerProcessor(result)

method process*(this: SingleLayerLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager) =
        var layerManager: LayerManager = this.getLayerManager()
        this.processAt(allBinaryLayerManager, AllBinaryLayer(JObject(layerManager.getLayerAt(0))), 0)

when declared(newSingleLayerLayerProcessorHook0):
    newSingleLayerLayerProcessorHook0 = proc (): LayerProcessor = newSingleLayerLayerProcessor()

