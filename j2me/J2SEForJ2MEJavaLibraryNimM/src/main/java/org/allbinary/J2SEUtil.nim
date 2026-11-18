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
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/HashMap as HashMapModule
export HashMapModule
import java/util/Map as MapModule
export MapModule
import java/util/Set as SetModule
export SetModule

#J2SEForJ2ME
type
    J2SEUtil* = ref object of JObject

proc newJ2SEUtil*(): J2SEUtil
proc getInstance*(t: typedesc[J2SEUtil]): J2SEUtil {.discardable.}
method getHashMapAsArray*(this: J2SEUtil, hashMap: HashMap): JArray[JObject] {.base, discardable.}
method getMapAsArray*(this: J2SEUtil, map: Map): JArray[JObject] {.base, discardable.}
method getSetAsArray*(this: J2SEUtil, set: Set): JArray[JObject] {.base, discardable.}

var J2SEUtil_instanceValue: J2SEUtil
var J2SEUtil_instanceSet = false
proc instance*(t: typedesc[J2SEUtil]): J2SEUtil =
    if not J2SEUtil_instanceSet:
        J2SEUtil_instanceSet = true
        J2SEUtil_instanceValue = newJ2SEUtil()
    J2SEUtil_instanceValue

proc initJ2SEUtil*(this: J2SEUtil) =
    discard

proc newJ2SEUtil*(): J2SEUtil =
    result = J2SEUtil()
    initJ2SEUtil(result)

proc getInstance*(t: typedesc[J2SEUtil]): J2SEUtil {.discardable.} =
        return J2SEUtil.instance

method getHashMapAsArray*(this: J2SEUtil, hashMap: HashMap): JArray[JObject] {.base, discardable.} =
        let objectArray: JArray[JObject] = hashMap.keySet().toArray()
        return objectArray

method getMapAsArray*(this: J2SEUtil, map: Map): JArray[JObject] {.base, discardable.} =
        let objectArray: JArray[JObject] = map.keySet().toArray()
        return objectArray

method getSetAsArray*(this: J2SEUtil, set: Set): JArray[JObject] {.base, discardable.} =
        let objectArray: JArray[JObject] = set.toArray()
        return objectArray

