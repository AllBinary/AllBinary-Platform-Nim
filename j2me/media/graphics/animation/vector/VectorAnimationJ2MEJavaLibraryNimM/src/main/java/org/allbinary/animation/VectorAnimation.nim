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
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/VectorAnimationInterface as VectorAnimationInterfaceModule
export VectorAnimationInterfaceModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    VectorAnimation* = ref object of IndexedAnimation
        currentPoints*: JArray[JArray[JArray[int32]]]
        circularIndexUtil*: CircularIndexUtil

converter jAsVectorAnimationInterface*(value: VectorAnimation): VectorAnimationInterface = cast[VectorAnimationInterface](value)
converter jAsIndexedAnimationInterface*(value: VectorAnimation): IndexedAnimationInterface = cast[IndexedAnimationInterface](value)
converter jAsSequentialAnimationInterface*(value: VectorAnimation): SequentialAnimationInterface = cast[SequentialAnimationInterface](value)
converter jAsAnimationInterface*(value: VectorAnimation): AnimationInterface = cast[AnimationInterface](value)
converter jAsLocationPaintableInterface*(value: VectorAnimation): LocationPaintableInterface = cast[LocationPaintableInterface](value)
converter jAsSequenceInterface*(value: VectorAnimation): SequenceInterface = cast[SequenceInterface](value)
converter jAsColorCompositeInterface*(value: VectorAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
converter jAsBasicColorCompositeSetterInterface*(value: VectorAnimation): BasicColorCompositeSetterInterface = cast[BasicColorCompositeSetterInterface](value)
proc newVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorAnimation
proc initVectorAnimation*(this: VectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior)
proc createVectorAnimation*(t: typedesc[VectorAnimation], currentPoints2: JArray[JArray[int32]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorAnimation {.discardable.}
method setBasicColorP*(this: VectorAnimation, basicColor: BasicColor)
method changeBasicColor*(this: VectorAnimation, basicColor: BasicColor)
method setAlpha*(this: VectorAnimation, alpha: int32)
method setScale*(this: VectorAnimation, scaleX: float32, scaleY: float32)
method setMaxScale*(this: VectorAnimation, maxScaleX: float32, maxScaleY: float32)
method updateModifiers*(this: VectorAnimation) {.base.}
method getAnimationSize*(this: VectorAnimation): int32 {.discardable.}
method getSize*(this: VectorAnimation): int32 {.discardable.}
method setSequence*(this: VectorAnimation, sequence: JArray[int32])
method getSequence*(this: VectorAnimation): JArray[int32] {.discardable.}
method nextFrame*(this: VectorAnimation)
method previousFrame*(this: VectorAnimation)
method paintVectors*(this: VectorAnimation, graphics: Graphics, x: int32, y: int32) {.base.}
method paintXY*(this: VectorAnimation, graphics: Graphics, x: int32, y: int32)
method getFrame*(this: VectorAnimation): int32 {.discardable.}
method setFrame*(this: VectorAnimation, index: int32)
method getPoints*(this: VectorAnimation, frame: int32): JArray[JArray[int32]] {.discardable.}
method setPoints*(this: VectorAnimation, currentPoints: JArray[JArray[JArray[int32]]]) {.base.}
method getBasicColorP*(this: VectorAnimation): BasicColor {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsVectorAnimation(this: VectorAnimation) =
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    this.circularIndexUtil = CircularIndexUtil.createInstance(0)
    discard

proc createVectorAnimation*(t: typedesc[VectorAnimation], currentPoints2: JArray[JArray[int32]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorAnimation {.discardable.} =
        let currentPoints: JArray[JArray[JArray[int32]]] = newJArrayOf[JArray[JArray[int32]]](1, proc (): JArray[JArray[int32]] = newJArrayOf[JArray[int32]](currentPoints2.length, proc (): JArray[int32] = newJArray[int32](2, default(int32))))
        var size: int32 = currentPoints2.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                currentPoints[0][index][0] = currentPoints2[index][0]
                currentPoints[0][index][1] = currentPoints2[index][1]
        return newVectorAnimation(currentPoints, basicColor, animationBehavior)

proc initVectorAnimation*(this: VectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsVectorAnimation()
        this.setPoints(currentPoints)
        this.setBasicColorP(basicColor)

proc newVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorAnimation =
    result = VectorAnimation()
    initVectorAnimation(result, currentPoints, basicColor, animationBehavior)

method setBasicColorP*(this: VectorAnimation, basicColor: BasicColor) =
        var changed: bool = false
        if (jIsNil(this.getBasicColorP())) or this.getBasicColorP().intValue() != basicColor.intValue():
            changed = true
        jSuperStatement(procCall IndexedAnimation(this).setBasicColorP(basicColor))
        if changed:
            this.updateModifiers()

method changeBasicColor*(this: VectorAnimation, basicColor: BasicColor) =
        var changed: bool = false
        if (jIsNil(this.getChangeBasicColor())) or this.getChangeBasicColor().intValue() != basicColor.intValue():
            changed = true
        jSuperStatement(procCall IndexedAnimation(this).changeBasicColor(basicColor))
        if changed:
            this.updateModifiers()

method setAlpha*(this: VectorAnimation, alpha: int32) =
        var changed: bool = false
        if this.alphaP != alpha:
            changed = true
        jSuperStatement(procCall IndexedAnimation(this).setAlpha(alpha))
        if changed:
            this.updateModifiers()

method setScale*(this: VectorAnimation, scaleX: float32, scaleY: float32) =
        discard

method setMaxScale*(this: VectorAnimation, maxScaleX: float32, maxScaleY: float32) =
        discard

method updateModifiers*(this: VectorAnimation) {.base.} =
        discard

method getAnimationSize*(this: VectorAnimation): int32 {.discardable.} =
        return this.getSize()

method getSize*(this: VectorAnimation): int32 {.discardable.} =
        return this.currentPoints.length

method setSequence*(this: VectorAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: VectorAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method nextFrame*(this: VectorAnimation) =
        this.circularIndexUtil.next()

method previousFrame*(this: VectorAnimation) =
        this.circularIndexUtil.previous()

method paintVectors*(this: VectorAnimation, graphics: Graphics, x: int32, y: int32) {.base.} =
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

method paintXY*(this: VectorAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor)
        this.paintVectors(graphics, x, y)

method getFrame*(this: VectorAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getIndex()

method setFrame*(this: VectorAnimation, index: int32) =
        this.circularIndexUtil.setIndex(index)

method getPoints*(this: VectorAnimation, frame: int32): JArray[JArray[int32]] {.discardable.} =
        return this.currentPoints[frame]

method setPoints*(this: VectorAnimation, currentPoints: JArray[JArray[JArray[int32]]]) {.base.} =
        this.currentPoints = currentPoints
        this.circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.length)

method getBasicColorP*(this: VectorAnimation): BasicColor {.discardable.} =
        return procCall IndexedAnimation(this).getBasicColorP()

when declared(newVectorAnimationHook3):
    newVectorAnimationHook3 = proc (currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): IndexedAnimation = newVectorAnimation(currentPoints, basicColor, animationBehavior)

