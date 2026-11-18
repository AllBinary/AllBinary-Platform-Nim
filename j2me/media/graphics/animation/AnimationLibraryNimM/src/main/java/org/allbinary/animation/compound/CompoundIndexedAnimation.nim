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
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/animation/compound/CompoundAnimationInterface as CompoundAnimationInterfaceModule
export CompoundAnimationInterfaceModule

type
    CompoundIndexedAnimation* = ref object of IndexedAnimation
        circularIndexUtil*: CircularIndexUtil
        animationInterfaceArray*: JArray[Animation]

converter jAsCompoundAnimationInterface*(value: CompoundIndexedAnimation): CompoundAnimationInterface = cast[CompoundAnimationInterface](value)
proc newCompoundIndexedAnimation*(animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior): CompoundIndexedAnimation
proc initCompoundIndexedAnimation*(this: CompoundIndexedAnimation, animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior)
method setFrame*(this: CompoundIndexedAnimation, index: int32)
method getFrame*(this: CompoundIndexedAnimation): int32 {.discardable.}
method getSize*(this: CompoundIndexedAnimation): int32 {.discardable.}
method previousFrame*(this: CompoundIndexedAnimation)
method setSequence*(this: CompoundIndexedAnimation, sequence: JArray[int32])
method getSequence*(this: CompoundIndexedAnimation): JArray[int32] {.discardable.}
method nextFrame*(this: CompoundIndexedAnimation)
method paintXY*(this: CompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: CompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method getCurrentAnimation*(this: CompoundIndexedAnimation): IndexedAnimation {.discardable.}
method nextAnimation*(this: CompoundIndexedAnimation)
method previousAnimation*(this: CompoundIndexedAnimation)
method setAnimation*(this: CompoundIndexedAnimation, index: int32)
method getAnimationInterfaceArray*(this: CompoundIndexedAnimation): JArray[Animation] {.base, discardable.}
method setAnimationInterfaceArray*(this: CompoundIndexedAnimation, animationInterfaceArray: JArray[Animation]) {.base.}
method set*(this: CompoundIndexedAnimation, gl: GL)
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsCompoundIndexedAnimation(this: CompoundIndexedAnimation) =
    
    
    discard

proc initCompoundIndexedAnimation*(this: CompoundIndexedAnimation, animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsCompoundIndexedAnimation()
        this.animationInterfaceArray = animationInterfaceArray
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length)

proc newCompoundIndexedAnimation*(animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior): CompoundIndexedAnimation =
    result = CompoundIndexedAnimation()
    initCompoundIndexedAnimation(result, animationInterfaceArray, animationBehavior)

method setFrame*(this: CompoundIndexedAnimation, index: int32) =
        let indexedAnimation: IndexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[this.circularIndexUtil.getIndex()]))
        indexedAnimation.setFrame(index)

method getFrame*(this: CompoundIndexedAnimation): int32 {.discardable.} =
        let indexedAnimation: IndexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[this.circularIndexUtil.getIndex()]))
        return indexedAnimation.getFrame()

method getSize*(this: CompoundIndexedAnimation): int32 {.discardable.} =
        let indexedAnimation: IndexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[this.circularIndexUtil.getIndex()]))
        return indexedAnimation.getSize()

method previousFrame*(this: CompoundIndexedAnimation) =
        let indexedAnimation: IndexedAnimation = IndexedAnimation(JObject(this.animationInterfaceArray[this.circularIndexUtil.getIndex()]))
        indexedAnimation.previousFrame()

method setSequence*(this: CompoundIndexedAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: CompoundIndexedAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method nextFrame*(this: CompoundIndexedAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame()

method paintXY*(this: CompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y)

method paintThreedXYZ*(this: CompoundIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)

method getCurrentAnimation*(this: CompoundIndexedAnimation): IndexedAnimation {.discardable.} =
        return IndexedAnimation(JObject(this.animationInterfaceArray[this.circularIndexUtil.getIndex()]))

method nextAnimation*(this: CompoundIndexedAnimation) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.next()
        this.setFrame(frame)

method previousAnimation*(this: CompoundIndexedAnimation) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.previous()
        this.setFrame(frame)

method setAnimation*(this: CompoundIndexedAnimation, index: int32) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.setIndex(index)
        this.setFrame(frame)

method getAnimationInterfaceArray*(this: CompoundIndexedAnimation): JArray[Animation] {.base, discardable.} =
        return this.animationInterfaceArray

method setAnimationInterfaceArray*(this: CompoundIndexedAnimation, animationInterfaceArray: JArray[Animation]) {.base.} =
        this.animationInterfaceArray = animationInterfaceArray

method set*(this: CompoundIndexedAnimation, gl: GL) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].set(gl)

when declared(newCompoundIndexedAnimationHook2):
    newCompoundIndexedAnimationHook2 = proc (animationInterfaceArray: JArray[Animation], animationBehavior: AnimationBehavior): IndexedAnimation = newCompoundIndexedAnimation(animationInterfaceArray, animationBehavior)

