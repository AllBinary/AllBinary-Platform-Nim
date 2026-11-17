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
    PrimitiveFloatUtil* = ref object of JObject

proc newPrimitiveFloatUtil*(): PrimitiveFloatUtil
proc initPrimitiveFloatUtil*(this: PrimitiveFloatUtil)
proc getArrayInstance*(t: typedesc[PrimitiveFloatUtil]): JArray[float32] {.discardable.}


proc initPrimitiveFloatUtil*(this: PrimitiveFloatUtil) =
        discard
        discard

proc newPrimitiveFloatUtil*(): PrimitiveFloatUtil =
    result = PrimitiveFloatUtil()
    initPrimitiveFloatUtil(result)

proc getArrayInstance*(t: typedesc[PrimitiveFloatUtil]): JArray[float32] {.discardable.} =
        return newJArray[float32](0, default(float32))

