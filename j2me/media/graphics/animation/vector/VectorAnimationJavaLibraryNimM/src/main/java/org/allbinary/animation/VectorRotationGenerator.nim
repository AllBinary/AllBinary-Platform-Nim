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
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/vector/VectorInfo as VectorInfoModule
export VectorInfoModule
import org/allbinary/animation/VectorAnimationUtil as VectorAnimationUtilModule
export VectorAnimationUtilModule

type
    VectorRotationGenerator* = ref object of JObject
        logUtil*: LogUtil
        vectorAnimationUtil*: VectorAnimationUtil
        angleFactory*: AngleFactory

proc newVectorRotationGenerator*(): VectorRotationGenerator
proc initVectorRotationGenerator*(this: VectorRotationGenerator)
proc getInstance*(t: typedesc[VectorRotationGenerator]): VectorRotationGenerator {.discardable.}
method getInstance*(this: VectorRotationGenerator, vectorRotationInfo: VectorInfo): JArray[JArray[JArray[int32]]] {.base, discardable.}
method getInstanceFrames*(this: VectorRotationGenerator, width: int32, height: int32, points: JArray[JArray[int32]], frames: int32): JArray[JArray[JArray[int32]]] {.base, discardable.}
method getListAtAngle*(this: VectorRotationGenerator, width: int32, height: int32, pointBasicArrayList: BasicArrayList, angle: Angle): BasicArrayList {.base, discardable.}
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

var VectorRotationGenerator_instanceValue: VectorRotationGenerator
var VectorRotationGenerator_instanceSet = false
proc instance*(t: typedesc[VectorRotationGenerator]): VectorRotationGenerator =
    if not VectorRotationGenerator_instanceSet:
        VectorRotationGenerator_instanceSet = true
        VectorRotationGenerator_instanceValue = newVectorRotationGenerator()
    VectorRotationGenerator_instanceValue

# Java field initializers run after the base initializer
proc initFieldsVectorRotationGenerator(this: VectorRotationGenerator) =
    this.logUtil = LogUtil.getInstance()
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance()
    this.angleFactory = AngleFactory.getInstance()
    discard

proc getInstance*(t: typedesc[VectorRotationGenerator]): VectorRotationGenerator {.discardable.} =
        return VectorRotationGenerator.instance

proc initVectorRotationGenerator*(this: VectorRotationGenerator) =
        this.initFieldsVectorRotationGenerator()
        discard

proc newVectorRotationGenerator*(): VectorRotationGenerator =
    result = VectorRotationGenerator()
    initVectorRotationGenerator(result)

method getInstance*(this: VectorRotationGenerator, vectorRotationInfo: VectorInfo): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        return this.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames())

method getInstanceFrames*(this: VectorRotationGenerator, width: int32, height: int32, points: JArray[JArray[int32]], frames: int32): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        try:
            var totalAngle: int16 = this.angleFactory.TOTAL_ANGLE
            var angleIncrement: int32 = int32(totalAngle) div frames
            var pointsBasicArrayList: BasicArrayList = newBasicArrayListS(int32(totalAngle) div angleIncrement)
            var pointBasicArrayList: BasicArrayList = newBasicArrayListS(points.length)
            var pointFactory: PointFactory = PointFactory.getInstance()
            var size: int32 = points.length
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    pointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
            var index: int32 = 0
            while index < int32(totalAngle):
                pointsBasicArrayList.add(this.getListAtAngle(width, height, pointBasicArrayList, this.angleFactory.getAt(index)))
                index = index +% angleIncrement
            var newPoints: JArray[JArray[JArray[int32]]] = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size())
            return newPoints
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY

method getListAtAngle*(this: VectorRotationGenerator, width: int32, height: int32, pointBasicArrayList: BasicArrayList, angle: Angle): BasicArrayList {.base, discardable.} =
        var graphicsPipe: BasicGraphicsPipeline = newBasicGraphicsPipeline(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(-(ashr(width, 1)), -(ashr(height, 1)))
        graphicsPipe.rotateToAngle(angle)
        graphicsPipe.translate((ashr(width, 1)), (ashr(height, 1)))
        return graphicsPipe.getMatrix()

