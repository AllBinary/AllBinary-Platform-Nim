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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GPoint* = ref object of JObject
        x*: int32
        y*: int32
        z*: int32

proc newGPoint*(x: int32, y: int32, z: int32): GPoint
proc initGPoint*(this: GPoint, x: int32, y: int32, z: int32)
proc getInstance*(t: typedesc[GPoint], point: GPoint): GPoint {.discardable.}
method getX*(this: GPoint): int32 {.base, discardable.}
method getY*(this: GPoint): int32 {.base, discardable.}
method getZ*(this: GPoint): int32 {.base, discardable.}
method getRawX*(this: GPoint): int32 {.base, discardable.}
method getRawY*(this: GPoint): int32 {.base, discardable.}
method getRawZ*(this: GPoint): int32 {.base, discardable.}
method toString*(this: GPoint): string {.discardable.}
proc toStringStatic*(t: typedesc[GPoint], x: int32, y: int32, z: int32): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var GPoint_POINT_LABELValue: string
var GPoint_POINT_LABELSet = false
proc POINT_LABEL*(t: typedesc[GPoint]): string =
    if not GPoint_POINT_LABELSet:
        GPoint_POINT_LABELSet = true
        GPoint_POINT_LABELValue = "Point: "
    GPoint_POINT_LABELValue

# Java field initializers run after the base initializer
proc initFieldsGPoint(this: GPoint) =
    
    
    
    discard

proc getInstance*(t: typedesc[GPoint], point: GPoint): GPoint {.discardable.} =
        return newGPoint(point.getX(), point.getY(), point.getZ())

proc initGPoint*(this: GPoint, x: int32, y: int32, z: int32) =
        this.initFieldsGPoint()
        this.x = x
        this.y = y
        this.z = z

proc newGPoint*(x: int32, y: int32, z: int32): GPoint =
    result = GPoint()
    initGPoint(result, x, y, z)

method getX*(this: GPoint): int32 {.base, discardable.} =
        return this.x

method getY*(this: GPoint): int32 {.base, discardable.} =
        return this.y

method getZ*(this: GPoint): int32 {.base, discardable.} =
        return this.z

method getRawX*(this: GPoint): int32 {.base, discardable.} =
        return this.x

method getRawY*(this: GPoint): int32 {.base, discardable.} =
        return this.y

method getRawZ*(this: GPoint): int32 {.base, discardable.} =
        return this.z

method toString*(this: GPoint): string {.discardable.} =
        return GPoint.toStringStatic(this.getX(), this.getY(), this.getZ())

proc toStringStatic*(t: typedesc[GPoint], x: int32, y: int32, z: int32): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let positionStrings: PositionStrings = PositionStrings.getInstance()
        stringBuffer.append(GPoint.POINT_LABEL)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(x)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(y)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(z)
        return stringBuffer.toString()

