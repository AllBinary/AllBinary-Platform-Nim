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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/layer/LayerProcessorInterface as LayerProcessorInterfaceModule
export LayerProcessorInterfaceModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    LayerProcessor* = ref object of LayerProcessorInterface
        commonStrings*: CommonStrings
        layerManager*: LayerManager

proc newLayerProcessor*(layerManager: LayerManager): LayerProcessor
proc initLayerProcessor*(this: LayerProcessor, layerManager: LayerManager)
method processAt*(this: LayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32)
method isProcessorLayer*(this: LayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.}
method getLayerManager*(this: LayerProcessor): LayerManager {.discardable.}
method process*(this: LayerProcessor, allBinaryLayerManager: AllBinaryLayerManager)


# Java field initializers run after the base initializer
proc initFieldsLayerProcessor(this: LayerProcessor) =
    this.commonStrings = CommonStrings.getInstance()
    
    discard

proc initLayerProcessor*(this: LayerProcessor, layerManager: LayerManager) =
        this.initFieldsLayerProcessor()
        this.layerManager = layerManager

proc newLayerProcessor*(layerManager: LayerManager): LayerProcessor =
    result = LayerProcessor()
    initLayerProcessor(result, layerManager)

method processAt*(this: LayerProcessor, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method isProcessorLayer*(this: LayerProcessor, layerInterface: AllBinaryLayer): bool {.discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method getLayerManager*(this: LayerProcessor): LayerManager {.discardable.} =
        return this.layerManager

method process*(this: LayerProcessor, allBinaryLayerManager: AllBinaryLayerManager) =
        var layerManager: LayerManager = this.getLayerManager()
        var size: int32 = layerManager.getSize()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.processAt(allBinaryLayerManager, AllBinaryLayer(JObject(layerManager.getLayerAt(index))), index)

