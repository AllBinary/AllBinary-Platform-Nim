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
# package org.allbinary.math

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    RectangleCollisionPointUtil* = ref object of JObject

proc newRectangleCollisionPointUtil*(): RectangleCollisionPointUtil
proc initRectangleCollisionPointUtil*(this: RectangleCollisionPointUtil)
proc allPointsInside*(t: typedesc[RectangleCollisionPointUtil], rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, list: BasicArrayList): bool {.discardable.}
proc allPointsInsideCell*(t: typedesc[RectangleCollisionPointUtil], rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, list: BasicArrayList, xCellSize: int32, yCellSize: int32): bool {.discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/math/RectangleCollisionUtil as RectangleCollisionUtilModule
export RectangleCollisionUtilModule


proc initRectangleCollisionPointUtil*(this: RectangleCollisionPointUtil) =
        discard
        discard

proc newRectangleCollisionPointUtil*(): RectangleCollisionPointUtil =
    result = RectangleCollisionPointUtil()
    initRectangleCollisionPointUtil(result)

proc allPointsInside*(t: typedesc[RectangleCollisionPointUtil], rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, list: BasicArrayList): bool {.discardable.} =
        let rectangleCollisionUtil: RectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        var point: GPoint = nil
        block:
            var index: int32 = list.size()
            while jPreDecrement(index) >= 0:
                point = GPoint(JObject(list.objectArray[index]))
                if (not rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())):
                    return false
        return true

proc allPointsInsideCell*(t: typedesc[RectangleCollisionPointUtil], rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, list: BasicArrayList, xCellSize: int32, yCellSize: int32): bool {.discardable.} =
        let rectangleCollisionUtil: RectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        var point: GPoint = nil
        block:
            var index: int32 = list.size()
            while jPreDecrement(index) >= 0:
                point = GPoint(JObject(list.objectArray[index]))
                if (not rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX() *% xCellSize, point.getY() *% yCellSize)):
                    return false
        return true

