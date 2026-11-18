# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/cache/CacheType as CacheTypeModule
export CacheTypeModule

type
    CacheTypeFactory* = ref object of JObject
        NO_CACHE*: CacheType
        CACHE*: CacheType
        SET*: CacheType
        CACHE_VECTOR*: CacheType

proc newCacheTypeFactory*(): CacheTypeFactory
proc getInstance*(t: typedesc[CacheTypeFactory]): CacheTypeFactory {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var CacheTypeFactory_instanceValue: CacheTypeFactory
var CacheTypeFactory_instanceSet = false
proc instance*(t: typedesc[CacheTypeFactory]): CacheTypeFactory =
    if not CacheTypeFactory_instanceSet:
        CacheTypeFactory_instanceSet = true
        CacheTypeFactory_instanceValue = newCacheTypeFactory()
    CacheTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCacheTypeFactory(this: CacheTypeFactory) =
    this.NO_CACHE = newCacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    this.CACHE = newCacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    this.SET = newCacheType(StringUtil.getInstance().EMPTY_STRING, "Set")
    this.CACHE_VECTOR = newCacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    discard

proc initCacheTypeFactory*(this: CacheTypeFactory) =
    this.initFieldsCacheTypeFactory()

proc newCacheTypeFactory*(): CacheTypeFactory =
    result = CacheTypeFactory()
    initCacheTypeFactory(result)

proc getInstance*(t: typedesc[CacheTypeFactory]): CacheTypeFactory {.discardable.} =
        return CacheTypeFactory.instance

