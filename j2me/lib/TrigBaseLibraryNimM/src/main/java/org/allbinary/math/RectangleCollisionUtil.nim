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

type
    RectangleCollisionUtil* = ref object of JObject

proc newRectangleCollisionUtil*(): RectangleCollisionUtil
proc initRectangleCollisionUtil*(this: RectangleCollisionUtil)
proc getInstance*(t: typedesc[RectangleCollisionUtil]): RectangleCollisionUtil {.discardable.}
method isCollision*(this: RectangleCollisionUtil, rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, rect2X1: int32, rect2Y1: int32, rect2X2: int32, rect2Y2: int32): bool {.base, discardable.}
method isInside*(this: RectangleCollisionUtil, rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, x: int32, y: int32): bool {.base, discardable.}

var RectangleCollisionUtil_instanceValue: RectangleCollisionUtil
var RectangleCollisionUtil_instanceSet = false
proc instance*(t: typedesc[RectangleCollisionUtil]): RectangleCollisionUtil =
    if not RectangleCollisionUtil_instanceSet:
        RectangleCollisionUtil_instanceSet = true
        RectangleCollisionUtil_instanceValue = newRectangleCollisionUtil()
    RectangleCollisionUtil_instanceValue

proc getInstance*(t: typedesc[RectangleCollisionUtil]): RectangleCollisionUtil {.discardable.} =
        return RectangleCollisionUtil.instance

proc initRectangleCollisionUtil*(this: RectangleCollisionUtil) =
        discard
        discard

proc newRectangleCollisionUtil*(): RectangleCollisionUtil =
    result = RectangleCollisionUtil()
    initRectangleCollisionUtil(result)

method isCollision*(this: RectangleCollisionUtil, rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, rect2X1: int32, rect2Y1: int32, rect2X2: int32, rect2Y2: int32): bool {.base, discardable.} =
        if rect2X1 >= rectX2 or rect2Y1 >= rectY2 or rect2X2 <= rectX1 or rect2Y2 <= rectY1:
            return false
        else:
            return true

method isInside*(this: RectangleCollisionUtil, rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, x: int32, y: int32): bool {.base, discardable.} =
        if x >= rectX2 or y >= rectY2 or x <= rectX1 or y <= rectY1:
            return false
        else:
            return true

