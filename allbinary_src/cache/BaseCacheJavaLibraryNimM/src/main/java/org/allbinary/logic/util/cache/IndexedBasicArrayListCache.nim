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
# package org.allbinary.logic.util.cache

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/util/cache/BaseBasicArrayListCache as BaseBasicArrayListCacheModule
export BaseBasicArrayListCacheModule
import org/allbinary/logic/util/cache/CacheInterface as CacheInterfaceModule
export CacheInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    IndexedBasicArrayListCache* = ref object of BaseBasicArrayListCache
        commonStrings*: CommonStrings
        size*: int32
        index*: int32

converter jAsCacheInterface*(value: IndexedBasicArrayListCache): CacheInterface = cast[CacheInterface](value)
proc newIndexedBasicArrayListCache*(): IndexedBasicArrayListCache
proc initIndexedBasicArrayListCache*(this: IndexedBasicArrayListCache)
proc createCache*(t: typedesc[IndexedBasicArrayListCache], size: int32): IndexedBasicArrayListCache {.discardable.}
method init*(this: IndexedBasicArrayListCache, size: int32) {.base.}
method getAt*(this: IndexedBasicArrayListCache, index: int32): JObject {.base, discardable.}
method addDefault*(this: IndexedBasicArrayListCache) {.base.}
method addObject*(this: IndexedBasicArrayListCache, anyType: JObject) {.base.}
method add*(this: IndexedBasicArrayListCache, cacheableInterface: CacheableInterface)
method addArray*(this: IndexedBasicArrayListCache, cacheableInterfaces: JArray[CacheableInterface])
method clear*(this: IndexedBasicArrayListCache)


# Java field initializers run after the base initializer
proc initFieldsIndexedBasicArrayListCache(this: IndexedBasicArrayListCache) =
    this.commonStrings = CommonStrings.getInstance()
    this.size = 0
    this.index = 0
    discard

proc createCache*(t: typedesc[IndexedBasicArrayListCache], size: int32): IndexedBasicArrayListCache {.discardable.} =
        let indexedBasicArrayListCache: IndexedBasicArrayListCache = newIndexedBasicArrayListCache()
        indexedBasicArrayListCache.init(size)
        return indexedBasicArrayListCache

proc initIndexedBasicArrayListCache*(this: IndexedBasicArrayListCache) =
        initBaseBasicArrayListCache(this)
        this.initFieldsIndexedBasicArrayListCache()
        discard

proc newIndexedBasicArrayListCache*(): IndexedBasicArrayListCache =
    result = IndexedBasicArrayListCache()
    initIndexedBasicArrayListCache(result)

method init*(this: IndexedBasicArrayListCache, size: int32) {.base.} =
        if this.size < size:
            this.list.ensureCapacity(size)
            block:
                var index: int32 = size -% 1
                while index >= this.size:
                    defer: index = index -% 1
                    this.addDefault()
            this.size = size

method getAt*(this: IndexedBasicArrayListCache, index: int32): JObject {.base, discardable.} =
        return this.list.objectArray[index]

method addDefault*(this: IndexedBasicArrayListCache) {.base.} =
        discard

method addObject*(this: IndexedBasicArrayListCache, anyType: JObject) {.base.} =
        this.list.add(anyType)

method add*(this: IndexedBasicArrayListCache, cacheableInterface: CacheableInterface) =
        this.list.add(cacheableInterface)

method addArray*(this: IndexedBasicArrayListCache, cacheableInterfaces: JArray[CacheableInterface]) =
        raise newJException("Exception", "No Imple")

method clear*(this: IndexedBasicArrayListCache) =
        this.index = 0

when declared(newIndexedBasicArrayListCacheHook0):
    newIndexedBasicArrayListCacheHook0 = proc (): BaseBasicArrayListCache = newIndexedBasicArrayListCache()

