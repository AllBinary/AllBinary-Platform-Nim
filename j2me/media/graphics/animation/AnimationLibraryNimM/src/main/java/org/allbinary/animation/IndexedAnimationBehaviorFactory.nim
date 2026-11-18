#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    IndexedAnimationBehaviorFactory* = ref object of AnimationBehaviorFactory
        frameDelayTime*: int64
        loopTotal*: int32

proc newIndexedAnimationBehaviorFactory*(loopTotal: int32, frameDelayTime: int64): IndexedAnimationBehaviorFactory
proc initIndexedAnimationBehaviorFactory*(this: IndexedAnimationBehaviorFactory, loopTotal: int32, frameDelayTime: int64)
method getOrCreateInstance*(this: IndexedAnimationBehaviorFactory): AnimationBehavior {.discardable.}
import org/allbinary/animation/IndexedAnimationBehavior as IndexedAnimationBehaviorModule
export IndexedAnimationBehaviorModule


# Java field initializers run after the base initializer
proc initFieldsIndexedAnimationBehaviorFactory(this: IndexedAnimationBehaviorFactory) =
    
    
    discard

proc initIndexedAnimationBehaviorFactory*(this: IndexedAnimationBehaviorFactory, loopTotal: int32, frameDelayTime: int64) =
        initAnimationBehaviorFactory(this)
        this.initFieldsIndexedAnimationBehaviorFactory()
        this.loopTotal = loopTotal
        this.frameDelayTime = frameDelayTime

proc newIndexedAnimationBehaviorFactory*(loopTotal: int32, frameDelayTime: int64): IndexedAnimationBehaviorFactory =
    result = IndexedAnimationBehaviorFactory()
    initIndexedAnimationBehaviorFactory(result, loopTotal, frameDelayTime)

method getOrCreateInstance*(this: IndexedAnimationBehaviorFactory): AnimationBehavior {.discardable.} =
        return newIndexedAnimationBehavior(this.loopTotal, this.frameDelayTime)

when declared(newIndexedAnimationBehaviorFactoryHook2):
    newIndexedAnimationBehaviorFactoryHook2 = proc (loopTotal: int32, frameDelayTime: int64): AnimationBehaviorFactory = newIndexedAnimationBehaviorFactory(loopTotal, frameDelayTime)

