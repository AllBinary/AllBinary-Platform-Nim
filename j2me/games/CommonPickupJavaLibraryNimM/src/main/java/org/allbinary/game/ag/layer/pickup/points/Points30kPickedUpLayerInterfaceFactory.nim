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
    Points30kPickedUpLayerInterfaceFactory* = ref object of PickedUpLayerInterfaceFactory
        pool*: PointsLayerCircularStaticPool

converter jAsPickupProcessorInterface*(value: Points30kPickedUpLayerInterfaceFactory): PickupProcessorInterface = cast[PickupProcessorInterface](value)
proc newPoints30kPickedUpLayerInterfaceFactory*(): Points30kPickedUpLayerInterfaceFactory
proc initPoints30kPickedUpLayerInterfaceFactory*(this: Points30kPickedUpLayerInterfaceFactory)
proc init*(t: typedesc[Points30kPickedUpLayerInterfaceFactory])
method getTotal*(this: Points30kPickedUpLayerInterfaceFactory): int32 {.base, discardable.}
proc getInstance*(t: typedesc[Points30kPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.}
method process*(this: Points30kPickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer)
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

var Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue: PickedUpLayerInterfaceFactoryInterface
var Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = false
proc pickedUpLayerInterfaceFactoryInterface*(t: typedesc[Points30kPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface =
    if not Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet:
        Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
        Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue
proc `pickedUpLayerInterfaceFactoryInterface=`*(t: typedesc[Points30kPickedUpLayerInterfaceFactory], value: PickedUpLayerInterfaceFactoryInterface) =
    Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = true
    Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = value

# Java field initializers run after the base initializer
proc initFieldsPoints30kPickedUpLayerInterfaceFactory(this: Points30kPickedUpLayerInterfaceFactory) =
    this.pool = newPointsLayerCircularStaticPool(newPointsLayerFactory(GameConfigurationUtil.getInstance().getCompetitionValue() *% 30000), 1)
    discard

proc init*(t: typedesc[Points30kPickedUpLayerInterfaceFactory]) =
        Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = newPoints30kPickedUpLayerInterfaceFactory()

proc initPoints30kPickedUpLayerInterfaceFactory*(this: Points30kPickedUpLayerInterfaceFactory) =
        initPickedUpLayerInterfaceFactory(this, PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_3).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_3).getInstance(0))
        this.initFieldsPoints30kPickedUpLayerInterfaceFactory()

proc newPoints30kPickedUpLayerInterfaceFactory*(): Points30kPickedUpLayerInterfaceFactory =
    result = Points30kPickedUpLayerInterfaceFactory()
    initPoints30kPickedUpLayerInterfaceFactory(result)

method getTotal*(this: Points30kPickedUpLayerInterfaceFactory): int32 {.base, discardable.} =
        return 1

proc getInstance*(t: typedesc[Points30kPickedUpLayerInterfaceFactory]): PickedUpLayerInterfaceFactoryInterface {.discardable.} =
        return Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface

method process*(this: Points30kPickedUpLayerInterfaceFactory, sourceLayerInterface: AllBinaryLayer) =
        this.pool.visit(sourceLayerInterface)

when declared(newPoints30kPickedUpLayerInterfaceFactoryHook0):
    newPoints30kPickedUpLayerInterfaceFactoryHook0 = proc (): PickedUpLayerInterfaceFactory = newPoints30kPickedUpLayerInterfaceFactory()

