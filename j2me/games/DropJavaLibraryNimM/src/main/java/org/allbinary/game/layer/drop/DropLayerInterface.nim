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
# package org.allbinary.game.layer.drop

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/pickup/PickedUpLayerInterface as PickedUpLayerInterfaceModule
export PickedUpLayerInterfaceModule
import org/allbinary/layer/LayerInterface as LayerInterfaceModule
export LayerInterfaceModule

type
    DropLayerInterface* = ref object of LayerInterface


method getDroppedLayer*(this: DropLayerInterface): PickedUpLayerInterface {.base, discardable.} =
        raise newJException("AbstractMethodError", "getDroppedLayer")

