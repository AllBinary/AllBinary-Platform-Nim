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
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule

type
    BasicArrayListCacheable* = ref object of BasicArrayListD

converter jAsCacheableInterface*(value: BasicArrayListCacheable): CacheableInterface = cast[CacheableInterface](value)
proc newBasicArrayListCacheable*(): BasicArrayListCacheable
method getKey*(this: BasicArrayListCacheable): JObject {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initBasicArrayListCacheable*(this: BasicArrayListCacheable) =
    initBasicArrayListD(this)

proc newBasicArrayListCacheable*(): BasicArrayListCacheable =
    result = BasicArrayListCacheable()
    initBasicArrayListCacheable(result)

method getKey*(this: BasicArrayListCacheable): JObject {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

when declared(newBasicArrayListCacheableHook0):
    newBasicArrayListCacheableHook0 = proc (): BasicArrayListD = newBasicArrayListCacheable()

