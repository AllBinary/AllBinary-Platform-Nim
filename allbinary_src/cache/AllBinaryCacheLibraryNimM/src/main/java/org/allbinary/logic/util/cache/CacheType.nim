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

type
    CacheType* = ref object of JObject
        vendor*: string
        `type`*: string

proc newCacheType*(vendor: string, `type`: string): CacheType
proc initCacheType*(this: CacheType, vendor: string, `type`: string)
method getVendor*(this: CacheType): string {.base, discardable.}
method getType*(this: CacheType): string {.base, discardable.}
method toString*(this: CacheType): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


# Java field initializers run after the base initializer
proc initFieldsCacheType(this: CacheType) =
    
    
    discard

proc initCacheType*(this: CacheType, vendor: string, `type`: string) =
        this.initFieldsCacheType()
        this.vendor = vendor
        this.`type` = `type`

proc newCacheType*(vendor: string, `type`: string): CacheType =
    result = CacheType()
    initCacheType(result, vendor, `type`)

method getVendor*(this: CacheType): string {.base, discardable.} =
        return this.vendor

method getType*(this: CacheType): string {.base, discardable.} =
        return this.`type`

method toString*(this: CacheType): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("CacheType: Vendor: ")
        stringBuffer.append(this.getVendor())
        stringBuffer.append(" Type: ")
        stringBuffer.append(this.getType())
        return stringBuffer.toString()

