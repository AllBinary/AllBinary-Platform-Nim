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
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule

type
    SimultaneousCompoundRotationAnimation* = ref object of RotationAnimation
        animationInterfaceArray*: JArray[RotationAnimation]

proc newSimultaneousCompoundRotationAnimation*(animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): SimultaneousCompoundRotationAnimation
proc initSimultaneousCompoundRotationAnimation*(this: SimultaneousCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior)
method setFrame*(this: SimultaneousCompoundRotationAnimation, frameIndex: int32)
method getFrame*(this: SimultaneousCompoundRotationAnimation): int32 {.discardable.}
method getAnimationSize*(this: SimultaneousCompoundRotationAnimation): int32 {.discardable.}
method getSize*(this: SimultaneousCompoundRotationAnimation): int32 {.discardable.}
method previousFrame*(this: SimultaneousCompoundRotationAnimation)
method nextFrame*(this: SimultaneousCompoundRotationAnimation)
method previousRotation*(this: SimultaneousCompoundRotationAnimation)
method nextRotation*(this: SimultaneousCompoundRotationAnimation)
method setSequence*(this: SimultaneousCompoundRotationAnimation, sequence: JArray[int32])
method getSequence*(this: SimultaneousCompoundRotationAnimation): JArray[int32] {.discardable.}
method paintXY*(this: SimultaneousCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: SimultaneousCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method setFrameByDirection*(this: SimultaneousCompoundRotationAnimation, direction: Direction)
method setFrameToAngle*(this: SimultaneousCompoundRotationAnimation, angle: Angle)
method adjustFrameToAngle*(this: SimultaneousCompoundRotationAnimation, newAngle: Angle)
method adjustFrame*(this: SimultaneousCompoundRotationAnimation, angle: int16)
method getAngleInfoP*(this: SimultaneousCompoundRotationAnimation): AngleInfo {.discardable.}
method getAnimationInterfaceArray*(this: SimultaneousCompoundRotationAnimation): JArray[RotationAnimation] {.base, discardable.}
method setAnimationInterfaceArray*(this: SimultaneousCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation]) {.base.}
method set*(this: SimultaneousCompoundRotationAnimation, gl: GL)
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsSimultaneousCompoundRotationAnimation(this: SimultaneousCompoundRotationAnimation) =
    
    discard

proc initSimultaneousCompoundRotationAnimation*(this: SimultaneousCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        this.initFieldsSimultaneousCompoundRotationAnimation()
        this.animationInterfaceArray = animationInterfaceArray

proc newSimultaneousCompoundRotationAnimation*(animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): SimultaneousCompoundRotationAnimation =
    result = SimultaneousCompoundRotationAnimation()
    initSimultaneousCompoundRotationAnimation(result, animationInterfaceArray, animationBehavior)

method setFrame*(this: SimultaneousCompoundRotationAnimation, frameIndex: int32) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].setFrame(frameIndex)

method getFrame*(this: SimultaneousCompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getFrame()

method getAnimationSize*(this: SimultaneousCompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getAnimationSize()

method getSize*(this: SimultaneousCompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getSize()

method previousFrame*(this: SimultaneousCompoundRotationAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].previousFrame()

method nextFrame*(this: SimultaneousCompoundRotationAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].nextFrame()

method previousRotation*(this: SimultaneousCompoundRotationAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].previousRotation()

method nextRotation*(this: SimultaneousCompoundRotationAnimation) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].nextRotation()

method setSequence*(this: SimultaneousCompoundRotationAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: SimultaneousCompoundRotationAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: SimultaneousCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].paintXY(graphics, x, y)

method paintThreedXYZ*(this: SimultaneousCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)

method setFrameByDirection*(this: SimultaneousCompoundRotationAnimation, direction: Direction) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].setFrameByDirection(direction)

method setFrameToAngle*(this: SimultaneousCompoundRotationAnimation, angle: Angle) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].setFrameToAngle(angle)

method adjustFrameToAngle*(this: SimultaneousCompoundRotationAnimation, newAngle: Angle) =
        this.adjustFrame(newAngle.getValue())

method adjustFrame*(this: SimultaneousCompoundRotationAnimation, angle: int16) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].adjustFrame(angle)

method getAngleInfoP*(this: SimultaneousCompoundRotationAnimation): AngleInfo {.discardable.} =
        return this.animationInterfaceArray[0].getAngleInfoP()

method getAnimationInterfaceArray*(this: SimultaneousCompoundRotationAnimation): JArray[RotationAnimation] {.base, discardable.} =
        return this.animationInterfaceArray

method setAnimationInterfaceArray*(this: SimultaneousCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation]) {.base.} =
        this.animationInterfaceArray = animationInterfaceArray

method set*(this: SimultaneousCompoundRotationAnimation, gl: GL) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].set(gl)

when declared(newSimultaneousCompoundRotationAnimationHook2):
    newSimultaneousCompoundRotationAnimationHook2 = proc (animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): RotationAnimation = newSimultaneousCompoundRotationAnimation(animationInterfaceArray, animationBehavior)

