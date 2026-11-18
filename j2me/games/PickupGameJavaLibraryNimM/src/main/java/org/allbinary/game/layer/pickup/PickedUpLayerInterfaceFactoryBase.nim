#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerType as PickedUpLayerTypeModule
export PickedUpLayerTypeModule

type
    PickedUpLayerInterfaceFactoryBase* = ref object of PickedUpLayerInterfaceFactoryInterface

proc newPickedUpLayerInterfaceFactoryBase*(): PickedUpLayerInterfaceFactoryBase
method getIconLayer*(this: PickedUpLayerInterfaceFactoryBase): AllBinaryLayer {.discardable.}
method getAnimationInterface*(this: PickedUpLayerInterfaceFactoryBase): Animation {.discardable.}
method getPickedUpLayerType*(this: PickedUpLayerInterfaceFactoryBase): PickedUpLayerType {.discardable.}

var PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue: PickedUpLayerInterfaceFactoryBase
var PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet = false
proc NULL_PICKED_UP_LAYER_FACTORY_BASE*(t: typedesc[PickedUpLayerInterfaceFactoryBase]): PickedUpLayerInterfaceFactoryBase =
    if not PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet:
        PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet = true
        PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue = newPickedUpLayerInterfaceFactoryBase()
    PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue

proc initPickedUpLayerInterfaceFactoryBase*(this: PickedUpLayerInterfaceFactoryBase) =
    discard

proc newPickedUpLayerInterfaceFactoryBase*(): PickedUpLayerInterfaceFactoryBase =
    result = PickedUpLayerInterfaceFactoryBase()
    initPickedUpLayerInterfaceFactoryBase(result)

method getIconLayer*(this: PickedUpLayerInterfaceFactoryBase): AllBinaryLayer {.discardable.} =
        raise newJException("RuntimeException", "")

method getAnimationInterface*(this: PickedUpLayerInterfaceFactoryBase): Animation {.discardable.} =
        raise newJException("RuntimeException", "")

method getPickedUpLayerType*(this: PickedUpLayerInterfaceFactoryBase): PickedUpLayerType {.discardable.} =
        raise newJException("RuntimeException", "")

