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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PrimitiveIntUtil* = ref object of JObject

proc newPrimitiveIntUtil*(): PrimitiveIntUtil
proc initPrimitiveIntUtil*(this: PrimitiveIntUtil)
proc getArrayInstance*(t: typedesc[PrimitiveIntUtil]): JArray[int32] {.discardable.}
proc getTwoDimensionalArrayInstance*(t: typedesc[PrimitiveIntUtil]): JArray[JArray[int32]] {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule


proc initPrimitiveIntUtil*(this: PrimitiveIntUtil) =
        discard
        discard

proc newPrimitiveIntUtil*(): PrimitiveIntUtil =
    result = PrimitiveIntUtil()
    initPrimitiveIntUtil(result)

proc getArrayInstance*(t: typedesc[PrimitiveIntUtil]): JArray[int32] {.discardable.} =
        return NullUtil.getInstance().NULL_INT_ARRAY

proc getTwoDimensionalArrayInstance*(t: typedesc[PrimitiveIntUtil]): JArray[JArray[int32]] {.discardable.} =
        return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY

