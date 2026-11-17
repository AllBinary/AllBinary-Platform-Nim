#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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

#ArkTs does not have this.  So this is for the ArkTs build.
type
    EnumerationUtil* = ref object of JObject

proc newEnumerationUtil*(): EnumerationUtil
proc getInstance*(t: typedesc[EnumerationUtil]): EnumerationUtil {.discardable.}
method hasMoreElements*(this: EnumerationUtil, enumeration: Enumeration): bool {.base, discardable.}
method nextElement*(this: EnumerationUtil, enumeration: Enumeration): JObject {.base, discardable.}
method getAsArray*(this: EnumerationUtil, enumeration: Enumeration): JArray[JObject] {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

var EnumerationUtil_instanceValue: EnumerationUtil
var EnumerationUtil_instanceSet = false
proc instance*(t: typedesc[EnumerationUtil]): EnumerationUtil =
    if not EnumerationUtil_instanceSet:
        EnumerationUtil_instanceSet = true
        EnumerationUtil_instanceValue = newEnumerationUtil()
    EnumerationUtil_instanceValue

proc initEnumerationUtil*(this: EnumerationUtil) =
    discard

proc newEnumerationUtil*(): EnumerationUtil =
    result = EnumerationUtil()
    initEnumerationUtil(result)

proc getInstance*(t: typedesc[EnumerationUtil]): EnumerationUtil {.discardable.} =
        return EnumerationUtil.instance

method hasMoreElements*(this: EnumerationUtil, enumeration: Enumeration): bool {.base, discardable.} =
        return enumeration.hasMoreElements()

method nextElement*(this: EnumerationUtil, enumeration: Enumeration): JObject {.base, discardable.} =
        return enumeration.nextElement()

method getAsArray*(this: EnumerationUtil, enumeration: Enumeration): JArray[JObject] {.base, discardable.} =
        let basicArrayList: BasicArrayList = newBasicArrayListD()
        while this.hasMoreElements(enumeration):
            basicArrayList.add(this.nextElement(enumeration))
        return basicArrayList.toArray()

