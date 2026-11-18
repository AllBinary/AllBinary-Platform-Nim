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
import org/allbinary/layer/BasicLayerProcessorInterface as BasicLayerProcessorInterfaceModule
export BasicLayerProcessorInterfaceModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    LayerProcessorInterface* = ref object of BasicLayerProcessorInterface


method getLayerManager*(this: LayerProcessorInterface): LayerManager {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLayerManager")

method processAt*(this: LayerProcessorInterface, allBinaryLayerManager: AllBinaryLayerManager, layerInterface: AllBinaryLayer, index: int32) {.base.} =
        raise newJException("AbstractMethodError", "processAt")

method isProcessorLayer*(this: LayerProcessorInterface, layerInterface: AllBinaryLayer): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isProcessorLayer")

