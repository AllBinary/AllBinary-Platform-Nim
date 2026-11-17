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
    PointFactory* = ref object of JObject
        ZERO_ZERO*: GPoint

proc newPointFactory*(): PointFactory
proc initPointFactory*(this: PointFactory)
proc getInstance*(t: typedesc[PointFactory]): PointFactory {.discardable.}
method init*(this: PointFactory) {.base.}
method createXY*(this: PointFactory, x: int32, y: int32): GPoint {.base, discardable.}
method createXYZ*(this: PointFactory, x: int32, y: int32, z: int32): GPoint {.base, discardable.}

var PointFactory_instanceValue: PointFactory
var PointFactory_instanceSet = false
proc instance*(t: typedesc[PointFactory]): PointFactory =
    if not PointFactory_instanceSet:
        PointFactory_instanceSet = true
        PointFactory_instanceValue = newPointFactory()
    PointFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPointFactory(this: PointFactory) =
    this.ZERO_ZERO = this.createXYZ(0, 0, 0)
    discard

proc getInstance*(t: typedesc[PointFactory]): PointFactory {.discardable.} =
        return PointFactory.instance

method init*(this: PointFactory) {.base.} =
        discard

proc initPointFactory*(this: PointFactory) =
        this.initFieldsPointFactory()
        discard

proc newPointFactory*(): PointFactory =
    result = PointFactory()
    initPointFactory(result)

method createXY*(this: PointFactory, x: int32, y: int32): GPoint {.base, discardable.} =
        return newGPoint(x, y, 0)

method createXYZ*(this: PointFactory, x: int32, y: int32, z: int32): GPoint {.base, discardable.} =
        return newGPoint(x, y, z)

