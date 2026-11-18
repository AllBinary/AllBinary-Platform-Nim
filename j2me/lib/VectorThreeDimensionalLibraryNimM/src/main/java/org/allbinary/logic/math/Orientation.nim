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
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule

type
    Orientation* = ref object of JObject
        yaw*: BasicDecimal
        pitch*: BasicDecimal
        roll*: BasicDecimal

proc newOrientation*(yaw: int32, pitch: int32, roll: int32): Orientation
proc initOrientation*(this: Orientation, yaw: int32, pitch: int32, roll: int32)
proc getInstance*(t: typedesc[Orientation], yaw: int32, pitch: int32, roll: int32): Orientation {.discardable.}
method toString*(this: Orientation): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var Orientation_NONEValue: Orientation
var Orientation_NONESet = false
proc NONE*(t: typedesc[Orientation]): Orientation =
    if not Orientation_NONESet:
        Orientation_NONESet = true
        Orientation_NONEValue = newOrientation(0, 0, 0)
    Orientation_NONEValue
proc `NONE=`*(t: typedesc[Orientation], value: Orientation) =
    Orientation_NONESet = true
    Orientation_NONEValue = value
var Orientation_SINGLETONValue: Orientation
var Orientation_SINGLETONSet = false
proc SINGLETON*(t: typedesc[Orientation]): Orientation =
    if not Orientation_SINGLETONSet:
        Orientation_SINGLETONSet = true
        Orientation_SINGLETONValue = newOrientation(0, 0, 0)
    Orientation_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[Orientation], value: Orientation) =
    Orientation_SINGLETONSet = true
    Orientation_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsOrientation(this: Orientation) =
    this.yaw = newBasicDecimal(0)
    this.pitch = newBasicDecimal(0)
    this.roll = newBasicDecimal(0)
    discard

proc getInstance*(t: typedesc[Orientation], yaw: int32, pitch: int32, roll: int32): Orientation {.discardable.} =
        Orientation.SINGLETON.yaw.setint(yaw)
        Orientation.SINGLETON.pitch.setint(pitch)
        Orientation.SINGLETON.roll.setint(roll)
        return Orientation.SINGLETON

proc initOrientation*(this: Orientation, yaw: int32, pitch: int32, roll: int32) =
        this.initFieldsOrientation()
        this.yaw.setint(yaw)
        this.pitch.setint(pitch)
        this.roll.setint(roll)

proc newOrientation*(yaw: int32, pitch: int32, roll: int32): Orientation =
    result = Orientation()
    initOrientation(result, yaw, pitch, roll)

method toString*(this: Orientation): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Y: ")
        stringBuffer.append(this.yaw.toString())
        stringBuffer.append(" P: ")
        stringBuffer.append(this.pitch.toString())
        stringBuffer.append(" R: ")
        stringBuffer.append(this.roll.toString())
        return stringBuffer.toString()

