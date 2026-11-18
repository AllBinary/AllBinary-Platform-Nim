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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/layer/LayerPlacementType as LayerPlacementTypeModule
export LayerPlacementTypeModule

type
    LayerPlacementTypeFactory* = ref object of JObject
        MAP*: LayerPlacementType
        LEFT*: LayerPlacementType
        DOWN*: LayerPlacementType
        UP*: LayerPlacementType
        RIGHT*: LayerPlacementType

proc newLayerPlacementTypeFactory*(): LayerPlacementTypeFactory
proc getInstance*(t: typedesc[LayerPlacementTypeFactory]): LayerPlacementTypeFactory {.discardable.}
import org/allbinary/direction/DirectionFactory as DirectionFactoryModule
export DirectionFactoryModule

var LayerPlacementTypeFactory_instanceValue: LayerPlacementTypeFactory
var LayerPlacementTypeFactory_instanceSet = false
proc instance*(t: typedesc[LayerPlacementTypeFactory]): LayerPlacementTypeFactory =
    if not LayerPlacementTypeFactory_instanceSet:
        LayerPlacementTypeFactory_instanceSet = true
        LayerPlacementTypeFactory_instanceValue = newLayerPlacementTypeFactory()
    LayerPlacementTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLayerPlacementTypeFactory(this: LayerPlacementTypeFactory) =
    this.MAP = newLayerPlacementType(Integer.MAX_VALUE)
    this.LEFT = newLayerPlacementType(DirectionFactory.getInstance().LEFT.getValue())
    this.DOWN = newLayerPlacementType(DirectionFactory.getInstance().DOWN.getValue())
    this.UP = newLayerPlacementType(DirectionFactory.getInstance().UP.getValue())
    this.RIGHT = newLayerPlacementType(DirectionFactory.getInstance().RIGHT.getValue())
    discard

proc initLayerPlacementTypeFactory*(this: LayerPlacementTypeFactory) =
    this.initFieldsLayerPlacementTypeFactory()

proc newLayerPlacementTypeFactory*(): LayerPlacementTypeFactory =
    result = LayerPlacementTypeFactory()
    initLayerPlacementTypeFactory(result)

proc getInstance*(t: typedesc[LayerPlacementTypeFactory]): LayerPlacementTypeFactory {.discardable.} =
        return LayerPlacementTypeFactory.instance

