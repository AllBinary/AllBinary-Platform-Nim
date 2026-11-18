# Generated Code Do Not Modify
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java

type
    BasicGameInfoFactory* = ref object of JObject
        currentReleaseIndex*: int32
        currentDestroyIndex*: int32
        total*: int32

proc newBasicGameInfoFactory*(): BasicGameInfoFactory
proc initBasicGameInfoFactory*(this: BasicGameInfoFactory)
proc getInstance*(t: typedesc[BasicGameInfoFactory]): BasicGameInfoFactory {.discardable.}
method init*(this: BasicGameInfoFactory, total: int32) {.base.}
method isPeaked*(this: BasicGameInfoFactory): bool {.base, discardable.}
method howManyLeft*(this: BasicGameInfoFactory): int32 {.base, discardable.}

var BasicGameInfoFactory_SINGLETONValue: BasicGameInfoFactory
var BasicGameInfoFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[BasicGameInfoFactory]): BasicGameInfoFactory =
    if not BasicGameInfoFactory_SINGLETONSet:
        BasicGameInfoFactory_SINGLETONSet = true
        BasicGameInfoFactory_SINGLETONValue = newBasicGameInfoFactory()
    BasicGameInfoFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsBasicGameInfoFactory(this: BasicGameInfoFactory) =
    this.currentReleaseIndex = 0
    this.currentDestroyIndex = 0
    this.total = 0
    discard

proc getInstance*(t: typedesc[BasicGameInfoFactory]): BasicGameInfoFactory {.discardable.} =
        return BasicGameInfoFactory.SINGLETON

proc initBasicGameInfoFactory*(this: BasicGameInfoFactory) =
        this.initFieldsBasicGameInfoFactory()
        discard

proc newBasicGameInfoFactory*(): BasicGameInfoFactory =
    result = BasicGameInfoFactory()
    initBasicGameInfoFactory(result)

method init*(this: BasicGameInfoFactory, total: int32) {.base.} =
        this.currentReleaseIndex = 0
        this.currentDestroyIndex = 0
        this.total = total

method isPeaked*(this: BasicGameInfoFactory): bool {.base, discardable.} =
        if this.currentDestroyIndex >= this.total:
            return true
        else:
            return false

method howManyLeft*(this: BasicGameInfoFactory): int32 {.base, discardable.} =
        return this.total -% this.currentDestroyIndex

