#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
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
import org/allbinary/logic/util/cache/CacheType as CacheTypeModule
export CacheTypeModule

type
    PoolType* = ref object of JObject
        cacheType*: CacheType

proc newPoolType*(cacheType: CacheType): PoolType
proc initPoolType*(this: PoolType, cacheType: CacheType)
method getCacheType*(this: PoolType): CacheType {.base, discardable.}
method toString*(this: PoolType): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsPoolType(this: PoolType) =
    
    discard

proc initPoolType*(this: PoolType, cacheType: CacheType) =
        this.initFieldsPoolType()
        this.cacheType = cacheType

proc newPoolType*(cacheType: CacheType): PoolType =
    result = PoolType()
    initPoolType(result, cacheType)

method getCacheType*(this: PoolType): CacheType {.base, discardable.} =
        return this.cacheType

method toString*(this: PoolType): string {.discardable.} =
        let POOL_TYPE: string = "PoolType: "
        return jstr(POOL_TYPE) & jstr(this.getCacheType().toString())

