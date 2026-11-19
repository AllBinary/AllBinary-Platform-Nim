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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/logic/util/cache/IndexedBasicArrayListCache as IndexedBasicArrayListCacheModule
export IndexedBasicArrayListCacheModule

type
    KeylessBasicArrayListCache* = ref object of IndexedBasicArrayListCache
        logUtil*: LogUtil
        basicArrayListUtil*: BasicArrayListUtil

proc newKeylessBasicArrayListCache*(): KeylessBasicArrayListCache
proc initKeylessBasicArrayListCache*(this: KeylessBasicArrayListCache)
method get*(this: KeylessBasicArrayListCache): BasicArrayList {.base, discardable.}
method clear*(this: KeylessBasicArrayListCache)
method log*(this: KeylessBasicArrayListCache): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


# Java field initializers run after the base initializer
proc initFieldsKeylessBasicArrayListCache(this: KeylessBasicArrayListCache) =
    this.logUtil = LogUtil.getInstance()
    this.basicArrayListUtil = BasicArrayListUtil.getInstance()
    discard

proc initKeylessBasicArrayListCache*(this: KeylessBasicArrayListCache) =
        initIndexedBasicArrayListCache(this)
        this.initFieldsKeylessBasicArrayListCache()
        discard

proc newKeylessBasicArrayListCache*(): KeylessBasicArrayListCache =
    result = KeylessBasicArrayListCache()
    initKeylessBasicArrayListCache(result)

method get*(this: KeylessBasicArrayListCache): BasicArrayList {.base, discardable.} =
        try:
            if this.index >= this.list.size():
                this.addDefault()
            let list: BasicArrayList = BasicArrayList(JObject(this.getAt(jPostIncrement(this.index))))
            return list
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET, e)
            return this.basicArrayListUtil.getImmutableInstance()

method clear*(this: KeylessBasicArrayListCache) =
        jSuperStatement(procCall IndexedBasicArrayListCache(this).clear())
        var basicArrayList: BasicArrayList = nil
        block:
            var index: int32 = this.list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                basicArrayList = (BasicArrayList(JObject(this.list.objectArray[index])))
                basicArrayList.clear()

method log*(this: KeylessBasicArrayListCache): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("S: ")
        stringBuffer.appendint(this.list.size())
        let S_LABEL: string = " s: "
        var basicArrayList: BasicArrayList = nil
        block:
            var index: int32 = this.list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                stringBuffer.append(S_LABEL)
                basicArrayList = (BasicArrayList(JObject(this.list.objectArray[index])))
                stringBuffer.appendint(basicArrayList.size())
        return stringBuffer.toString()

when declared(newKeylessBasicArrayListCacheHook0):
    newKeylessBasicArrayListCacheHook0 = proc (): IndexedBasicArrayListCache = newKeylessBasicArrayListCache()

