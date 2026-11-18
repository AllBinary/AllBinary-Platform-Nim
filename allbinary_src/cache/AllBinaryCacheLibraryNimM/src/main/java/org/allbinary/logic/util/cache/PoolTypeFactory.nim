# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/cache/PoolType as PoolTypeModule
export PoolTypeModule

type
    PoolTypeFactory* = ref object of JObject
        VECTOR_POOL*: PoolType

proc newPoolTypeFactory*(): PoolTypeFactory
proc getInstance*(t: typedesc[PoolTypeFactory]): PoolTypeFactory {.discardable.}
import org/allbinary/logic/util/cache/CacheTypeFactory as CacheTypeFactoryModule
export CacheTypeFactoryModule

var PoolTypeFactory_instanceValue: PoolTypeFactory
var PoolTypeFactory_instanceSet = false
proc instance*(t: typedesc[PoolTypeFactory]): PoolTypeFactory =
    if not PoolTypeFactory_instanceSet:
        PoolTypeFactory_instanceSet = true
        PoolTypeFactory_instanceValue = newPoolTypeFactory()
    PoolTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPoolTypeFactory(this: PoolTypeFactory) =
    this.VECTOR_POOL = newPoolType(CacheTypeFactory.getInstance().NO_CACHE)
    discard

proc initPoolTypeFactory*(this: PoolTypeFactory) =
    this.initFieldsPoolTypeFactory()

proc newPoolTypeFactory*(): PoolTypeFactory =
    result = PoolTypeFactory()
    initPoolTypeFactory(result)

proc getInstance*(t: typedesc[PoolTypeFactory]): PoolTypeFactory {.discardable.} =
        return PoolTypeFactory.instance

