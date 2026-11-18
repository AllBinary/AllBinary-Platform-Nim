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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    VectorAnimationUtil* = ref object of JObject

proc newVectorAnimationUtil*(): VectorAnimationUtil
proc initVectorAnimationUtil*(this: VectorAnimationUtil)
proc getInstance*(t: typedesc[VectorAnimationUtil]): VectorAnimationUtil {.discardable.}
method toAnimationArrayFromListOfPointListWithPointsPerFrame*(this: VectorAnimationUtil, vector: BasicArrayList, pointsPerFrame: int32): JArray[JArray[JArray[int32]]] {.base, discardable.}
method toAnimationArrayFromListOfPointList*(this: VectorAnimationUtil, vector: BasicArrayList): JArray[JArray[JArray[int32]]] {.base, discardable.}
method toFrameArrayFromPointBasicArrayList*(this: VectorAnimationUtil, list: BasicArrayList): JArray[JArray[int32]] {.base, discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

var VectorAnimationUtil_instanceValue: VectorAnimationUtil
var VectorAnimationUtil_instanceSet = false
proc instance*(t: typedesc[VectorAnimationUtil]): VectorAnimationUtil =
    if not VectorAnimationUtil_instanceSet:
        VectorAnimationUtil_instanceSet = true
        VectorAnimationUtil_instanceValue = newVectorAnimationUtil()
    VectorAnimationUtil_instanceValue

proc getInstance*(t: typedesc[VectorAnimationUtil]): VectorAnimationUtil {.discardable.} =
        return VectorAnimationUtil.instance

proc initVectorAnimationUtil*(this: VectorAnimationUtil) =
        discard
        discard

proc newVectorAnimationUtil*(): VectorAnimationUtil =
    result = VectorAnimationUtil()
    initVectorAnimationUtil(result)

method toAnimationArrayFromListOfPointListWithPointsPerFrame*(this: VectorAnimationUtil, vector: BasicArrayList, pointsPerFrame: int32): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        let size: int32 = vector.size()
        let points: JArray[JArray[JArray[int32]]] = newJArrayOf[JArray[JArray[int32]]](size, proc (): JArray[JArray[int32]] = newJArrayOf[JArray[int32]](pointsPerFrame, proc (): JArray[int32] = newJArray[int32](2, default(int32))))
        var nextBasicArrayList: BasicArrayList = nil
        var framePoints: JArray[JArray[int32]] = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                nextBasicArrayList = BasicArrayList(JObject(vector.objectArray[index]))
                framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
                block:
                    var pointIndex: int32 = 0
                    while pointIndex < framePoints.length:
                        defer: pointIndex = pointIndex +% 1
                        points[index][pointIndex][0] = framePoints[pointIndex][0]
                        points[index][pointIndex][1] = framePoints[pointIndex][1]
        return points

method toAnimationArrayFromListOfPointList*(this: VectorAnimationUtil, vector: BasicArrayList): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        let size: int32 = vector.size()
        let points: JArray[JArray[JArray[int32]]] = newJArrayOf[JArray[JArray[int32]]](size, proc (): JArray[JArray[int32]] = newJArrayOf[JArray[int32]](0, proc (): JArray[int32] = newJArray[int32](0, default(int32))))
        var nextBasicArrayList: BasicArrayList = nil
        var framePoints: JArray[JArray[int32]] = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                nextBasicArrayList = BasicArrayList(JObject(vector.objectArray[index]))
                framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
                points[index] = newJArrayOf[JArray[int32]](framePoints.length, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
                block:
                    var pointIndex: int32 = 0
                    while pointIndex < framePoints.length:
                        defer: pointIndex = pointIndex +% 1
                        points[index][pointIndex][0] = framePoints[pointIndex][0]
                        points[index][pointIndex][1] = framePoints[pointIndex][1]
        return points

method toFrameArrayFromPointBasicArrayList*(this: VectorAnimationUtil, list: BasicArrayList): JArray[JArray[int32]] {.base, discardable.} =
        var points: JArray[JArray[int32]] = newJArrayOf[JArray[int32]](list.size(), proc (): JArray[int32] = newJArray[int32](2, default(int32)))
        var size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var nextPoint: GPoint = GPoint(JObject(list.objectArray[index]))
                points[index][0] = nextPoint.getX()
                points[index][1] = nextPoint.getY()
        return points

