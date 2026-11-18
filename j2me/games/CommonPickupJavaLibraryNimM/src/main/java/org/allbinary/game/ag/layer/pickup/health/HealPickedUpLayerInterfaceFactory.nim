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
# package org.allbinary.game.ag.layer.pickup.health

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
import org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool as HealLayerCircularStaticPoolModule
export HealLayerCircularStaticPoolModule

type
    HealPickedUpLayerInterfaceFactory* = ref object of PickedUpLayerInterfaceFactory
        pool*: HealLayerCircularStaticPool

converter jAsPickupProcessorInterface*(value: HealPickedUpLayerInterfaceFactory): PickupProcessorInterface = cast[PickupProcessorInterface](value)
proc newHealPickedUpLayerInterfaceFactory*(): HealPickedUpLayerInterfaceFactory
proc initHealPickedUpLayerInterfaceFactory*(this: HealPickedUpLayerInterfaceFactory)
proc init*(t: typedesc[HealPickedUpLayerInterfaceFactory])
method getTotal*(this: HealPickedUpLayerInterfaceFactory): int32 {.base, discardable.}
proc getInstance*(t: typedesc[HealPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.}
method process*(this: HealPickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer)
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/IconLayerFactory as IconLayerFactoryModule
export IconLayerFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory as PickedUpLayerTypeFactoryModule
export PickedUpLayerTypeFactoryModule
import org/allbinary/game/ag/layer/pickup/health/HealLayerFactory as HealLayerFactoryModule
export HealLayerFactoryModule
import org/allbinary/game/ag/layer/pickup/health/HealthResources as HealthResourcesModule
export HealthResourcesModule

var HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue: PickedUpLayerInterfaceFactoryInterface
var HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = false
proc pickedUpLayerInterfaceFactoryInterface*(t: typedesc[HealPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface =
    if not HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet:
        HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
        HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue
proc `pickedUpLayerInterfaceFactoryInterface=`*(t: typedesc[HealPickedUpLayerInterfaceFactory], value: PickedUpLayerInterfaceFactoryInterface) =
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = value

# Java field initializers run after the base initializer
proc initFieldsHealPickedUpLayerInterfaceFactory(this: HealPickedUpLayerInterfaceFactory) =
    this.pool = newHealLayerCircularStaticPool(newHealLayerFactory(), 1)
    discard

proc init*(t: typedesc[HealPickedUpLayerInterfaceFactory]) =
        HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = newHealPickedUpLayerInterfaceFactory()

proc initHealPickedUpLayerInterfaceFactory*(this: HealPickedUpLayerInterfaceFactory) =
        initPickedUpLayerInterfaceFactory(this, PickedUpLayerTypeFactory.getInstance().HEAL, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(HealthResources.getInstance().RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(HealthResources.getInstance().RESOURCE).getInstance(0))
        this.initFieldsHealPickedUpLayerInterfaceFactory()

proc newHealPickedUpLayerInterfaceFactory*(): HealPickedUpLayerInterfaceFactory =
    result = HealPickedUpLayerInterfaceFactory()
    initHealPickedUpLayerInterfaceFactory(result)

method getTotal*(this: HealPickedUpLayerInterfaceFactory): int32 {.base, discardable.} =
        return 1

proc getInstance*(t: typedesc[HealPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.} =
        return HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface

method process*(this: HealPickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer) =
        this.pool.visit(sourceLayerInterface)

when declared(newHealPickedUpLayerInterfaceFactoryHook0):
    newHealPickedUpLayerInterfaceFactoryHook0 = proc (): PickedUpLayerInterfaceFactory = newHealPickedUpLayerInterfaceFactory()

