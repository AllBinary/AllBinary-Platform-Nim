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
# package org.allbinary.layer.relationship

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    RelativeLayerRelationship* = ref object of RelativeRelationship
        layer*: AllBinaryLayer

proc newRelativeLayerRelationship*(layer: AllBinaryLayer, point: GPoint, typesAllowedList: BasicArrayList): RelativeLayerRelationship
proc initRelativeLayerRelationship*(this: RelativeLayerRelationship, layer: AllBinaryLayer, point: GPoint, typesAllowedList: BasicArrayList)
method getX*(this: RelativeLayerRelationship): int32 {.discardable.}
method getY*(this: RelativeLayerRelationship): int32 {.discardable.}
method getZ*(this: RelativeLayerRelationship): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsRelativeLayerRelationship(this: RelativeLayerRelationship) =
    this.layer = AllBinaryLayer.NULL_ALLBINARY_LAYER
    discard

proc initRelativeLayerRelationship*(this: RelativeLayerRelationship, layer: AllBinaryLayer, point: GPoint, typesAllowedList: BasicArrayList) =
        initRelativeRelationship(this, point, typesAllowedList)
        this.initFieldsRelativeLayerRelationship()
        this.layer = layer

proc newRelativeLayerRelationship*(layer: AllBinaryLayer, point: GPoint, typesAllowedList: BasicArrayList): RelativeLayerRelationship =
    result = RelativeLayerRelationship()
    initRelativeLayerRelationship(result, layer, point, typesAllowedList)

method getX*(this: RelativeLayerRelationship): int32 {.discardable.} =
        return this.layer.getXP() +% procCall RelativeRelationship(this).getX()

method getY*(this: RelativeLayerRelationship): int32 {.discardable.} =
        return this.layer.getYP() +% procCall RelativeRelationship(this).getY()

method getZ*(this: RelativeLayerRelationship): int32 {.discardable.} =
        return this.layer.getZP() +% procCall RelativeRelationship(this).getZ()

when declared(newRelativeLayerRelationshipHook3):
    newRelativeLayerRelationshipHook3 = proc (layer: AllBinaryLayer, point: GPoint, typesAllowedList: BasicArrayList): RelativeRelationship = newRelativeLayerRelationship(layer, point, typesAllowedList)

