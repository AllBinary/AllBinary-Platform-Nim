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
# package org.allbinary.game.layer.resources

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/resources/OnDemandResources as OnDemandResourcesModule
export OnDemandResourcesModule

type
    OnDemandResourcesFactory* = ref object of JObject

proc newOnDemandResourcesFactory*(): OnDemandResourcesFactory
method size*(this: OnDemandResourcesFactory): int32 {.base, discardable.}
method remove*(this: OnDemandResourcesFactory, layerId: int32): OnDemandResources {.base, discardable.}


proc initOnDemandResourcesFactory*(this: OnDemandResourcesFactory) =
    discard

proc newOnDemandResourcesFactory*(): OnDemandResourcesFactory =
    result = OnDemandResourcesFactory()
    initOnDemandResourcesFactory(result)

method size*(this: OnDemandResourcesFactory): int32 {.base, discardable.} =
        return 0

method remove*(this: OnDemandResourcesFactory, layerId: int32): OnDemandResources {.base, discardable.} =
        return OnDemandResources.NULL_ON_DEMAND_RESOURCES

