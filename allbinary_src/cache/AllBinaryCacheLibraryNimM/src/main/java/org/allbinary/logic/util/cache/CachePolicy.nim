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

type
    CachePolicy* = ref object of JObject
        name*: string
        maxTime*: int64
        maxSize*: int64

proc newCachePolicy*(name: string, maxTime: int64, maxSize: int64): CachePolicy
proc initCachePolicy*(this: CachePolicy, name: string, maxTime: int64, maxSize: int64)
method getMaxTime*(this: CachePolicy): int64 {.base, discardable.}
method setMaxTime*(this: CachePolicy, maxTime: int64) {.base.}
method getMaxSize*(this: CachePolicy): int64 {.base, discardable.}
method setMaxSize*(this: CachePolicy, maxSize: int64) {.base.}
method getName*(this: CachePolicy): string {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsCachePolicy(this: CachePolicy) =
    
    this.maxTime = 0
    this.maxSize = 0
    discard

proc initCachePolicy*(this: CachePolicy, name: string, maxTime: int64, maxSize: int64) =
        this.initFieldsCachePolicy()
        this.name = name
        this.setMaxTime(maxTime)
        this.setMaxSize(maxSize)

proc newCachePolicy*(name: string, maxTime: int64, maxSize: int64): CachePolicy =
    result = CachePolicy()
    initCachePolicy(result, name, maxTime, maxSize)

method getMaxTime*(this: CachePolicy): int64 {.base, discardable.} =
        return this.maxTime

method setMaxTime*(this: CachePolicy, maxTime: int64) {.base.} =
        this.maxTime = maxTime

method getMaxSize*(this: CachePolicy): int64 {.base, discardable.} =
        return this.maxSize

method setMaxSize*(this: CachePolicy, maxSize: int64) {.base.} =
        this.maxSize = maxSize

method getName*(this: CachePolicy): string {.base, discardable.} =
        return this.name

