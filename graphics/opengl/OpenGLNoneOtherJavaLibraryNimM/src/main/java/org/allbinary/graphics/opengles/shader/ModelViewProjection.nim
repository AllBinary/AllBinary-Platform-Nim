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
# package org.allbinary.graphics.opengles.shader

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ModelViewProjection* = ref object of JObject

proc newModelViewProjection*(): ModelViewProjection
proc getInstance*(t: typedesc[ModelViewProjection]): ModelViewProjection {.discardable.}
method get*(this: ModelViewProjection): JArray[float32] {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var ModelViewProjection_instanceValue: ModelViewProjection
var ModelViewProjection_instanceSet = false
proc instance*(t: typedesc[ModelViewProjection]): ModelViewProjection =
    if not ModelViewProjection_instanceSet:
        ModelViewProjection_instanceSet = true
        ModelViewProjection_instanceValue = newModelViewProjection()
    ModelViewProjection_instanceValue

proc initModelViewProjection*(this: ModelViewProjection) =
    discard

proc newModelViewProjection*(): ModelViewProjection =
    result = ModelViewProjection()
    initModelViewProjection(result)

proc getInstance*(t: typedesc[ModelViewProjection]): ModelViewProjection {.discardable.} =
        return ModelViewProjection.instance

method get*(this: ModelViewProjection): JArray[float32] {.base, discardable.} =
        return NullUtil.getInstance().NULL_FLOAT_ARRAY

