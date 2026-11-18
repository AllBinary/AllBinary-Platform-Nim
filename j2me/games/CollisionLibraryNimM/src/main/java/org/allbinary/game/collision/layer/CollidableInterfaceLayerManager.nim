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
# package org.allbinary.game.collision.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    CollidableInterfaceLayerManager* = ref object of LayerManager

proc newCollidableInterfaceLayerManager*(): CollidableInterfaceLayerManager
proc initCollidableInterfaceLayerManager*(this: CollidableInterfaceLayerManager)
import org/allbinary/layer/LayerManagerNoDebug as LayerManagerNoDebugModule
export LayerManagerNoDebugModule


proc initCollidableInterfaceLayerManager*(this: CollidableInterfaceLayerManager) =
        initLayerManager(this, LayerManagerNoDebug.getInstance())

proc newCollidableInterfaceLayerManager*(): CollidableInterfaceLayerManager =
    result = CollidableInterfaceLayerManager()
    initCollidableInterfaceLayerManager(result)

when declared(newCollidableInterfaceLayerManagerHook0):
    newCollidableInterfaceLayerManagerHook0 = proc (): LayerManager = newCollidableInterfaceLayerManager()

