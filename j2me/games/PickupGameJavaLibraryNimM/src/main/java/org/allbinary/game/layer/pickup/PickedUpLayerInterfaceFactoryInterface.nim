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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/layer/pickup/PickedUpLayerType as PickedUpLayerTypeModule
export PickedUpLayerTypeModule

type
    PickedUpLayerInterfaceFactoryInterface* = ref object of JObject


method getPickedUpLayerType*(this: PickedUpLayerInterfaceFactoryInterface): PickedUpLayerType {.base, discardable.} =
        raise newJException("AbstractMethodError", "getPickedUpLayerType")

method getIconLayer*(this: PickedUpLayerInterfaceFactoryInterface): AllBinaryLayer {.base, discardable.} =
        raise newJException("AbstractMethodError", "getIconLayer")

method getAnimationInterface*(this: PickedUpLayerInterfaceFactoryInterface): Animation {.base, discardable.} =
        raise newJException("AbstractMethodError", "getAnimationInterface")

