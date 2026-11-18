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
import org/allbinary/graphics/pipeline/RandomRotationFactory as RandomRotationFactoryModule
export RandomRotationFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/animation/VectorExplosionType as VectorExplosionTypeModule
export VectorExplosionTypeModule
import org/allbinary/animation/VectorAnimationUtil as VectorAnimationUtilModule
export VectorAnimationUtilModule

type
    VectorExplosionGenerator* = ref object of JObject
        RANDOM*: VectorExplosionType
        ROTATION*: VectorExplosionType
        vectorAnimationUtil*: VectorAnimationUtil
        randomRotationFactory*: RandomRotationFactory

proc newVectorExplosionGenerator*(): VectorExplosionGenerator
proc initVectorExplosionGenerator*(this: VectorExplosionGenerator)
proc getInstance*(t: typedesc[VectorExplosionGenerator]): VectorExplosionGenerator {.discardable.}
method createList*(this: VectorExplosionGenerator, list: BasicArrayList, howMuch: int32, `type`: VectorExplosionType): BasicArrayList {.base, discardable.}
method getInstance*(this: VectorExplosionGenerator, points: JArray[JArray[int32]], howMuch: int32, `type`: VectorExplosionType): JArray[JArray[JArray[int32]]] {.base, discardable.}
method getInstanceStartFrame*(this: VectorExplosionGenerator, points: JArray[JArray[int32]], howMuch: int32, `type`: VectorExplosionType, startFrame: bool): BasicArrayList {.base, discardable.}
method createListFromPoints*(this: VectorExplosionGenerator, tempBasicArrayList: BasicArrayList, points: JArray[JArray[int32]], howMuch: int32, `type`: VectorExplosionType): BasicArrayList {.base, discardable.}
method createPointsBasicArrayList*(this: VectorExplosionGenerator, points: JArray[JArray[int32]]): BasicArrayList {.base, discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/pipeline/RandomTranslation as RandomTranslationModule
export RandomTranslationModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListS as BasicArrayListSModule
export BasicArrayListSModule

var VectorExplosionGenerator_instanceValue: VectorExplosionGenerator
var VectorExplosionGenerator_instanceSet = false
proc instance*(t: typedesc[VectorExplosionGenerator]): VectorExplosionGenerator =
    if not VectorExplosionGenerator_instanceSet:
        VectorExplosionGenerator_instanceSet = true
        VectorExplosionGenerator_instanceValue = newVectorExplosionGenerator()
    VectorExplosionGenerator_instanceValue

# Java field initializers run after the base initializer
proc initFieldsVectorExplosionGenerator(this: VectorExplosionGenerator) =
    this.RANDOM = newVectorExplosionType()
    this.ROTATION = newVectorExplosionType()
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance()
    this.randomRotationFactory = RandomRotationFactory.getInstance()
    discard

proc getInstance*(t: typedesc[VectorExplosionGenerator]): VectorExplosionGenerator {.discardable.} =
        return VectorExplosionGenerator.instance

proc initVectorExplosionGenerator*(this: VectorExplosionGenerator) =
        this.initFieldsVectorExplosionGenerator()
        discard

proc newVectorExplosionGenerator*(): VectorExplosionGenerator =
    result = VectorExplosionGenerator()
    initVectorExplosionGenerator(result)

method createList*(this: VectorExplosionGenerator, list: BasicArrayList, howMuch: int32, `type`: VectorExplosionType): BasicArrayList {.base, discardable.} =
        var point: GPoint = nil
        let size: int32 = list.size()
        let points: JArray[JArray[int32]] = newJArrayOf[JArray[int32]](size, proc (): JArray[int32] = newJArray[int32](2, default(int32)))
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                point = GPoint(JObject(list.objectArray[index]))
                points[index][0] = point.getX()
                points[index][1] = point.getY()
        return this.createListFromPoints(list, points, howMuch, `type`)

method getInstance*(this: VectorExplosionGenerator, points: JArray[JArray[int32]], howMuch: int32, `type`: VectorExplosionType): JArray[JArray[JArray[int32]]] {.base, discardable.} =
        let pointsBasicArrayList: BasicArrayList = this.getInstanceStartFrame(points, howMuch, `type`, true)
        let tempBasicArrayList: BasicArrayList = BasicArrayList(JObject(pointsBasicArrayList.objectArray[0]))
        let newPoints: JArray[JArray[JArray[int32]]] = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size())
        return newPoints

method getInstanceStartFrame*(this: VectorExplosionGenerator, points: JArray[JArray[int32]], howMuch: int32, `type`: VectorExplosionType, startFrame: bool): BasicArrayList {.base, discardable.} =
        try:
            let pointsBasicArrayList: BasicArrayList = newBasicArrayListS(howMuch)
            pointsBasicArrayList.add(this.createPointsBasicArrayList(points))
            var frameIndex: int32 = 0
            var tempBasicArrayList: BasicArrayList = nil
            var pointBasicArrayList: BasicArrayList = nil
            while frameIndex < howMuch:
                tempBasicArrayList = BasicArrayList(JObject(pointsBasicArrayList.objectArray[frameIndex]))
                pointBasicArrayList = this.createListFromPoints(tempBasicArrayList, points, howMuch, `type`)
                pointsBasicArrayList.add(pointBasicArrayList)
                frameIndex = frameIndex +% 1
            if (not startFrame):
                pointsBasicArrayList.removeAt(0)
            return pointsBasicArrayList
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e

method createListFromPoints*(this: VectorExplosionGenerator, tempBasicArrayList: BasicArrayList, points: JArray[JArray[int32]], howMuch: int32, `type`: VectorExplosionType): BasicArrayList {.base, discardable.} =
        var index: int32 = 0
        let pointBasicArrayList: BasicArrayList = newBasicArrayListD()
        var sectionBasicArrayList: BasicArrayList = nil
        while index < points.length:
            sectionBasicArrayList = newBasicArrayListD()
            while points[index][0] != 1000:
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index = index +% 1
                if index >= points.length:
                    break
            sectionBasicArrayList = RandomTranslation.getInstance(sectionBasicArrayList, howMuch)
            if `type` == this.ROTATION:
                sectionBasicArrayList = this.randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch)
            var size: int32 = sectionBasicArrayList.size()
            block:
                var index2: int32 = 0
                while index2 < size:
                    defer: index2 = index2 +% 1
                    pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2])
            if index >= points.length:
                break
            elif points[index][0] == 1000:
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index = index +% 1
        return pointBasicArrayList

method createPointsBasicArrayList*(this: VectorExplosionGenerator, points: JArray[JArray[int32]]): BasicArrayList {.base, discardable.} =
        if points.length == 0:
            raise newJException("Exception", "Not Points Provided")
        let firstPointBasicArrayList: BasicArrayList = newBasicArrayListS(points.length)
        let pointFactory: PointFactory = PointFactory.getInstance()
        block:
            var index: int32 = 0
            while index < points.length:
                defer: index = index +% 1
                firstPointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
        return firstPointBasicArrayList

