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
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    IndexedAnimationBehavior* = ref object of AnimationBehavior
        frameDelayTime*: int64
        loopTotal*: int32
        elapsedTime*: int64
        loopIndex*: int32

proc newIndexedAnimationBehavior*(loopTotal: int32, frameDelayTime: int64): IndexedAnimationBehavior
proc initIndexedAnimationBehavior*(this: IndexedAnimationBehavior, loopTotal: int32, frameDelayTime: int64)
method reset*(this: IndexedAnimationBehavior)


# Java field initializers run after the base initializer
proc initFieldsIndexedAnimationBehavior(this: IndexedAnimationBehavior) =
    
    
    this.elapsedTime = 0
    this.loopIndex = 0
    discard

proc initIndexedAnimationBehavior*(this: IndexedAnimationBehavior, loopTotal: int32, frameDelayTime: int64) =
        initAnimationBehavior(this)
        this.initFieldsIndexedAnimationBehavior()
        this.loopTotal = loopTotal
        this.frameDelayTime = frameDelayTime

proc newIndexedAnimationBehavior*(loopTotal: int32, frameDelayTime: int64): IndexedAnimationBehavior =
    result = IndexedAnimationBehavior()
    initIndexedAnimationBehavior(result, loopTotal, frameDelayTime)

method reset*(this: IndexedAnimationBehavior) =
        this.loopIndex = 0

when declared(newIndexedAnimationBehaviorHook2):
    newIndexedAnimationBehaviorHook2 = proc (loopTotal: int32, frameDelayTime: int64): AnimationBehavior = newIndexedAnimationBehavior(loopTotal, frameDelayTime)

