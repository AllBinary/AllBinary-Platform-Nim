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
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    SingleLayerLayerManager* = ref object of LayerManager

proc newSingleLayerLayerManager*(): SingleLayerLayerManager
proc initSingleLayerLayerManager*(this: SingleLayerLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initSingleLayerLayerManager*(this: SingleLayerLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newSingleLayerLayerManager*(): SingleLayerLayerManager =
    result = SingleLayerLayerManager()
    initSingleLayerLayerManager(result)

when declared(newSingleLayerLayerManagerHook0):
    newSingleLayerLayerManagerHook0 = proc (): LayerManager = newSingleLayerLayerManager()

