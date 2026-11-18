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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/graphics/displayable/DisplayableInterface as DisplayableInterfaceModule
export DisplayableInterfaceModule

type
    AllBinaryGameCanvasInterface* = ref object of DisplayableInterface


method getLayerManager*(this: AllBinaryGameCanvasInterface): AllBinaryGameLayerManager {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLayerManager")

