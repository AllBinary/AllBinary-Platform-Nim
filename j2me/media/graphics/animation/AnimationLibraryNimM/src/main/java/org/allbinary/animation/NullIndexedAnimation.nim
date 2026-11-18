# Generated Code Do Not Modify
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    NullIndexedAnimation* = ref object of IndexedAnimation

proc newNullIndexedAnimation*(animationBehavior: AnimationBehavior): NullIndexedAnimation
proc initNullIndexedAnimation*(this: NullIndexedAnimation, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: NullIndexedAnimation): int32 {.discardable.}


proc initNullIndexedAnimation*(this: NullIndexedAnimation, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)

proc newNullIndexedAnimation*(animationBehavior: AnimationBehavior): NullIndexedAnimation =
    result = NullIndexedAnimation()
    initNullIndexedAnimation(result, animationBehavior)

method getAnimationSize*(this: NullIndexedAnimation): int32 {.discardable.} =
        return 0

when declared(newNullIndexedAnimationHook1):
    newNullIndexedAnimationHook1 = proc (animationBehavior: AnimationBehavior): IndexedAnimation = newNullIndexedAnimation(animationBehavior)

