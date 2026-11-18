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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    LayerManagerLoggingBase* = ref object of JObject

proc newLayerManagerLoggingBase*(): LayerManagerLoggingBase
method append*(this: LayerManagerLoggingBase, layerInterface: AllBinaryLayer) {.base.}
method appendAt*(this: LayerManagerLoggingBase, layerInterface: AllBinaryLayer, index: int32) {.base.}
method remove*(this: LayerManagerLoggingBase, layerInterface: AllBinaryLayer) {.base.}
method removeResult*(this: LayerManagerLoggingBase, layerManager: LayerManager, layerInterface: AllBinaryLayer, `result`: bool) {.base.}
method clear*(this: LayerManagerLoggingBase) {.base.}


proc initLayerManagerLoggingBase*(this: LayerManagerLoggingBase) =
    discard

proc newLayerManagerLoggingBase*(): LayerManagerLoggingBase =
    result = LayerManagerLoggingBase()
    initLayerManagerLoggingBase(result)

method append*(this: LayerManagerLoggingBase, layerInterface: AllBinaryLayer) {.base.} =
        discard

method appendAt*(this: LayerManagerLoggingBase, layerInterface: AllBinaryLayer, index: int32) {.base.} =
        discard

method remove*(this: LayerManagerLoggingBase, layerInterface: AllBinaryLayer) {.base.} =
        discard

method removeResult*(this: LayerManagerLoggingBase, layerManager: LayerManager, layerInterface: AllBinaryLayer, `result`: bool) {.base.} =
        discard

method clear*(this: LayerManagerLoggingBase) {.base.} =
        discard

