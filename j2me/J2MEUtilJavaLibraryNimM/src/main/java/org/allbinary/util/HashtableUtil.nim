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
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    HashtableUtil* = ref object of JObject
        enumerationUtil*: EnumerationUtil

proc newHashtableUtil*(): HashtableUtil
proc getInstance*(t: typedesc[HashtableUtil]): HashtableUtil {.discardable.}
method putAll*(this: HashtableUtil, fromHashtable: ABHashtable, hashtable: ABHashtable) {.base.}
method getKeysAsArray*(this: HashtableUtil, hashtable: ABHashtable): JArray[JObject] {.base, discardable.}
method getKeysAsList*(this: HashtableUtil, hashtable: ABHashtable): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListS as BasicArrayListSModule
export BasicArrayListSModule

var HashtableUtil_instanceValue: HashtableUtil
var HashtableUtil_instanceSet = false
proc instance*(t: typedesc[HashtableUtil]): HashtableUtil =
    if not HashtableUtil_instanceSet:
        HashtableUtil_instanceSet = true
        HashtableUtil_instanceValue = newHashtableUtil()
    HashtableUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsHashtableUtil(this: HashtableUtil) =
    this.enumerationUtil = EnumerationUtil.getInstance()
    discard

proc initHashtableUtil*(this: HashtableUtil) =
    this.initFieldsHashtableUtil()

proc newHashtableUtil*(): HashtableUtil =
    result = HashtableUtil()
    initHashtableUtil(result)

proc getInstance*(t: typedesc[HashtableUtil]): HashtableUtil {.discardable.} =
        return HashtableUtil.instance

method putAll*(this: HashtableUtil, fromHashtable: ABHashtable, hashtable: ABHashtable) {.base.} =
        let enumeration: Enumeration = fromHashtable.keys()
        var keyCanBeNull: JObject = nil
        var valueCanBeNull: JObject = nil
        while this.enumerationUtil.hasMoreElements(enumeration):
            keyCanBeNull = this.enumerationUtil.nextElement(enumeration)
            valueCanBeNull = hashtable.get(keyCanBeNull)
            if (jIsNil(valueCanBeNull)):
                discard
            else:
                hashtable.put(keyCanBeNull, valueCanBeNull)

method getKeysAsArray*(this: HashtableUtil, hashtable: ABHashtable): JArray[JObject] {.base, discardable.} =
        let objectArray: JArray[JObject] = newJArray[JObject](hashtable.size(), default(JObject))
        var index: int32 = 0
        let enumeration: Enumeration = hashtable.keys()
        while this.enumerationUtil.hasMoreElements(enumeration):
            objectArray[jPostIncrement(index)] = this.enumerationUtil.nextElement(enumeration)
        return objectArray

method getKeysAsList*(this: HashtableUtil, hashtable: ABHashtable): BasicArrayList {.base, discardable.} =
        let list: BasicArrayList = newBasicArrayListS(hashtable.size())
        let enumeration: Enumeration = hashtable.keys()
        while this.enumerationUtil.hasMoreElements(enumeration):
            list.add(this.enumerationUtil.nextElement(enumeration))
        return list

