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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/relationship/RelativeLayerRelationship as RelativeLayerRelationshipModule
export RelativeLayerRelationshipModule

type
    MiddleRelativeLayerRelationship* = ref object of RelativeLayerRelationship

proc newMiddleRelativeLayerRelationship*(layer: AllBinaryLayer): MiddleRelativeLayerRelationship
proc initMiddleRelativeLayerRelationship*(this: MiddleRelativeLayerRelationship, layer: AllBinaryLayer)
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule


proc initMiddleRelativeLayerRelationship*(this: MiddleRelativeLayerRelationship, layer: AllBinaryLayer) =
        initRelativeLayerRelationship(this, layer, PointFactory.getInstance().createXY(layer.getHalfWidth(), layer.getHalfHeight()), BasicArrayListUtil.getInstance().getImmutableInstance())

proc newMiddleRelativeLayerRelationship*(layer: AllBinaryLayer): MiddleRelativeLayerRelationship =
    result = MiddleRelativeLayerRelationship()
    initMiddleRelativeLayerRelationship(result, layer)

when declared(newMiddleRelativeLayerRelationshipHook1):
    newMiddleRelativeLayerRelationshipHook1 = proc (layer: AllBinaryLayer): RelativeLayerRelationship = newMiddleRelativeLayerRelationship(layer)

