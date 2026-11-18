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
# package org.allbinary.vector

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PointsUtil* = ref object of JObject

proc newPointsUtil*(): PointsUtil
proc getInstance*(t: typedesc[PointsUtil]): PointsUtil {.discardable.}
method adjustXY*(this: PointsUtil, points: JArray[JArray[JArray[int32]]], x: int32, y: int32): JArray[JArray[JArray[int32]]] {.base, discardable.}
method adjust*(this: PointsUtil, points: JArray[JArray[int32]], both: int32): JArray[JArray[int32]] {.base, discardable.}
method adjust*(this: PointsUtil, points: JArray[JArray[int32]], x: int32, y: int32): JArray[JArray[int32]] {.base, discardable.}

var PointsUtil_instanceValue: PointsUtil
var PointsUtil_instanceSet = false
proc instance*(t: typedesc[PointsUtil]): PointsUtil =
    if not PointsUtil_instanceSet:
        PointsUtil_instanceSet = true
        PointsUtil_instanceValue = newPointsUtil()
    PointsUtil_instanceValue

proc initPointsUtil*(this: PointsUtil) =
    discard

proc newPointsUtil*(): PointsUtil =
    result = PointsUtil()
    initPointsUtil(result)

proc getInstance*(t: typedesc[PointsUtil]): PointsUtil {.discardable.} =
        return PointsUtil.instance

method adjustXY*(this: PointsUtil, points: JArray[JArray[JArray[int32]]], x: int32, y: int32): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        let size: int32 = points.length
        let newPoints: JArray[JArray[JArray[int32]]] = newJArrayOf[JArray[JArray[int32]]](size, proc (): JArray[JArray[int32]] = newJArrayOf[JArray[int32]](0, proc (): JArray[int32] = newJArray[int32](0, default(int32))))
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let size2: int32 = points[index].length
                newPoints[index] = newJArrayOf[JArray[int32]](size2, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
                block:
                    var index2: int32 = 0
                    while index2 < size2:
                        defer: index2 = index2 +% 1
                        if points[index][index2][0] != 1000:
                            newPoints[index][index2][0] = points[index][index2][0] +% x
                            newPoints[index][index2][1] = points[index][index2][1] +% y
                        else:
                            newPoints[index][index2][0] = 1000
                            newPoints[index][index2][1] = 1000
        return newPoints

method adjust*(this: PointsUtil, points: JArray[JArray[int32]], both: int32): JArray[JArray[int32]] {.base, discardable.} =
        return this.adjust(points, both, both)

method adjust*(this: PointsUtil, points: JArray[JArray[int32]], x: int32, y: int32): JArray[JArray[int32]] {.base, discardable.} =
        var newPoints: JArray[JArray[int32]] = newJArrayOf[JArray[int32]](points.length, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
        block:
            var index2: int32 = 0
            while index2 < points.length:
                defer: index2 = index2 +% 1
                if points[index2][0] != 1000:
                    newPoints[index2][0] = points[index2][0] +% x
                    newPoints[index2][1] = points[index2][1] +% y
                else:
                    newPoints[index2][0] = 1000
                    newPoints[index2][1] = 1000
        return newPoints

