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
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/direction/DirectionUtil as DirectionUtilModule
export DirectionUtilModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/math/FrameUtil as FrameUtilModule
export FrameUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/RotationAnimationInterface as RotationAnimationInterfaceModule
export RotationAnimationInterfaceModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    RotationAnimation* = ref object of IndexedAnimation
        frameUtil*: FrameUtil
        directionUtil*: DirectionUtil
        angleInfo*: AngleInfo
        circularIndexUtil*: CircularIndexUtil

converter jAsRotationAnimationInterface*(value: RotationAnimation): RotationAnimationInterface = cast[RotationAnimationInterface](value)
converter jAsIndexedAnimationInterface*(value: RotationAnimation): IndexedAnimationInterface = cast[IndexedAnimationInterface](value)
converter jAsSequentialAnimationInterface*(value: RotationAnimation): SequentialAnimationInterface = cast[SequentialAnimationInterface](value)
converter jAsAnimationInterface*(value: RotationAnimation): AnimationInterface = cast[AnimationInterface](value)
converter jAsLocationPaintableInterface*(value: RotationAnimation): LocationPaintableInterface = cast[LocationPaintableInterface](value)
converter jAsSequenceInterface*(value: RotationAnimation): SequenceInterface = cast[SequenceInterface](value)
converter jAsDirectionalInterface*(value: RotationAnimation): DirectionalInterface = cast[DirectionalInterface](value)
proc newRotationAnimation*(angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior): RotationAnimation
proc initRotationAnimation*(this: RotationAnimation, angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior)
method nextRotationX*(this: RotationAnimation) {.base.}
method previousRotationX*(this: RotationAnimation) {.base.}
method nextRotation*(this: RotationAnimation)
method previousRotation*(this: RotationAnimation)
method nextRotationZ*(this: RotationAnimation) {.base.}
method previousRotationZ*(this: RotationAnimation) {.base.}
method setFrame*(this: RotationAnimation, index: int32)
method setFrameByDirection*(this: RotationAnimation, direction: Direction)
method setFrameToAngle*(this: RotationAnimation, angle: Angle)
method adjustFrameToAngle*(this: RotationAnimation, angle: Angle)
method adjustFrame*(this: RotationAnimation, angle: int16)
method getFrame*(this: RotationAnimation): int32 {.discardable.}
method getSize*(this: RotationAnimation): int32 {.discardable.}
method getAngleInfoP*(this: RotationAnimation): AngleInfo {.discardable.}
method toString*(this: RotationAnimation): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


# Java field initializers run after the base initializer
proc initFieldsRotationAnimation(this: RotationAnimation) =
    this.frameUtil = FrameUtil.getInstance()
    this.directionUtil = DirectionUtil.getInstance()
    
    
    discard

proc initRotationAnimation*(this: RotationAnimation, angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsRotationAnimation()
        this.angleInfo = angleInfo
        this.circularIndexUtil = circularIndexUtil

proc newRotationAnimation*(angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior): RotationAnimation =
    result = RotationAnimation()
    initRotationAnimation(result, angleInfo, circularIndexUtil, animationBehavior)

method nextRotationX*(this: RotationAnimation) {.base.} =
        discard

method previousRotationX*(this: RotationAnimation) {.base.} =
        discard

method nextRotation*(this: RotationAnimation) =
        this.angleInfo.adjustAngle(this.circularIndexUtil.next())

method previousRotation*(this: RotationAnimation) =
        this.angleInfo.adjustAngle(this.circularIndexUtil.previous())

method nextRotationZ*(this: RotationAnimation) {.base.} =
        discard

method previousRotationZ*(this: RotationAnimation) {.base.} =
        discard

method setFrame*(this: RotationAnimation, index: int32) =
        this.circularIndexUtil.setIndex(index)
        let newFrame: int32 = this.circularIndexUtil.getIndex()
        this.angleInfo.adjustAngle(newFrame)

method setFrameByDirection*(this: RotationAnimation, direction: Direction) =
        let angle: Angle = this.directionUtil.getFrameAngle(direction)
        this.adjustFrameToAngle(angle)

method setFrameToAngle*(this: RotationAnimation, angle: Angle) =
        this.adjustFrameToAngle(angle)

method adjustFrameToAngle*(this: RotationAnimation, angle: Angle) =
        this.adjustFrame(angle.getValue())

method adjustFrame*(this: RotationAnimation, angle: int16) =
        this.setFrame(this.frameUtil.getFrameForAngle(angle, int32(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())))

method getFrame*(this: RotationAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getIndex()

method getSize*(this: RotationAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getSize()

method getAngleInfoP*(this: RotationAnimation): AngleInfo {.discardable.} =
        return this.angleInfo

method toString*(this: RotationAnimation): string {.discardable.} =
        return newStringMaker().append(procCall IndexedAnimation(this).toString()).append("circularIndexUtil: ").append(this.circularIndexUtil.toString()).append("angleInfo: ").append(this.angleInfo.toString()).toString()

when declared(newRotationAnimationHook3):
    newRotationAnimationHook3 = proc (angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior): IndexedAnimation = newRotationAnimation(angleInfo, circularIndexUtil, animationBehavior)

