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
# package org.allbinary.game.configuration.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/resource/ResourceLoadingLevel as ResourceLoadingLevelModule
export ResourceLoadingLevelModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    GameInitializedEvent* = ref object of AllBinaryEventObject
        resourceLoadingLevel*: ResourceLoadingLevel
        level*: int32

proc newGameInitializedEvent*(anyType: JObject): GameInitializedEvent
proc initGameInitializedEvent*(this: GameInitializedEvent, anyType: JObject)
method setLevel*(this: GameInitializedEvent, level: int32) {.base.}
method getLevel*(this: GameInitializedEvent): int32 {.base, discardable.}
method setResourceLoadingLevel*(this: GameInitializedEvent, resourceLoadingLevel: ResourceLoadingLevel) {.base.}
method getResourceLoadingLevel*(this: GameInitializedEvent): ResourceLoadingLevel {.base, discardable.}
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGameInitializedEvent(this: GameInitializedEvent) =
    this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL
    this.level = 0
    discard

proc initGameInitializedEvent*(this: GameInitializedEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsGameInitializedEvent()

proc newGameInitializedEvent*(anyType: JObject): GameInitializedEvent =
    result = GameInitializedEvent()
    initGameInitializedEvent(result, anyType)

method setLevel*(this: GameInitializedEvent, level: int32) {.base.} =
        this.level = level
        this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL

method getLevel*(this: GameInitializedEvent): int32 {.base, discardable.} =
        return this.level

method setResourceLoadingLevel*(this: GameInitializedEvent, resourceLoadingLevel: ResourceLoadingLevel) {.base.} =
        this.resourceLoadingLevel = resourceLoadingLevel
        this.level = this.resourceLoadingLevel.getLevel()

method getResourceLoadingLevel*(this: GameInitializedEvent): ResourceLoadingLevel {.base, discardable.} =
        return this.resourceLoadingLevel

when declared(newGameInitializedEventHook1):
    newGameInitializedEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newGameInitializedEvent(anyType)

