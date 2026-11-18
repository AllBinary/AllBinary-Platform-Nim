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
# package org.allbinary.game.part

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule

type
    PartFactoryInterface* = ref object of JObject


method getInstance*(this: PartFactoryInterface, sourceLayerInterface: AllBinaryLayer, relativeRelationship: RelativeRelationship): PartInterface {.base, discardable.} =
        raise newJException("AbstractMethodError", "getInstance")

