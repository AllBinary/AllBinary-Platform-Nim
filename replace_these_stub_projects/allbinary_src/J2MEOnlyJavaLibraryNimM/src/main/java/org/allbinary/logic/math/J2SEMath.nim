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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    J2SEMath* = ref object of JObject

proc newJ2SEMath*(): J2SEMath
proc getInstance*(t: typedesc[J2SEMath]): J2SEMath {.discardable.}
method round*(this: J2SEMath, value: float32): int32 {.base, discardable.}
method abs*(this: J2SEMath, value: float32): float32 {.base, discardable.}
method absdouble*(this: J2SEMath, value: float64): float64 {.base, discardable.}

var J2SEMath_instanceValue: J2SEMath
var J2SEMath_instanceSet = false
proc instance*(t: typedesc[J2SEMath]): J2SEMath =
    if not J2SEMath_instanceSet:
        J2SEMath_instanceSet = true
        J2SEMath_instanceValue = newJ2SEMath()
    J2SEMath_instanceValue

proc initJ2SEMath*(this: J2SEMath) =
    discard

proc newJ2SEMath*(): J2SEMath =
    result = J2SEMath()
    initJ2SEMath(result)

proc getInstance*(t: typedesc[J2SEMath]): J2SEMath {.discardable.} =
        return J2SEMath.instance

method round*(this: J2SEMath, value: float32): int32 {.base, discardable.} =
        return jToInt32(float64(value))

method abs*(this: J2SEMath, value: float32): float32 {.base, discardable.} =
        return (if (value < 0'f32): -value else: value)

method absdouble*(this: J2SEMath, value: float64): float64 {.base, discardable.} =
        return (if (value < 0.0): -value else: value)

