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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/IndexedAnimationInterface as IndexedAnimationInterfaceModule
export IndexedAnimationInterfaceModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    IndexedAnimation* = ref object of Animation
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        animationBehaviorP*: AnimationBehavior

converter jAsIndexedAnimationInterface*(value: IndexedAnimation): IndexedAnimationInterface = cast[IndexedAnimationInterface](value)
converter jAsSequentialAnimationInterface*(value: IndexedAnimation): SequentialAnimationInterface = cast[SequentialAnimationInterface](value)
converter jAsAnimationInterface*(value: IndexedAnimation): AnimationInterface = cast[AnimationInterface](value)
converter jAsLocationPaintableInterface*(value: IndexedAnimation): LocationPaintableInterface = cast[LocationPaintableInterface](value)
converter jAsSequenceInterface*(value: IndexedAnimation): SequenceInterface = cast[SequenceInterface](value)
proc newIndexedAnimation*(animationBehavior: AnimationBehavior): IndexedAnimation
proc initIndexedAnimation*(this: IndexedAnimation, animationBehavior: AnimationBehavior)
method getAnimationBehavior*(this: IndexedAnimation): AnimationBehavior {.base, discardable.}
method reset*(this: IndexedAnimation)
method setFrame*(this: IndexedAnimation, index: int32)
method getFrame*(this: IndexedAnimation): int32 {.discardable.}
method getAnimationSize*(this: IndexedAnimation): int32 {.base, discardable.}
method getSize*(this: IndexedAnimation): int32 {.discardable.}
method previousFrame*(this: IndexedAnimation)
method isLastFrame*(this: IndexedAnimation): bool {.base, discardable.}
method setSequence*(this: IndexedAnimation, sequence: JArray[int32])
method getSequence*(this: IndexedAnimation): JArray[int32] {.discardable.}
method setState*(this: IndexedAnimation, indexedAnimation: IndexedAnimation) {.base.}
method getWidth*(this: IndexedAnimation): int32 {.base, discardable.}
method getHeight*(this: IndexedAnimation): int32 {.base, discardable.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsIndexedAnimation(this: IndexedAnimation) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    discard

proc initIndexedAnimation*(this: IndexedAnimation, animationBehavior: AnimationBehavior) =
        initAnimation(this)
        this.initFieldsIndexedAnimation()
        this.animationBehaviorP = animationBehavior

proc newIndexedAnimation*(animationBehavior: AnimationBehavior): IndexedAnimation =
    result = IndexedAnimation()
    initIndexedAnimation(result, animationBehavior)

method getAnimationBehavior*(this: IndexedAnimation): AnimationBehavior {.base, discardable.} =
        return this.animationBehaviorP

method reset*(this: IndexedAnimation) =
        this.animationBehaviorP.reset()
        this.setFrame(0)

method setFrame*(this: IndexedAnimation, index: int32) =
        discard

method getFrame*(this: IndexedAnimation): int32 {.discardable.} =
        return 0

method getAnimationSize*(this: IndexedAnimation): int32 {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method getSize*(this: IndexedAnimation): int32 {.discardable.} =
        return 0

method previousFrame*(this: IndexedAnimation) =
        discard

method isLastFrame*(this: IndexedAnimation): bool {.base, discardable.} =
        if this.getFrame() == this.getSize() -% 1:
            return true
        else:
            return false

method setSequence*(this: IndexedAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: IndexedAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method setState*(this: IndexedAnimation, indexedAnimation: IndexedAnimation) {.base.} =
        this.setFrame(indexedAnimation.getFrame())
        this.setDx(indexedAnimation.getDx())
        this.setDy(indexedAnimation.getDy())

method getWidth*(this: IndexedAnimation): int32 {.base, discardable.} =
        return 0

method getHeight*(this: IndexedAnimation): int32 {.base, discardable.} =
        return 0

when declared(newIndexedAnimationHook1):
    newIndexedAnimationHook1 = proc (animationBehavior: AnimationBehavior): Animation = newIndexedAnimation(animationBehavior)

