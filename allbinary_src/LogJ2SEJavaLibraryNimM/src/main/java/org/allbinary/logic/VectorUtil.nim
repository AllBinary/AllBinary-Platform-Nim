#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/Vector as VectorModule
export VectorModule

type
    VectorUtil* = ref object of JObject

proc newVectorUtil*(): VectorUtil
proc getInstance*(t: typedesc[VectorUtil]): VectorUtil {.discardable.}
method getSize*(this: VectorUtil, anyType: JObject): int32 {.base, discardable.}
method elementAt*(this: VectorUtil, anyType: JObject, index: int32): JObject {.base, discardable.}

var VectorUtil_instanceValue: VectorUtil
var VectorUtil_instanceSet = false
proc instance*(t: typedesc[VectorUtil]): VectorUtil =
    if not VectorUtil_instanceSet:
        VectorUtil_instanceSet = true
        VectorUtil_instanceValue = newVectorUtil()
    VectorUtil_instanceValue

proc initVectorUtil*(this: VectorUtil) =
    discard

proc newVectorUtil*(): VectorUtil =
    result = VectorUtil()
    initVectorUtil(result)

proc getInstance*(t: typedesc[VectorUtil]): VectorUtil {.discardable.} =
        return VectorUtil.instance

method getSize*(this: VectorUtil, anyType: JObject): int32 {.base, discardable.} =
        let vector: Vector = Vector(JObject(anyType))
        return vector.size()

method elementAt*(this: VectorUtil, anyType: JObject, index: int32): JObject {.base, discardable.} =
        let vector: Vector = Vector(JObject(anyType))
        return vector.elementAt(index)

