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
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/layer/LayerPlacementType as LayerPlacementTypeModule
export LayerPlacementTypeModule

type
    LayerPlacementInterface* = ref object of JObject


method getWidth*(this: LayerPlacementInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getWidth")

method getHeight*(this: LayerPlacementInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHeight")

method getLayerType*(this: LayerPlacementInterface): LayerPlacementType {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLayerType")

method getInstance*(this: LayerPlacementInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "getInstance")

