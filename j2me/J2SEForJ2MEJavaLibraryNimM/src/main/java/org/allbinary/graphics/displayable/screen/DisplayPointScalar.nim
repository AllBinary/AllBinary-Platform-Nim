#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    DisplayPointScalar* = ref object of JObject

proc newDisplayPointScalar*(): DisplayPointScalar
proc initDisplayPointScalar*(this: DisplayPointScalar)
proc getInstance*(t: typedesc[DisplayPointScalar]): DisplayPointScalar {.discardable.}
method processX*(this: DisplayPointScalar, value: int32): int32 {.base, discardable.}
method processY*(this: DisplayPointScalar, value: int32): int32 {.base, discardable.}
method process*(this: DisplayPointScalar, point: GPoint): GPoint {.base, discardable.}

var DisplayPointScalar_instanceValue: DisplayPointScalar
var DisplayPointScalar_instanceSet = false
proc instance*(t: typedesc[DisplayPointScalar]): DisplayPointScalar =
    if not DisplayPointScalar_instanceSet:
        DisplayPointScalar_instanceSet = true
        DisplayPointScalar_instanceValue = newDisplayPointScalar()
    DisplayPointScalar_instanceValue

proc getInstance*(t: typedesc[DisplayPointScalar]): DisplayPointScalar {.discardable.} =
        return DisplayPointScalar.instance

proc initDisplayPointScalar*(this: DisplayPointScalar) =
        discard
        discard

proc newDisplayPointScalar*(): DisplayPointScalar =
    result = DisplayPointScalar()
    initDisplayPointScalar(result)

method processX*(this: DisplayPointScalar, value: int32): int32 {.base, discardable.} =
        return value

method processY*(this: DisplayPointScalar, value: int32): int32 {.base, discardable.} =
        return value

method process*(this: DisplayPointScalar, point: GPoint): GPoint {.base, discardable.} =
        return point

