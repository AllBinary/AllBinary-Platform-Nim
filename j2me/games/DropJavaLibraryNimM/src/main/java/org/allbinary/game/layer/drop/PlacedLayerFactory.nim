# Generated Code Do Not Modify
# package org.allbinary.game.layer.drop

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

type
    PlacedLayerFactory* = ref object of JObject
        list*: BasicArrayList
        basicArrayListUtil*: BasicArrayListUtil

proc newPlacedLayerFactory*(): PlacedLayerFactory
proc initPlacedLayerFactory*(this: PlacedLayerFactory)
method clear*(this: PlacedLayerFactory) {.base.}
proc getInstance*(t: typedesc[PlacedLayerFactory]): PlacedLayerFactory {.discardable.}
method getSize*(this: PlacedLayerFactory): int32 {.base, discardable.}
method getRandomInstance*(this: PlacedLayerFactory): AllBinaryLayerFactoryInterface {.base, discardable.}
method add*(this: PlacedLayerFactory, layerInterfaceFactoryInterface: AllBinaryLayerFactoryInterface) {.base.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var PlacedLayerFactory_instanceValue: PlacedLayerFactory
var PlacedLayerFactory_instanceSet = false
proc instance*(t: typedesc[PlacedLayerFactory]): PlacedLayerFactory =
    if not PlacedLayerFactory_instanceSet:
        PlacedLayerFactory_instanceSet = true
        PlacedLayerFactory_instanceValue = newPlacedLayerFactory()
    PlacedLayerFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPlacedLayerFactory(this: PlacedLayerFactory) =
    this.list = newBasicArrayListD()
    this.basicArrayListUtil = BasicArrayListUtil.getInstance()
    discard

proc initPlacedLayerFactory*(this: PlacedLayerFactory) =
        this.initFieldsPlacedLayerFactory()
        discard

proc newPlacedLayerFactory*(): PlacedLayerFactory =
    result = PlacedLayerFactory()
    initPlacedLayerFactory(result)

method clear*(this: PlacedLayerFactory) {.base.} =
        this.list.clear()

proc getInstance*(t: typedesc[PlacedLayerFactory]): PlacedLayerFactory {.discardable.} =
        return PlacedLayerFactory.instance

method getSize*(this: PlacedLayerFactory): int32 {.base, discardable.} =
        return this.list.size()

method getRandomInstance*(this: PlacedLayerFactory): AllBinaryLayerFactoryInterface {.base, discardable.} =
        return AllBinaryLayerFactoryInterface(JObject(this.basicArrayListUtil.getRandom(this.list)))

method add*(this: PlacedLayerFactory, layerInterfaceFactoryInterface: AllBinaryLayerFactoryInterface) {.base.} =
        this.list.add(layerInterfaceFactoryInterface)

