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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/animation/VectorAnimationUtil as VectorAnimationUtilModule
export VectorAnimationUtilModule

type
    VectorMirrorGenerator* = ref object of JObject
        logUtil*: LogUtil
        vectorAnimationUtil*: VectorAnimationUtil

proc newVectorMirrorGenerator*(): VectorMirrorGenerator
proc initVectorMirrorGenerator*(this: VectorMirrorGenerator)
proc getInstance*(t: typedesc[VectorMirrorGenerator]): VectorMirrorGenerator {.discardable.}
method getInstance*(this: VectorMirrorGenerator, points: JArray[JArray[JArray[int32]]], width: int32): JArray[JArray[JArray[int32]]] {.base, discardable.}
method getInstance*(this: VectorMirrorGenerator, pointBasicArrayList: BasicArrayList, width: int32): BasicArrayList {.base, discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/pipeline/BasicGraphicsPipeline as BasicGraphicsPipelineModule
export BasicGraphicsPipelineModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListS as BasicArrayListSModule
export BasicArrayListSModule

var VectorMirrorGenerator_instanceValue: VectorMirrorGenerator
var VectorMirrorGenerator_instanceSet = false
proc instance*(t: typedesc[VectorMirrorGenerator]): VectorMirrorGenerator =
    if not VectorMirrorGenerator_instanceSet:
        VectorMirrorGenerator_instanceSet = true
        VectorMirrorGenerator_instanceValue = newVectorMirrorGenerator()
    VectorMirrorGenerator_instanceValue

# Java field initializers run after the base initializer
proc initFieldsVectorMirrorGenerator(this: VectorMirrorGenerator) =
    this.logUtil = LogUtil.getInstance()
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance()
    discard

proc getInstance*(t: typedesc[VectorMirrorGenerator]): VectorMirrorGenerator {.discardable.} =
        return VectorMirrorGenerator.instance

proc initVectorMirrorGenerator*(this: VectorMirrorGenerator) =
        this.initFieldsVectorMirrorGenerator()
        discard

proc newVectorMirrorGenerator*(): VectorMirrorGenerator =
    result = VectorMirrorGenerator()
    initVectorMirrorGenerator(result)

method getInstance*(this: VectorMirrorGenerator, points: JArray[JArray[JArray[int32]]], width: int32): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        try:
            let pointFactory: PointFactory = PointFactory.getInstance()
            var pointBasicArrayList: BasicArrayList = nil
            var nextPoints: JArray[JArray[int32]] = nil
            var size2: int32 = 0
            let size: int32 = points.length
            let pointsBasicArrayList: BasicArrayList = newBasicArrayListS(size)
            block:
                var frame: int32 = 0
                while frame < size:
                    defer: frame = frame +% 1
                    nextPoints = points[frame]
                    size2 = nextPoints.length
                    pointBasicArrayList = newBasicArrayListS(size2)
                    block:
                        var index: int32 = 0
                        while index < size2:
                            defer: index = index +% 1
                            pointBasicArrayList.add(pointFactory.createXY(nextPoints[index][0], nextPoints[index][1]))
                    pointsBasicArrayList.add(pointBasicArrayList)
            block:
                var index: int32 = 0
                while index < points.length:
                    defer: index = index +% 1
                    pointsBasicArrayList.add(this.getInstance(BasicArrayList(JObject(pointsBasicArrayList.objectArray[index])), width))
            var newPoints: JArray[JArray[JArray[int32]]] = this.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList)
            return newPoints
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY

method getInstance*(this: VectorMirrorGenerator, pointBasicArrayList: BasicArrayList, width: int32): BasicArrayList {.base, discardable.} =
        var graphicsPipe: BasicGraphicsPipeline = newBasicGraphicsPipeline(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.mirror(width)
        return graphicsPipe.getMatrix()

