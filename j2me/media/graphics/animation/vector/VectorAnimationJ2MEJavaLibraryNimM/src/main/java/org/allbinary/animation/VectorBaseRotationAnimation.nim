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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/animation/VectorAnimationInterface as VectorAnimationInterfaceModule
export VectorAnimationInterfaceModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    VectorBaseRotationAnimation* = ref object of RotationAnimation
        currentPoints*: JArray[JArray[JArray[int32]]]

converter jAsVectorAnimationInterface*(value: VectorBaseRotationAnimation): VectorAnimationInterface = cast[VectorAnimationInterface](value)
proc newVectorBaseRotationAnimation*(angleInfo: AngleInfo, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorBaseRotationAnimation
proc initVectorBaseRotationAnimation*(this: VectorBaseRotationAnimation, angleInfo: AngleInfo, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: VectorBaseRotationAnimation): int32 {.discardable.}
method getFrame*(this: VectorBaseRotationAnimation): int32 {.discardable.}
method setFrame*(this: VectorBaseRotationAnimation, index: int32)
method nextFrame*(this: VectorBaseRotationAnimation)
method previousFrame*(this: VectorBaseRotationAnimation)
method getSize*(this: VectorBaseRotationAnimation): int32 {.discardable.}
method setSequence*(this: VectorBaseRotationAnimation, sequence: JArray[int32])
method getSequence*(this: VectorBaseRotationAnimation): JArray[int32] {.discardable.}
method paintXY*(this: VectorBaseRotationAnimation, graphics: Graphics, x: int32, y: int32)
method getPoints*(this: VectorBaseRotationAnimation, frame: int32): JArray[JArray[int32]] {.discardable.}
method setPoints*(this: VectorBaseRotationAnimation, currentPoints: JArray[JArray[JArray[int32]]]) {.base.}
method getBasicColorP*(this: VectorBaseRotationAnimation): BasicColor {.discardable.}
method setBasicColorP*(this: VectorBaseRotationAnimation, basicColor: BasicColor)
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsVectorBaseRotationAnimation(this: VectorBaseRotationAnimation) =
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    discard

proc initVectorBaseRotationAnimation*(this: VectorBaseRotationAnimation, angleInfo: AngleInfo, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, angleInfo, CircularIndexUtil.createInstance(360 div int32(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        this.initFieldsVectorBaseRotationAnimation()
        this.setPoints(currentPoints)
        this.setBasicColorP(basicColor)

proc newVectorBaseRotationAnimation*(angleInfo: AngleInfo, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorBaseRotationAnimation =
    result = VectorBaseRotationAnimation()
    initVectorBaseRotationAnimation(result, angleInfo, currentPoints, basicColor, animationBehavior)

method getAnimationSize*(this: VectorBaseRotationAnimation): int32 {.discardable.} =
        return this.getSize()

method getFrame*(this: VectorBaseRotationAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getIndex()

method setFrame*(this: VectorBaseRotationAnimation, index: int32) =
        this.circularIndexUtil.setIndex(index)

method nextFrame*(this: VectorBaseRotationAnimation) =
        this.circularIndexUtil.next()

method previousFrame*(this: VectorBaseRotationAnimation) =
        this.circularIndexUtil.previous()

method getSize*(this: VectorBaseRotationAnimation): int32 {.discardable.} =
        return this.currentPoints.length

method setSequence*(this: VectorBaseRotationAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: VectorBaseRotationAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: VectorBaseRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor)
        try:
            var nextPointX: int32 = 0
            var nextPointY: int32 = 0
            var nextPoint: JArray[int32] = nil
            var point: JArray[int32] = nil
            let currentPointsFrame: JArray[JArray[int32]] = this.currentPoints[this.circularIndexUtil.getIndex()]
            let size: int32 = currentPointsFrame.length
            var index: int32 = size -% 2
            while jPreDecrement(index) >= 0:
                nextPoint = currentPointsFrame[index]
                point = currentPointsFrame[index +% 1]
                nextPointX = nextPoint[0]
                nextPointY = nextPoint[1]
                if nextPointX != 1000:
                    graphics.drawLine(point[0] +% x, point[1] +% y, nextPointX +% x, nextPointY +% y)
                else:
                    index = index -% 1
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "paintVectors", e)

method getPoints*(this: VectorBaseRotationAnimation, frame: int32): JArray[JArray[int32]] {.discardable.} =
        return this.currentPoints[frame]

method setPoints*(this: VectorBaseRotationAnimation, currentPoints: JArray[JArray[JArray[int32]]]) {.base.} =
        this.currentPoints = currentPoints
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.currentPoints.length)

method getBasicColorP*(this: VectorBaseRotationAnimation): BasicColor {.discardable.} =
        return procCall RotationAnimation(this).getBasicColorP()

method setBasicColorP*(this: VectorBaseRotationAnimation, basicColor: BasicColor) =
        procCall RotationAnimation(this).setBasicColorP(basicColor)

when declared(newVectorBaseRotationAnimationHook4):
    newVectorBaseRotationAnimationHook4 = proc (angleInfo: AngleInfo, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): RotationAnimation = newVectorBaseRotationAnimation(angleInfo, currentPoints, basicColor, animationBehavior)

