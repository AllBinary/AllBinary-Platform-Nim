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
# package org.allbinary.game.ag.layer.pickup.points

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
import org/allbinary/game/ag/layer/pickup/points/PointsLayerCircularStaticPool as PointsLayerCircularStaticPoolModule
export PointsLayerCircularStaticPoolModule

type
    Points20kPickedUpLayerInterfaceFactory* = ref object of PickedUpLayerInterfaceFactory
        pool*: PointsLayerCircularStaticPool

converter jAsPickupProcessorInterface*(value: Points20kPickedUpLayerInterfaceFactory): PickupProcessorInterface = cast[PickupProcessorInterface](value)
proc newPoints20kPickedUpLayerInterfaceFactory*(): Points20kPickedUpLayerInterfaceFactory
proc initPoints20kPickedUpLayerInterfaceFactory*(this: Points20kPickedUpLayerInterfaceFactory)
proc init*(t: typedesc[Points20kPickedUpLayerInterfaceFactory])
method getTotal*(this: Points20kPickedUpLayerInterfaceFactory): int32 {.base, discardable.}
proc getInstance*(t: typedesc[Points20kPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.}
method process*(this: Points20kPickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer)
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/game/configuration/GameConfigurationUtil as GameConfigurationUtilModule
export GameConfigurationUtilModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/IconLayerFactory as IconLayerFactoryModule
export IconLayerFactoryModule
import org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory as PickedUpLayerTypeFactoryModule
export PickedUpLayerTypeFactoryModule
import org/allbinary/game/ag/layer/pickup/points/PointsLayerFactory as PointsLayerFactoryModule
export PointsLayerFactoryModule
import org/allbinary/game/ag/layer/pickup/points/PointsResources as PointsResourcesModule
export PointsResourcesModule

var Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue: PickedUpLayerInterfaceFactoryInterface
var Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = false
proc pickedUpLayerInterfaceFactoryInterface*(t: typedesc[Points20kPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface =
    if not Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet:
        Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
        Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue
proc `pickedUpLayerInterfaceFactoryInterface=`*(t: typedesc[Points20kPickedUpLayerInterfaceFactory], value: PickedUpLayerInterfaceFactoryInterface) =
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = value

# Java field initializers run after the base initializer
proc initFieldsPoints20kPickedUpLayerInterfaceFactory(this: Points20kPickedUpLayerInterfaceFactory) =
    this.pool = newPointsLayerCircularStaticPool(newPointsLayerFactory(GameConfigurationUtil.getInstance().getCompetitionValue() *% 20000), 1)
    discard

proc init*(t: typedesc[Points20kPickedUpLayerInterfaceFactory]) =
        Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = newPoints20kPickedUpLayerInterfaceFactory()

proc initPoints20kPickedUpLayerInterfaceFactory*(this: Points20kPickedUpLayerInterfaceFactory) =
        initPickedUpLayerInterfaceFactory(this, PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0))
        this.initFieldsPoints20kPickedUpLayerInterfaceFactory()

proc newPoints20kPickedUpLayerInterfaceFactory*(): Points20kPickedUpLayerInterfaceFactory =
    result = Points20kPickedUpLayerInterfaceFactory()
    initPoints20kPickedUpLayerInterfaceFactory(result)

method getTotal*(this: Points20kPickedUpLayerInterfaceFactory): int32 {.base, discardable.} =
        return 1

proc getInstance*(t: typedesc[Points20kPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.} =
        return Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface

method process*(this: Points20kPickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer) =
        this.pool.visit(sourceLayerInterface)

when declared(newPoints20kPickedUpLayerInterfaceFactoryHook0):
    newPoints20kPickedUpLayerInterfaceFactoryHook0 = proc (): PickedUpLayerInterfaceFactory = newPoints20kPickedUpLayerInterfaceFactory()

