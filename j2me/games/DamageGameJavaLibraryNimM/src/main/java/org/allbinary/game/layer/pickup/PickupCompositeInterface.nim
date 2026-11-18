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
import org/allbinary/game/layer/pickup/PickupBehavior as PickupBehaviorModule
export PickupBehaviorModule

type
    PickupCompositeInterface* = ref object of JObject


method getPickupBehavior*(this: PickupCompositeInterface): PickupBehavior {.base, discardable.} =
        raise newJException("AbstractMethodError", "getPickupBehavior")

method setPickupBehavior*(this: PickupCompositeInterface, pickupBehavior: PickupBehavior) {.base.} =
        raise newJException("AbstractMethodError", "setPickupBehavior")

