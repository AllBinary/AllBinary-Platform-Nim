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
# package org.allbinary.animation.special

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/special/SpecialAnimationInterface as SpecialAnimationInterfaceModule
export SpecialAnimationInterfaceModule

type
    SpecialAnimation* = ref object of IndexedAnimation

converter jAsSpecialAnimationInterface*(value: SpecialAnimation): SpecialAnimationInterface = cast[SpecialAnimationInterface](value)
proc newSpecialAnimation*(animationBehavior: AnimationBehavior): SpecialAnimation
proc initSpecialAnimation*(this: SpecialAnimation, animationBehavior: AnimationBehavior)
proc getInstance*(t: typedesc[SpecialAnimation]): SpecialAnimation {.discardable.}
method nextFrame*(this: SpecialAnimation)
method setLastFrame*(this: SpecialAnimation)
method isComplete*(this: SpecialAnimation): bool {.discardable.}
method open*(this: SpecialAnimation) {.base.}
method close*(this: SpecialAnimation) {.base.}
method process*(this: SpecialAnimation) {.base.}
import org/allbinary/animation/IndexedAnimationBehavior as IndexedAnimationBehaviorModule
export IndexedAnimationBehaviorModule

var SpecialAnimation_NULL_SPECIAL_ANIMATIONValue: SpecialAnimation
var SpecialAnimation_NULL_SPECIAL_ANIMATIONSet = false
proc NULL_SPECIAL_ANIMATION*(t: typedesc[SpecialAnimation]): SpecialAnimation =
    if not SpecialAnimation_NULL_SPECIAL_ANIMATIONSet:
        SpecialAnimation_NULL_SPECIAL_ANIMATIONSet = true
        SpecialAnimation_NULL_SPECIAL_ANIMATIONValue = newSpecialAnimation(newIndexedAnimationBehavior(1, 250))
    SpecialAnimation_NULL_SPECIAL_ANIMATIONValue

proc getInstance*(t: typedesc[SpecialAnimation]): SpecialAnimation {.discardable.} =
        return SpecialAnimation.NULL_SPECIAL_ANIMATION

proc initSpecialAnimation*(this: SpecialAnimation, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)

proc newSpecialAnimation*(animationBehavior: AnimationBehavior): SpecialAnimation =
    result = SpecialAnimation()
    initSpecialAnimation(result, animationBehavior)

method nextFrame*(this: SpecialAnimation) =
        let indexedAnimationBehavior: IndexedAnimationBehavior = (IndexedAnimationBehavior(JObject(this.animationBehaviorP)))
        indexedAnimationBehavior.loopIndex = indexedAnimationBehavior.loopIndex +% 1

method setLastFrame*(this: SpecialAnimation) =
        discard

method isComplete*(this: SpecialAnimation): bool {.discardable.} =
        return false

method open*(this: SpecialAnimation) {.base.} =
        discard

method close*(this: SpecialAnimation) {.base.} =
        discard

method process*(this: SpecialAnimation) {.base.} =
        discard

when declared(newSpecialAnimationHook1):
    newSpecialAnimationHook1 = proc (animationBehavior: AnimationBehavior): IndexedAnimation = newSpecialAnimation(animationBehavior)

