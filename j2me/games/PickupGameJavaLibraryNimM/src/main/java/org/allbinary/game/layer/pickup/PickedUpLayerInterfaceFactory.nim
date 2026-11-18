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
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase as PickedUpLayerInterfaceFactoryBaseModule
export PickedUpLayerInterfaceFactoryBaseModule
import org/allbinary/game/layer/pickup/PickedUpLayerType as PickedUpLayerTypeModule
export PickedUpLayerTypeModule
import org/allbinary/game/layer/pickup/IconLayer as IconLayerModule
export IconLayerModule

type
    PickedUpLayerInterfaceFactory* = ref object of PickedUpLayerInterfaceFactoryBase
        pickedUpLayerType*: PickedUpLayerType
        iconLayer*: IconLayer
        animationInterface*: Animation

proc newPickedUpLayerInterfaceFactory*(pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation): PickedUpLayerInterfaceFactory
proc initPickedUpLayerInterfaceFactory*(this: PickedUpLayerInterfaceFactory, pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation)
method getIconLayer*(this: PickedUpLayerInterfaceFactory): AllBinaryLayer {.discardable.}
method getAnimationInterface*(this: PickedUpLayerInterfaceFactory): Animation {.discardable.}
method getPickedUpLayerType*(this: PickedUpLayerInterfaceFactory): PickedUpLayerType {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsPickedUpLayerInterfaceFactory(this: PickedUpLayerInterfaceFactory) =
    
    
    
    discard

proc initPickedUpLayerInterfaceFactory*(this: PickedUpLayerInterfaceFactory, pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation) =
        initPickedUpLayerInterfaceFactoryBase(this)
        this.initFieldsPickedUpLayerInterfaceFactory()
        this.pickedUpLayerType = pickeUpLayerType
        this.animationInterface = animationInterface
        this.iconLayer = iconLayer

proc newPickedUpLayerInterfaceFactory*(pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation): PickedUpLayerInterfaceFactory =
    result = PickedUpLayerInterfaceFactory()
    initPickedUpLayerInterfaceFactory(result, pickeUpLayerType, iconLayer, animationInterface)

method getIconLayer*(this: PickedUpLayerInterfaceFactory): AllBinaryLayer {.discardable.} =
        return this.iconLayer

method getAnimationInterface*(this: PickedUpLayerInterfaceFactory): Animation {.discardable.} =
        return this.animationInterface

method getPickedUpLayerType*(this: PickedUpLayerInterfaceFactory): PickedUpLayerType {.discardable.} =
        return this.pickedUpLayerType

when declared(newPickedUpLayerInterfaceFactoryHook3):
    newPickedUpLayerInterfaceFactoryHook3 = proc (pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation): PickedUpLayerInterfaceFactoryBase = newPickedUpLayerInterfaceFactory(pickeUpLayerType, iconLayer, animationInterface)

