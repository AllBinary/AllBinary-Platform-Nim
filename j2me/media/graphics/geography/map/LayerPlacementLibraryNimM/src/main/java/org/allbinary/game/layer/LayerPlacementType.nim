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

type
    LayerPlacementType* = ref object of JObject
        `type`*: int32

proc newLayerPlacementType*(`type`: int32): LayerPlacementType
proc initLayerPlacementType*(this: LayerPlacementType, `type`: int32)
method getType*(this: LayerPlacementType): int32 {.base, discardable.}
method setType*(this: LayerPlacementType, `type`: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsLayerPlacementType(this: LayerPlacementType) =
    
    discard

proc initLayerPlacementType*(this: LayerPlacementType, `type`: int32) =
        this.initFieldsLayerPlacementType()
        this.`type` = `type`

proc newLayerPlacementType*(`type`: int32): LayerPlacementType =
    result = LayerPlacementType()
    initLayerPlacementType(result, `type`)

method getType*(this: LayerPlacementType): int32 {.base, discardable.} =
        return this.`type`

method setType*(this: LayerPlacementType, `type`: int32) {.base.} =
        this.`type` = `type`

