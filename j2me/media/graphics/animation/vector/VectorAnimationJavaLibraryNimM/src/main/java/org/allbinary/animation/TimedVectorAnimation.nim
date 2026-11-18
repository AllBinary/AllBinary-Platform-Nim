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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    TimedVectorAnimation* = ref object of VectorAnimation
        timeElapsedHelper*: TimeDelayHelper

proc newTimedVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): TimedVectorAnimation
proc initTimedVectorAnimation*(this: TimedVectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior)
method nextFrame*(this: TimedVectorAnimation)
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsTimedVectorAnimation(this: TimedVectorAnimation) =
    this.timeElapsedHelper = newTimeDelayHelper(200)
    discard

proc initTimedVectorAnimation*(this: TimedVectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior) =
        initVectorAnimation(this, currentPoints, basicColor, animationBehavior)
        this.initFieldsTimedVectorAnimation()

proc newTimedVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): TimedVectorAnimation =
    result = TimedVectorAnimation()
    initTimedVectorAnimation(result, currentPoints, basicColor, animationBehavior)

method nextFrame*(this: TimedVectorAnimation) =
        if this.timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
            procCall VectorAnimation(this).nextFrame()

when declared(newTimedVectorAnimationHook3):
    newTimedVectorAnimationHook3 = proc (currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorAnimation = newTimedVectorAnimation(currentPoints, basicColor, animationBehavior)

