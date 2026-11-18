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
import java/lang/Long as LongModule
export LongModule
import org/allbinary/logic/util/cache/CachePolicy as CachePolicyModule
export CachePolicyModule

type
    CachePolicyFactory* = ref object of JObject
        NAME*: string
        MAX_TIME_THOUSAND_MAX*: CachePolicy
        THIRTY_MINUTES_TEN_THOUSAND_MAX*: CachePolicy
        THIRTY_MINUTES_FIFTY_THOUSAND_MAX*: CachePolicy
        ONE_MINUTE_FIVE_MAX*: CachePolicy
        ONE_MINUTE_TEN_MAX*: CachePolicy
        ONE_MINUTE_ONE_HUNDRED_MAX*: CachePolicy

proc newCachePolicyFactory*(): CachePolicyFactory
proc getInstance*(t: typedesc[CachePolicyFactory]): CachePolicyFactory {.discardable.}

var CachePolicyFactory_instanceValue: CachePolicyFactory
var CachePolicyFactory_instanceSet = false
proc instance*(t: typedesc[CachePolicyFactory]): CachePolicyFactory =
    if not CachePolicyFactory_instanceSet:
        CachePolicyFactory_instanceSet = true
        CachePolicyFactory_instanceValue = newCachePolicyFactory()
    CachePolicyFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCachePolicyFactory(this: CachePolicyFactory) =
    this.NAME = "lru"
    this.MAX_TIME_THOUSAND_MAX = newCachePolicy(this.NAME, Long.MAX_VALUE, 1000)
    this.THIRTY_MINUTES_TEN_THOUSAND_MAX = newCachePolicy(this.NAME, 1000 * 60 *% 30, 10000)
    this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = newCachePolicy(this.NAME, 1000 * 60 *% 30, 100000)
    this.ONE_MINUTE_FIVE_MAX = newCachePolicy(this.NAME, 1000 * 60 *% 1, 5)
    this.ONE_MINUTE_TEN_MAX = newCachePolicy(this.NAME, 1000 * 60 *% 1, 10)
    this.ONE_MINUTE_ONE_HUNDRED_MAX = newCachePolicy(this.NAME, 1000 * 60 *% 1, 100)
    discard

proc initCachePolicyFactory*(this: CachePolicyFactory) =
    this.initFieldsCachePolicyFactory()

proc newCachePolicyFactory*(): CachePolicyFactory =
    result = CachePolicyFactory()
    initCachePolicyFactory(result)

proc getInstance*(t: typedesc[CachePolicyFactory]): CachePolicyFactory {.discardable.} =
        return CachePolicyFactory.instance

