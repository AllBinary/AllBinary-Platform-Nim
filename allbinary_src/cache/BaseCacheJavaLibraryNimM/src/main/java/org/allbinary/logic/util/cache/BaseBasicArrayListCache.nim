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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    BaseBasicArrayListCache* = ref object of JObject
        list*: BasicArrayList

proc newBaseBasicArrayListCache*(): BaseBasicArrayListCache
method log*(this: BaseBasicArrayListCache): string {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsBaseBasicArrayListCache(this: BaseBasicArrayListCache) =
    this.list = newBasicArrayListD()
    discard

proc initBaseBasicArrayListCache*(this: BaseBasicArrayListCache) =
    this.initFieldsBaseBasicArrayListCache()

proc newBaseBasicArrayListCache*(): BaseBasicArrayListCache =
    result = BaseBasicArrayListCache()
    initBaseBasicArrayListCache(result)

method log*(this: BaseBasicArrayListCache): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("S: ")
        stringBuffer.appendint(this.list.size())
        return stringBuffer.toString()

