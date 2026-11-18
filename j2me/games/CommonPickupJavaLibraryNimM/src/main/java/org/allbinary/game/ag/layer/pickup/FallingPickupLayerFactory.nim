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
# package org.allbinary.game.ag.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    FallingPickupLayerFactory* = ref object of AllBinaryLayerFactoryInterface

proc newFallingPickupLayerFactory*(): FallingPickupLayerFactory
method getInstance*(this: FallingPickupLayerFactory): AllBinaryLayer {.discardable.}
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/game/ag/layer/pickup/FallingPickupLayer as FallingPickupLayerModule
export FallingPickupLayerModule


proc initFallingPickupLayerFactory*(this: FallingPickupLayerFactory) =
    discard

proc newFallingPickupLayerFactory*(): FallingPickupLayerFactory =
    result = FallingPickupLayerFactory()
    initFallingPickupLayerFactory(result)

method getInstance*(this: FallingPickupLayerFactory): AllBinaryLayer {.discardable.} =
        return newFallingPickupLayer(RemoteInfo.REMOTE_INFOStatic)

