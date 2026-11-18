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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/LayerInterfaceFactoryInterface as LayerInterfaceFactoryInterfaceModule
export LayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule

type
    CountedPickedUpLayerInterfaceFactoryInterface* = ref object of PickedUpLayerInterfaceFactoryInterface


method getId*(this: CountedPickedUpLayerInterfaceFactoryInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getId")

method getTotal*(this: CountedPickedUpLayerInterfaceFactoryInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getTotal")

