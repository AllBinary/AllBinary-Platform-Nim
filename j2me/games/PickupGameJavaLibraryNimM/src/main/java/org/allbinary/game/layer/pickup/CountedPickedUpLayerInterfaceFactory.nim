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
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory as PickedUpLayerInterfaceFactoryModule
export PickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface as CountedPickedUpLayerInterfaceFactoryInterfaceModule
export CountedPickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/IconLayer as IconLayerModule
export IconLayerModule
import org/allbinary/game/layer/pickup/PickedUpLayerType as PickedUpLayerTypeModule
export PickedUpLayerTypeModule

type
    CountedPickedUpLayerInterfaceFactory* = ref object of PickedUpLayerInterfaceFactory
        id*: int32

converter jAsCountedPickedUpLayerInterfaceFactoryInterface*(value: CountedPickedUpLayerInterfaceFactory): CountedPickedUpLayerInterfaceFactoryInterface = cast[CountedPickedUpLayerInterfaceFactoryInterface](value)
proc newCountedPickedUpLayerInterfaceFactory*(pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation): CountedPickedUpLayerInterfaceFactory
proc initCountedPickedUpLayerInterfaceFactory*(this: CountedPickedUpLayerInterfaceFactory, pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation)
method getNextInstance*(this: CountedPickedUpLayerInterfaceFactory, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.discardable.}
method getTotal*(this: CountedPickedUpLayerInterfaceFactory): int32 {.discardable.}
method getId*(this: CountedPickedUpLayerInterfaceFactory): int32 {.discardable.}
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory as PickedUpLayerTypeFactoryModule
export PickedUpLayerTypeFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool as CountedPickedUpLayerInterfaceFactoryPoolModule
export CountedPickedUpLayerInterfaceFactoryPoolModule

var CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue: CountedPickedUpLayerInterfaceFactory
var CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet = false
proc NULL_COUNTED_PICKUP_LAYER_FACTORY*(t: typedesc[CountedPickedUpLayerInterfaceFactory]): CountedPickedUpLayerInterfaceFactory =
    if not CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet:
        CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet = true
        CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue = newCountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer.NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance(0))
    CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue

# Java field initializers run after the base initializer
proc initFieldsCountedPickedUpLayerInterfaceFactory(this: CountedPickedUpLayerInterfaceFactory) =
    
    discard

proc initCountedPickedUpLayerInterfaceFactory*(this: CountedPickedUpLayerInterfaceFactory, pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation) =
        initPickedUpLayerInterfaceFactory(this, pickeUpLayerType, iconLayer, animationInterface)
        this.initFieldsCountedPickedUpLayerInterfaceFactory()
        var list: BasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        this.id = list.size()
        list.add(this)

proc newCountedPickedUpLayerInterfaceFactory*(pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation): CountedPickedUpLayerInterfaceFactory =
    result = CountedPickedUpLayerInterfaceFactory()
    initCountedPickedUpLayerInterfaceFactory(result, pickeUpLayerType, iconLayer, animationInterface)

method getNextInstance*(this: CountedPickedUpLayerInterfaceFactory, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.discardable.} =
        raise newJException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED)

method getTotal*(this: CountedPickedUpLayerInterfaceFactory): int32 {.discardable.} =
        return -1

method getId*(this: CountedPickedUpLayerInterfaceFactory): int32 {.discardable.} =
        return this.id

when declared(newCountedPickedUpLayerInterfaceFactoryHook3):
    newCountedPickedUpLayerInterfaceFactoryHook3 = proc (pickeUpLayerType: PickedUpLayerType, iconLayer: IconLayer, animationInterface: Animation): PickedUpLayerInterfaceFactory = newCountedPickedUpLayerInterfaceFactory(pickeUpLayerType, iconLayer, animationInterface)

