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
# package org.allbinary.animation.compound

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule

type
    SimultaneousCompoundIndexedAnimation* = ref object of IndexedAnimation
        animationInterfaceArray*: JArray[Animation]

proc newSimultaneousCompoundIndexedAnimation*(animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior): SimultaneousCompoundIndexedAnimation
proc initSimultaneousCompoundIndexedAnimation*(this: SimultaneousCompoundIndexedAnimation, animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior)
method setFrame*(this: SimultaneousCompoundIndexedAnimation, frameIndex: int32)
method getFrame*(this: SimultaneousCompoundIndexedAnimation): int32 {.discardable.}
method getSize*(this: SimultaneousCompoundIndexedAnimation): int32 {.discardable.}
method previousFrame*(this: SimultaneousCompoundIndexedAnimation)
method setSequence*(this: SimultaneousCompoundIndexedAnimation, sequence: JArray[int32])
method getSequence*(this: SimultaneousCompoundIndexedAnimation): JArray[int32] {.discardable.}
method nextFrame*(this: SimultaneousCompoundIndexedAnimation)
method paintXY*(this: SimultaneousCompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: SimultaneousCompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method getAnimationInterfaceArray*(this: SimultaneousCompoundIndexedAnimation): JArray[Animation] {.base, discardable.}
method setAnimationInterfaceArray*(this: SimultaneousCompoundIndexedAnimation, animationInterfaceArray: JArray[Animation]) {.base.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsSimultaneousCompoundIndexedAnimation(this: SimultaneousCompoundIndexedAnimation) =
    
    discard

proc initSimultaneousCompoundIndexedAnimation*(this: SimultaneousCompoundIndexedAnimation, animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsSimultaneousCompoundIndexedAnimation()
        this.animationInterfaceArray = animationInterfaceArray

proc newSimultaneousCompoundIndexedAnimation*(animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior): SimultaneousCompoundIndexedAnimation =
    result = SimultaneousCompoundIndexedAnimation()
    initSimultaneousCompoundIndexedAnimation(result, animationInterfaceArray, animationBehavior)

method setFrame*(this: SimultaneousCompoundIndexedAnimation, frameIndex: int32) =
        var indexedAnimation: IndexedAnimation = nil
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                indexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[index]))
                indexedAnimation.setFrame(frameIndex)

method getFrame*(this: SimultaneousCompoundIndexedAnimation): int32 {.discardable.} =
        let indexedAnimation: IndexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[0]))
        return indexedAnimation.getFrame()

method getSize*(this: SimultaneousCompoundIndexedAnimation): int32 {.discardable.} =
        let indexedAnimation: IndexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[0]))
        return indexedAnimation.getSize()

method previousFrame*(this: SimultaneousCompoundIndexedAnimation) =
        var indexedAnimation: IndexedAnimation = nil
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                indexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[index]))
                indexedAnimation.previousFrame()

method setSequence*(this: SimultaneousCompoundIndexedAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: SimultaneousCompoundIndexedAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method nextFrame*(this: SimultaneousCompoundIndexedAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].nextFrame()

method paintXY*(this: SimultaneousCompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32) =
        var size: int32 = this.animationInterfaceArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.animationInterfaceArray[index].paintXY(graphics, x, y)

method paintThreedXYZ*(this: SimultaneousCompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        var size: int32 = this.animationInterfaceArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)

method getAnimationInterfaceArray*(this: SimultaneousCompoundIndexedAnimation): JArray[Animation] {.base, discardable.} =
        return this.animationInterfaceArray

method setAnimationInterfaceArray*(this: SimultaneousCompoundIndexedAnimation, animationInterfaceArray: JArray[Animation]) {.base.} =
        this.animationInterfaceArray = animationInterfaceArray

when declared(newSimultaneousCompoundIndexedAnimationHook2):
    newSimultaneousCompoundIndexedAnimationHook2 = proc (animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior): IndexedAnimation = newSimultaneousCompoundIndexedAnimation(animationInterfaceArray, animationBehavior)

