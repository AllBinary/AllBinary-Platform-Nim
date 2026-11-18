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
    GameInputLayerManager* = ref object of LayerManager

proc newGameInputLayerManager*(): GameInputLayerManager
proc initGameInputLayerManager*(this: GameInputLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initGameInputLayerManager*(this: GameInputLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newGameInputLayerManager*(): GameInputLayerManager =
    result = GameInputLayerManager()
    initGameInputLayerManager(result)

when declared(newGameInputLayerManagerHook0):
    newGameInputLayerManagerHook0 = proc (): LayerManager = newGameInputLayerManager()

