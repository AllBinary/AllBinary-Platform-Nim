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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/resource/ResourceLoadingLevel as ResourceLoadingLevelModule
export ResourceLoadingLevelModule

type
    ResourceLoadingLevelFactory* = ref object of JObject
        LOAD_EARLY*: ResourceLoadingLevel
        LOAD_TOUCH*: ResourceLoadingLevel
        LOAD_GAME*: ResourceLoadingLevel
        LEVEL*: ResourceLoadingLevel
        MAX_LEVEL*: ResourceLoadingLevel
        LOAD_ALL*: ResourceLoadingLevel
        RESOURCE_LOADING_LEVEL_ARRAY*: JArray[ResourceLoadingLevel]

proc newResourceLoadingLevelFactory*(): ResourceLoadingLevelFactory
proc getInstance*(t: typedesc[ResourceLoadingLevelFactory]): ResourceLoadingLevelFactory {.discardable.}
method getLevelString*(this: ResourceLoadingLevelFactory, level: int32): string {.base, discardable.}

var ResourceLoadingLevelFactory_instanceValue: ResourceLoadingLevelFactory
var ResourceLoadingLevelFactory_instanceSet = false
proc instance*(t: typedesc[ResourceLoadingLevelFactory]): ResourceLoadingLevelFactory =
    if not ResourceLoadingLevelFactory_instanceSet:
        ResourceLoadingLevelFactory_instanceSet = true
        ResourceLoadingLevelFactory_instanceValue = newResourceLoadingLevelFactory()
    ResourceLoadingLevelFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsResourceLoadingLevelFactory(this: ResourceLoadingLevelFactory) =
    this.LOAD_EARLY = newResourceLoadingLevel("Load Early", Integer.MAX_VALUE)
    this.LOAD_TOUCH = newResourceLoadingLevel("Load Touch", Integer.MAX_VALUE -% 1)
    this.LOAD_GAME = newResourceLoadingLevel("Load Game", Integer.MAX_VALUE -% 2)
    this.LEVEL = newResourceLoadingLevel("Level", Integer.MAX_VALUE -% 99)
    this.MAX_LEVEL = newResourceLoadingLevel("Max Level", Integer.MAX_VALUE -% 100)
    this.LOAD_ALL = newResourceLoadingLevel("Load All", -1)
    this.RESOURCE_LOADING_LEVEL_ARRAY = newJArrayFromRefs[ResourceLoadingLevel](this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY)
    discard

proc initResourceLoadingLevelFactory*(this: ResourceLoadingLevelFactory) =
    this.initFieldsResourceLoadingLevelFactory()

proc newResourceLoadingLevelFactory*(): ResourceLoadingLevelFactory =
    result = ResourceLoadingLevelFactory()
    initResourceLoadingLevelFactory(result)

proc getInstance*(t: typedesc[ResourceLoadingLevelFactory]): ResourceLoadingLevelFactory {.discardable.} =
        return ResourceLoadingLevelFactory.instance

method getLevelString*(this: ResourceLoadingLevelFactory, level: int32): string {.base, discardable.} =
        block:
            var index: int32 = 0
            while index < this.RESOURCE_LOADING_LEVEL_ARRAY.length:
                defer: index = index +% 1
                if level == this.RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel():
                    return this.RESOURCE_LOADING_LEVEL_ARRAY[index].getName()
        return jstr(level)

