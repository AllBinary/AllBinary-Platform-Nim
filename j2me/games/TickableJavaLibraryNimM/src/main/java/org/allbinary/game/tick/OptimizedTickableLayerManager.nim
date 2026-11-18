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
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    OptimizedTickableLayerManager* = ref object of LayerManager

proc newOptimizedTickableLayerManager*(): OptimizedTickableLayerManager
proc initOptimizedTickableLayerManager*(this: OptimizedTickableLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initOptimizedTickableLayerManager*(this: OptimizedTickableLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newOptimizedTickableLayerManager*(): OptimizedTickableLayerManager =
    result = OptimizedTickableLayerManager()
    initOptimizedTickableLayerManager(result)

when declared(newOptimizedTickableLayerManagerHook0):
    newOptimizedTickableLayerManagerHook0 = proc (): LayerManager = newOptimizedTickableLayerManager()

