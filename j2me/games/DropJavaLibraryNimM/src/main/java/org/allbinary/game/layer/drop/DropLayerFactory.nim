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
# package org.allbinary.game.layer.drop

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

type
    DropLayerFactory* = ref object of JObject
        list*: BasicArrayList
        basicArrayListUtil*: BasicArrayListUtil

proc newDropLayerFactory*(): DropLayerFactory
proc initDropLayerFactory*(this: DropLayerFactory)
method clear*(this: DropLayerFactory) {.base.}
proc getInstance*(t: typedesc[DropLayerFactory]): DropLayerFactory {.discardable.}
method getSize*(this: DropLayerFactory): int32 {.base, discardable.}
method getRandomInstance*(this: DropLayerFactory): PickedUpLayerInterfaceFactoryInterface {.base, discardable.}
method add*(this: DropLayerFactory, layerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface) {.base.}
method getList*(this: DropLayerFactory): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var DropLayerFactory_DROP_LAYER_FACTORYValue: DropLayerFactory
var DropLayerFactory_DROP_LAYER_FACTORYSet = false
proc DROP_LAYER_FACTORYStatic*(t: typedesc[DropLayerFactory]): DropLayerFactory =
    if not DropLayerFactory_DROP_LAYER_FACTORYSet:
        DropLayerFactory_DROP_LAYER_FACTORYSet = true
        DropLayerFactory_DROP_LAYER_FACTORYValue = newDropLayerFactory()
    DropLayerFactory_DROP_LAYER_FACTORYValue

# Java field initializers run after the base initializer
proc initFieldsDropLayerFactory(this: DropLayerFactory) =
    this.list = newBasicArrayListD()
    this.basicArrayListUtil = BasicArrayListUtil.getInstance()
    discard

proc initDropLayerFactory*(this: DropLayerFactory) =
        this.initFieldsDropLayerFactory()
        discard

proc newDropLayerFactory*(): DropLayerFactory =
    result = DropLayerFactory()
    initDropLayerFactory(result)

method clear*(this: DropLayerFactory) {.base.} =
        this.list.clear()

proc getInstance*(t: typedesc[DropLayerFactory]): DropLayerFactory {.discardable.} =
        return DropLayerFactory.DROP_LAYER_FACTORYStatic

method getSize*(this: DropLayerFactory): int32 {.base, discardable.} =
        return this.list.size()

method getRandomInstance*(this: DropLayerFactory): PickedUpLayerInterfaceFactoryInterface {.base, discardable.} =
        return PickedUpLayerInterfaceFactoryInterface(JObject(this.basicArrayListUtil.getRandom(this.list)))

method add*(this: DropLayerFactory, layerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface) {.base.} =
        this.list.add(layerInterfaceFactoryInterface)

method getList*(this: DropLayerFactory): BasicArrayList {.base, discardable.} =
        return this.list

