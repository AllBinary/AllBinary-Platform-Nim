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
    TickableLayerManager* = ref object of LayerManager

proc newTickableLayerManager*(): TickableLayerManager
proc initTickableLayerManager*(this: TickableLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initTickableLayerManager*(this: TickableLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newTickableLayerManager*(): TickableLayerManager =
    result = TickableLayerManager()
    initTickableLayerManager(result)

when declared(newTickableLayerManagerHook0):
    newTickableLayerManagerHook0 = proc (): LayerManager = newTickableLayerManager()

