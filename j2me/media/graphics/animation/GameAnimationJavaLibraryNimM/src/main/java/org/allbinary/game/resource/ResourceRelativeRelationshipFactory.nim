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
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface as ResourceRelativeRelationshipFactoryInterfaceModule
export ResourceRelativeRelationshipFactoryInterfaceModule

type
    ResourceRelativeRelationshipFactory* = ref object of ResourceRelativeRelationshipFactoryInterface
        basicArrayListUtil*: BasicArrayListUtil
        hashtable*: ABHashtable
        initialized*: bool

proc newResourceRelativeRelationshipFactory*(): ResourceRelativeRelationshipFactory
method init*(this: ResourceRelativeRelationshipFactory, level: int32)
method getResourceRelativeRelationshipList*(this: ResourceRelativeRelationshipFactory, resource: string): BasicArrayList {.discardable.}
method addResourceRelativeRelationship*(this: ResourceRelativeRelationshipFactory, resource: string, hardPoint: RelativeRelationship)
method isLoadingLevel*(this: ResourceRelativeRelationshipFactory, level: int32): bool {.discardable.}
method isFeature*(this: ResourceRelativeRelationshipFactory): bool {.discardable.}
method setInitialized*(this: ResourceRelativeRelationshipFactory, initialized: bool) {.base.}
method isInitialized*(this: ResourceRelativeRelationshipFactory): bool {.base, discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsResourceRelativeRelationshipFactory(this: ResourceRelativeRelationshipFactory) =
    this.basicArrayListUtil = BasicArrayListUtil.getInstance()
    this.hashtable = StdUtil.getInstance().createHashtable()
    this.initialized = false
    discard

proc initResourceRelativeRelationshipFactory*(this: ResourceRelativeRelationshipFactory) =
    this.initFieldsResourceRelativeRelationshipFactory()

proc newResourceRelativeRelationshipFactory*(): ResourceRelativeRelationshipFactory =
    result = ResourceRelativeRelationshipFactory()
    initResourceRelativeRelationshipFactory(result)

method init*(this: ResourceRelativeRelationshipFactory, level: int32) =
        this.setInitialized(true)

method getResourceRelativeRelationshipList*(this: ResourceRelativeRelationshipFactory, resource: string): BasicArrayList {.discardable.} =
        let listCanBeNull: JObject = this.hashtable.get(resource)
        if (jIsNil(listCanBeNull)):
            return this.basicArrayListUtil.getImmutableInstance()
        return BasicArrayList(JObject(listCanBeNull))

method addResourceRelativeRelationship*(this: ResourceRelativeRelationshipFactory, resource: string, hardPoint: RelativeRelationship) =
        var list: BasicArrayList = this.getResourceRelativeRelationshipList(resource)
        if list == this.basicArrayListUtil.getImmutableInstance():
            list = newBasicArrayListD()
        list.add(hardPoint)
        this.hashtable.put(resource, list)

method isLoadingLevel*(this: ResourceRelativeRelationshipFactory, level: int32): bool {.discardable.} =
        return false

method isFeature*(this: ResourceRelativeRelationshipFactory): bool {.discardable.} =
        return false

method setInitialized*(this: ResourceRelativeRelationshipFactory, initialized: bool) {.base.} =
        this.initialized = initialized

method isInitialized*(this: ResourceRelativeRelationshipFactory): bool {.base, discardable.} =
        return this.initialized

