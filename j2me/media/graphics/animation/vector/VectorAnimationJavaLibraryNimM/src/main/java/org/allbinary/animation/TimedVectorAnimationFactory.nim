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
import org/allbinary/animation/VectorAnimationFactoryInterface as VectorAnimationFactoryInterfaceModule
export VectorAnimationFactoryInterfaceModule
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule

type
    TimedVectorAnimationFactory* = ref object of VectorAnimationFactoryInterface

proc newTimedVectorAnimationFactory*(): TimedVectorAnimationFactory
method getInstance*(this: TimedVectorAnimationFactory, points: JArray[JArray[JArray[int32]]], basicColor: BasicColor): VectorAnimation {.discardable.}
import org/allbinary/animation/TimedVectorAnimation as TimedVectorAnimationModule
export TimedVectorAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule


proc initTimedVectorAnimationFactory*(this: TimedVectorAnimationFactory) =
    discard

proc newTimedVectorAnimationFactory*(): TimedVectorAnimationFactory =
    result = TimedVectorAnimationFactory()
    initTimedVectorAnimationFactory(result)

method getInstance*(this: TimedVectorAnimationFactory, points: JArray[JArray[JArray[int32]]], basicColor: BasicColor): VectorAnimation {.discardable.} =
        return newTimedVectorAnimation(points, basicColor, AnimationBehavior.getInstance())

