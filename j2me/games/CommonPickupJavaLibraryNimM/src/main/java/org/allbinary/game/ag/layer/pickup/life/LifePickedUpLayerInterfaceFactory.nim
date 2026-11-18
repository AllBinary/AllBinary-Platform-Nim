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
# package org.allbinary.game.ag.layer.pickup.life

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory as PickedUpLayerInterfaceFactoryModule
export PickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/PickupProcessorInterface as PickupProcessorInterfaceModule
export PickupProcessorInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/ag/layer/pickup/life/LifeLayerCircularStaticPool as LifeLayerCircularStaticPoolModule
export LifeLayerCircularStaticPoolModule

type
    LifePickedUpLayerInterfaceFactory* = ref object of PickedUpLayerInterfaceFactory
        pool*: LifeLayerCircularStaticPool

converter jAsPickupProcessorInterface*(value: LifePickedUpLayerInterfaceFactory): PickupProcessorInterface = cast[PickupProcessorInterface](value)
proc newLifePickedUpLayerInterfaceFactory*(): LifePickedUpLayerInterfaceFactory
proc initLifePickedUpLayerInterfaceFactory*(this: LifePickedUpLayerInterfaceFactory)
proc init*(t: typedesc[LifePickedUpLayerInterfaceFactory])
method getTotal*(this: LifePickedUpLayerInterfaceFactory): int32 {.base, discardable.}
proc getInstance*(t: typedesc[LifePickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.}
method process*(this: LifePickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer)
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/IconLayerFactory as IconLayerFactoryModule
export IconLayerFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory as PickedUpLayerTypeFactoryModule
export PickedUpLayerTypeFactoryModule
import org/allbinary/game/ag/layer/pickup/life/LifeLayerFactory as LifeLayerFactoryModule
export LifeLayerFactoryModule
import org/allbinary/game/ag/layer/pickup/life/LifeResources as LifeResourcesModule
export LifeResourcesModule

var LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue: PickedUpLayerInterfaceFactoryInterface
var LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = false
proc pickedUpLayerInterfaceFactoryInterface*(t: typedesc[LifePickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface =
    if not LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet:
        LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
        LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue
proc `pickedUpLayerInterfaceFactoryInterface=`*(t: typedesc[LifePickedUpLayerInterfaceFactory], value: PickedUpLayerInterfaceFactoryInterface) =
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = value

# Java field initializers run after the base initializer
proc initFieldsLifePickedUpLayerInterfaceFactory(this: LifePickedUpLayerInterfaceFactory) =
    this.pool = newLifeLayerCircularStaticPool(newLifeLayerFactory(), 1)
    discard

proc init*(t: typedesc[LifePickedUpLayerInterfaceFactory]) =
        LifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = newLifePickedUpLayerInterfaceFactory()

proc initLifePickedUpLayerInterfaceFactory*(this: LifePickedUpLayerInterfaceFactory) =
        initPickedUpLayerInterfaceFactory(this, PickedUpLayerTypeFactory.getInstance().LIFE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LifeResources.getInstance().RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LifeResources.getInstance().RESOURCE).getInstance(0))
        this.initFieldsLifePickedUpLayerInterfaceFactory()

proc newLifePickedUpLayerInterfaceFactory*(): LifePickedUpLayerInterfaceFactory =
    result = LifePickedUpLayerInterfaceFactory()
    initLifePickedUpLayerInterfaceFactory(result)

method getTotal*(this: LifePickedUpLayerInterfaceFactory): int32 {.base, discardable.} =
        return 1

proc getInstance*(t: typedesc[LifePickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.} =
        return LifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface

method process*(this: LifePickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer) =
        this.pool.visit(sourceLayerInterface)

when declared(newLifePickedUpLayerInterfaceFactoryHook0):
    newLifePickedUpLayerInterfaceFactoryHook0 = proc (): PickedUpLayerInterfaceFactory = newLifePickedUpLayerInterfaceFactory()

