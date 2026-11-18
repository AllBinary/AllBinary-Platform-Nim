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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/GameFeatureControlledInterface as GameFeatureControlledInterfaceModule
export GameFeatureControlledInterfaceModule
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    ResourceRelativeRelationshipFactoryInterface* = ref object of GameFeatureControlledInterface


method getResourceRelativeRelationshipList*(this: ResourceRelativeRelationshipFactoryInterface, resource: string): BasicArrayList {.base, discardable.} =
        raise newJException("AbstractMethodError", "getResourceRelativeRelationshipList")

method addResourceRelativeRelationship*(this: ResourceRelativeRelationshipFactoryInterface, resource: string, relativeRelationship: RelativeRelationship) {.base.} =
        raise newJException("AbstractMethodError", "addResourceRelativeRelationship")

