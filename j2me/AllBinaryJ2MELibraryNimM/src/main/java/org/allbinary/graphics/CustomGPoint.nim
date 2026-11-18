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
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    CustomGPoint* = ref object of GPoint
        cx*: int32
        cy*: int32
        cz*: int32

proc newCustomGPoint*(x: int32, y: int32, z: int32): CustomGPoint
proc initCustomGPoint*(this: CustomGPoint, x: int32, y: int32, z: int32)
proc getInstance*(t: typedesc[CustomGPoint], point: GPoint): CustomGPoint {.discardable.}
proc getInstance3*(t: typedesc[CustomGPoint], x: int32, y: int32): CustomGPoint {.discardable.}
method setX*(this: CustomGPoint, x: int32) {.base.}
method getX*(this: CustomGPoint): int32 {.discardable.}
method setY*(this: CustomGPoint, y: int32) {.base.}
method getY*(this: CustomGPoint): int32 {.discardable.}
method setZ*(this: CustomGPoint, z: int32) {.base.}
method getZ*(this: CustomGPoint): int32 {.discardable.}

var CustomGPoint_NULL_CUSTOM_POINTValue: CustomGPoint
var CustomGPoint_NULL_CUSTOM_POINTSet = false
proc NULL_CUSTOM_POINT*(t: typedesc[CustomGPoint]): CustomGPoint =
    if not CustomGPoint_NULL_CUSTOM_POINTSet:
        CustomGPoint_NULL_CUSTOM_POINTSet = true
        CustomGPoint_NULL_CUSTOM_POINTValue = newCustomGPoint(0, 0, 0)
    CustomGPoint_NULL_CUSTOM_POINTValue

# Java field initializers run after the base initializer
proc initFieldsCustomGPoint(this: CustomGPoint) =
    this.cx = 0
    this.cy = 0
    this.cz = 0
    discard

proc getInstance*(t: typedesc[CustomGPoint], point: GPoint): CustomGPoint {.discardable.} =
        return newCustomGPoint(point.getX(), point.getY(), point.getZ())

proc getInstance3*(t: typedesc[CustomGPoint], x: int32, y: int32): CustomGPoint {.discardable.} =
        return newCustomGPoint(x, y, 3)

proc initCustomGPoint*(this: CustomGPoint, x: int32, y: int32, z: int32) =
        initGPoint(this, x, y, z)
        this.initFieldsCustomGPoint()

proc newCustomGPoint*(x: int32, y: int32, z: int32): CustomGPoint =
    result = CustomGPoint()
    initCustomGPoint(result, x, y, z)

method setX*(this: CustomGPoint, x: int32) {.base.} =
        this.cx = x

method getX*(this: CustomGPoint): int32 {.discardable.} =
        return this.cx

method setY*(this: CustomGPoint, y: int32) {.base.} =
        this.cy = y

method getY*(this: CustomGPoint): int32 {.discardable.} =
        return this.cy

method setZ*(this: CustomGPoint, z: int32) {.base.} =
        this.cz = z

method getZ*(this: CustomGPoint): int32 {.discardable.} =
        return this.cz

when declared(newCustomGPointHook3):
    newCustomGPointHook3 = proc (x: int32, y: int32, z: int32): GPoint = newCustomGPoint(x, y, z)

