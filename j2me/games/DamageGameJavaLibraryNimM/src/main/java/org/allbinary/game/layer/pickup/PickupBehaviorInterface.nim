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
import org/allbinary/game/layer/pickup/PickupProcessorInterface as PickupProcessorInterfaceModule
export PickupProcessorInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterface as PickedUpLayerInterfaceModule
export PickedUpLayerInterfaceModule

type
    PickupBehaviorInterface* = ref object of JObject


method doPickup*(this: PickupBehaviorInterface, pickupProcessorInterface: PickupProcessorInterface) {.base.} =
        raise newJException("AbstractMethodError", "doPickup")

method doPickupLayer*(this: PickupBehaviorInterface, pickupLayerInterface: PickedUpLayerInterface) {.base.} =
        raise newJException("AbstractMethodError", "doPickupLayer")

