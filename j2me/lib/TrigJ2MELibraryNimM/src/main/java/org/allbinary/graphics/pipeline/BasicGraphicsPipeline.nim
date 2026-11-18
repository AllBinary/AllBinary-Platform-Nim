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
# package org.allbinary.graphics.pipeline

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/math/NoDecimalTrigTable as NoDecimalTrigTableModule
export NoDecimalTrigTableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    BasicGraphicsPipeline* = ref object of JObject
        pointBasicArrayList*: BasicArrayList
        noDecimalTrigTable*: NoDecimalTrigTable

proc newBasicGraphicsPipeline*(points: BasicArrayList): BasicGraphicsPipeline
proc initBasicGraphicsPipeline*(this: BasicGraphicsPipeline, points: BasicArrayList)
method setInitMatrix*(this: BasicGraphicsPipeline, points: BasicArrayList) {.base.}
method createMatrix*(this: BasicGraphicsPipeline) {.base.}
method translate*(this: BasicGraphicsPipeline, x: int32, y: int32) {.base.}
method rotateToAngle*(this: BasicGraphicsPipeline, angle: Angle) {.base.}
method rotate*(this: BasicGraphicsPipeline, angle: int32) {.base.}
method mirror*(this: BasicGraphicsPipeline, width: int32) {.base.}
method getMatrix*(this: BasicGraphicsPipeline): BasicArrayList {.base, discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsBasicGraphicsPipeline(this: BasicGraphicsPipeline) =
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    discard

proc initBasicGraphicsPipeline*(this: BasicGraphicsPipeline, points: BasicArrayList) =
        this.initFieldsBasicGraphicsPipeline()
        this.pointBasicArrayList = points

proc newBasicGraphicsPipeline*(points: BasicArrayList): BasicGraphicsPipeline =
    result = BasicGraphicsPipeline()
    initBasicGraphicsPipeline(result, points)

method setInitMatrix*(this: BasicGraphicsPipeline, points: BasicArrayList) {.base.} =
        this.pointBasicArrayList = points

method createMatrix*(this: BasicGraphicsPipeline) {.base.} =
        discard

method translate*(this: BasicGraphicsPipeline, x: int32, y: int32) {.base.} =
        var newBasicArrayList: BasicArrayList = newBasicArrayListD()
        var size: int32 = this.pointBasicArrayList.size()
        var pointFactory: PointFactory = PointFactory.getInstance()
        var secondPoint: GPoint = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                secondPoint = GPoint(JObject(this.pointBasicArrayList.objectArray[index]))
                if secondPoint.getX() != 1000:
                    newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() +% x, secondPoint.getY() +% y))
                else:
                    newBasicArrayList.add(secondPoint)
        this.pointBasicArrayList = newBasicArrayList

method rotateToAngle*(this: BasicGraphicsPipeline, angle: Angle) {.base.} =
        this.rotate(int32(angle.getValue()))

method rotate*(this: BasicGraphicsPipeline, angle: int32) {.base.} =
        var newBasicArrayList: BasicArrayList = newBasicArrayListD()
        var secondPoint: GPoint = nil
        var y: int64 = 0
        var secondX: int64 = 0
        var secondY: int64 = 0
        var point: GPoint = nil
        var pointFactory: PointFactory = PointFactory.getInstance()
        var size: int32 = this.pointBasicArrayList.size()
        var sin: int64 = 0
        var cos: int64 = 0
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                secondPoint = GPoint(JObject(this.pointBasicArrayList.objectArray[index]))
                if secondPoint.getX() != 1000:
                    sin = this.noDecimalTrigTable.sin(angle)
                    cos = this.noDecimalTrigTable.cos(angle)
                    y = int64(secondPoint.getY()) *% sin
                    secondX = (int64(secondPoint.getX()) *% cos) -% y
                    secondY = (int64(secondPoint.getX()) *% sin) +% (int64(secondPoint.getY()) *% cos)
                    point = pointFactory.createXY(jToInt32(secondX) div 10000, jToInt32(secondY) div 10000)
                    newBasicArrayList.add(point)
                else:
                    newBasicArrayList.add(secondPoint)
        this.pointBasicArrayList = newBasicArrayList

method mirror*(this: BasicGraphicsPipeline, width: int32) {.base.} =
        let pointFactory: PointFactory = PointFactory.getInstance()
        let halfWidth: int32 = (ashr(width, 1))
        let newBasicArrayList: BasicArrayList = newBasicArrayListD()
        var secondPoint: GPoint = nil
        var newX: int32 = 0
        var point: GPoint = nil
        let size: int32 = this.pointBasicArrayList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                secondPoint = GPoint(JObject(this.pointBasicArrayList.objectArray[index]))
                if secondPoint.getX() != 1000:
                    newX = 0
                    if secondPoint.getX() > halfWidth:
                        newX = halfWidth -% (secondPoint.getX() -% halfWidth)
                    else:
                        newX = halfWidth +% (halfWidth -% secondPoint.getX())
                    point = pointFactory.createXY(newX, secondPoint.getY())
                    newBasicArrayList.add(point)
                else:
                    newBasicArrayList.add(secondPoint)
        this.pointBasicArrayList = newBasicArrayList

method getMatrix*(this: BasicGraphicsPipeline): BasicArrayList {.base, discardable.} =
        return this.pointBasicArrayList

