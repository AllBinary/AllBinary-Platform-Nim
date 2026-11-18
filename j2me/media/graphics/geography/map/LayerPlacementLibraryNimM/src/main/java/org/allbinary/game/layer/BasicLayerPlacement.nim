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
import org/allbinary/game/layer/LayerPlacementType as LayerPlacementTypeModule
export LayerPlacementTypeModule

type
    BasicLayerPlacement* = ref object of JObject
        layerType*: LayerPlacementType
        width*: int32
        height*: int32

proc newBasicLayerPlacement*(layerType: LayerPlacementType, width: int32, height: int32): BasicLayerPlacement
proc initBasicLayerPlacement*(this: BasicLayerPlacement, layerType: LayerPlacementType, width: int32, height: int32)
method getWidth*(this: BasicLayerPlacement): int32 {.base, discardable.}
method getHeight*(this: BasicLayerPlacement): int32 {.base, discardable.}
method getLayerType*(this: BasicLayerPlacement): LayerPlacementType {.base, discardable.}
method setLayerType*(this: BasicLayerPlacement, layerType: LayerPlacementType) {.base.}


# Java field initializers run after the base initializer
proc initFieldsBasicLayerPlacement(this: BasicLayerPlacement) =
    
    
    
    discard

proc initBasicLayerPlacement*(this: BasicLayerPlacement, layerType: LayerPlacementType, width: int32, height: int32) =
        this.initFieldsBasicLayerPlacement()
        this.layerType = layerType
        this.width = width
        this.height = height

proc newBasicLayerPlacement*(layerType: LayerPlacementType, width: int32, height: int32): BasicLayerPlacement =
    result = BasicLayerPlacement()
    initBasicLayerPlacement(result, layerType, width, height)

method getWidth*(this: BasicLayerPlacement): int32 {.base, discardable.} =
        return this.width

method getHeight*(this: BasicLayerPlacement): int32 {.base, discardable.} =
        return this.height

method getLayerType*(this: BasicLayerPlacement): LayerPlacementType {.base, discardable.} =
        return this.layerType

method setLayerType*(this: BasicLayerPlacement, layerType: LayerPlacementType) {.base.} =
        this.layerType = layerType

