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
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    OptimizedGameInputLayerManager* = ref object of LayerManager

proc newOptimizedGameInputLayerManager*(): OptimizedGameInputLayerManager
proc initOptimizedGameInputLayerManager*(this: OptimizedGameInputLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initOptimizedGameInputLayerManager*(this: OptimizedGameInputLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newOptimizedGameInputLayerManager*(): OptimizedGameInputLayerManager =
    result = OptimizedGameInputLayerManager()
    initOptimizedGameInputLayerManager(result)

when declared(newOptimizedGameInputLayerManagerHook0):
    newOptimizedGameInputLayerManagerHook0 = proc (): LayerManager = newOptimizedGameInputLayerManager()

