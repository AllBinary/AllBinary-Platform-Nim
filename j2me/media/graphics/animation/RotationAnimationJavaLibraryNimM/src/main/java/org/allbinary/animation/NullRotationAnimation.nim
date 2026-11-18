# Generated Code Do Not Modify
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    NullRotationAnimation* = ref object of RotationAnimation

proc newNullRotationAnimation*(angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior): NullRotationAnimation
proc initNullRotationAnimation*(this: NullRotationAnimation, angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior)
proc createTotalAngle*(t: typedesc[NullRotationAnimation], angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior): NullRotationAnimation {.discardable.}
proc createQuarter*(t: typedesc[NullRotationAnimation], animationBehavior: AnimationBehavior): NullRotationAnimation {.discardable.}
method getAnimationSize*(this: NullRotationAnimation): int32 {.discardable.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


proc createTotalAngle*(t: typedesc[NullRotationAnimation], angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior): NullRotationAnimation {.discardable.} =
        return newNullRotationAnimation(angleInfo, CircularIndexUtil.createInstance(totalAngle div angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)

proc createQuarter*(t: typedesc[NullRotationAnimation], animationBehavior: AnimationBehavior): NullRotationAnimation {.discardable.} =
        return newNullRotationAnimation(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)

proc initNullRotationAnimation*(this: NullRotationAnimation, angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, angleInfo, circularIndexUtil, animationBehavior)

proc newNullRotationAnimation*(angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior): NullRotationAnimation =
    result = NullRotationAnimation()
    initNullRotationAnimation(result, angleInfo, circularIndexUtil, animationBehavior)

method getAnimationSize*(this: NullRotationAnimation): int32 {.discardable.} =
        return 0

when declared(newNullRotationAnimationHook3):
    newNullRotationAnimationHook3 = proc (angleInfo: AngleInfo, circularIndexUtil: CircularIndexUtil, animationBehavior: AnimationBehavior): RotationAnimation = newNullRotationAnimation(angleInfo, circularIndexUtil, animationBehavior)

