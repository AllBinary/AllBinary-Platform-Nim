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
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule

type
    SimultaneousCompoundIndexAnimation* = ref object of IndexedAnimation
        animationInterfaceArray*: JArray[IndexedAnimation]

proc newSimultaneousCompoundIndexAnimation*(animationInterfaceArray: JArray[IndexedAnimation], animationBehavior: AnimationBehavior): SimultaneousCompoundIndexAnimation
proc initSimultaneousCompoundIndexAnimation*(this: SimultaneousCompoundIndexAnimation, animationInterfaceArray: JArray[IndexedAnimation], animationBehavior: AnimationBehavior)
method setFrame*(this: SimultaneousCompoundIndexAnimation, frameIndex: int32)
method getFrame*(this: SimultaneousCompoundIndexAnimation): int32 {.discardable.}
method getAnimationSize*(this: SimultaneousCompoundIndexAnimation): int32 {.discardable.}
method getSize*(this: SimultaneousCompoundIndexAnimation): int32 {.discardable.}
method previousFrame*(this: SimultaneousCompoundIndexAnimation)
method nextFrame*(this: SimultaneousCompoundIndexAnimation)
method setSequence*(this: SimultaneousCompoundIndexAnimation, sequence: JArray[int32])
method getSequence*(this: SimultaneousCompoundIndexAnimation): JArray[int32] {.discardable.}
method paintXY*(this: SimultaneousCompoundIndexAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: SimultaneousCompoundIndexAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method set*(this: SimultaneousCompoundIndexAnimation, gl: GL)
method getAnimationInterfaceArray*(this: SimultaneousCompoundIndexAnimation): JArray[IndexedAnimation] {.base, discardable.}
method setAnimationInterfaceArray*(this: SimultaneousCompoundIndexAnimation, animationInterfaceArray: JArray[IndexedAnimation]) {.base.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsSimultaneousCompoundIndexAnimation(this: SimultaneousCompoundIndexAnimation) =
    
    discard

proc initSimultaneousCompoundIndexAnimation*(this: SimultaneousCompoundIndexAnimation, animationInterfaceArray: JArray[IndexedAnimation], animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsSimultaneousCompoundIndexAnimation()
        this.animationInterfaceArray = animationInterfaceArray

proc newSimultaneousCompoundIndexAnimation*(animationInterfaceArray: JArray[IndexedAnimation], animationBehavior: AnimationBehavior): SimultaneousCompoundIndexAnimation =
    result = SimultaneousCompoundIndexAnimation()
    initSimultaneousCompoundIndexAnimation(result, animationInterfaceArray, animationBehavior)

method setFrame*(this: SimultaneousCompoundIndexAnimation, frameIndex: int32) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].setFrame(frameIndex)

method getFrame*(this: SimultaneousCompoundIndexAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getFrame()

method getAnimationSize*(this: SimultaneousCompoundIndexAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getAnimationSize()

method getSize*(this: SimultaneousCompoundIndexAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getSize()

method previousFrame*(this: SimultaneousCompoundIndexAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].previousFrame()

method nextFrame*(this: SimultaneousCompoundIndexAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].nextFrame()

method setSequence*(this: SimultaneousCompoundIndexAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: SimultaneousCompoundIndexAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: SimultaneousCompoundIndexAnimation, graphics: Graphics, x: int32, y: int32) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].paintXY(graphics, x, y)

method paintThreedXYZ*(this: SimultaneousCompoundIndexAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)

method set*(this: SimultaneousCompoundIndexAnimation, gl: GL) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].set(gl)

method getAnimationInterfaceArray*(this: SimultaneousCompoundIndexAnimation): JArray[IndexedAnimation] {.base, discardable.} =
        return this.animationInterfaceArray

method setAnimationInterfaceArray*(this: SimultaneousCompoundIndexAnimation, animationInterfaceArray: JArray[IndexedAnimation]) {.base.} =
        this.animationInterfaceArray = animationInterfaceArray

when declared(newSimultaneousCompoundIndexAnimationHook2):
    newSimultaneousCompoundIndexAnimationHook2 = proc (animationInterfaceArray: JArray[IndexedAnimation], animationBehavior: AnimationBehavior): IndexedAnimation = newSimultaneousCompoundIndexAnimation(animationInterfaceArray, animationBehavior)

