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
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/compound/CompoundAnimationInterface as CompoundAnimationInterfaceModule
export CompoundAnimationInterfaceModule

type
    CompoundRotationAnimation* = ref object of RotationAnimation
        animationInterfaceArray*: JArray[RotationAnimation]

converter jAsCompoundAnimationInterface*(value: CompoundRotationAnimation): CompoundAnimationInterface = cast[CompoundAnimationInterface](value)
proc newCompoundRotationAnimation*(animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): CompoundRotationAnimation
proc initCompoundRotationAnimation*(this: CompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior)
method setFrame*(this: CompoundRotationAnimation, index: int32)
method getFrame*(this: CompoundRotationAnimation): int32 {.discardable.}
method getAnimationSize*(this: CompoundRotationAnimation): int32 {.discardable.}
method getSize*(this: CompoundRotationAnimation): int32 {.discardable.}
method previousFrame*(this: CompoundRotationAnimation)
method nextFrame*(this: CompoundRotationAnimation)
method previousRotation*(this: CompoundRotationAnimation)
method nextRotation*(this: CompoundRotationAnimation)
method setSequence*(this: CompoundRotationAnimation, sequence: JArray[int32])
method getSequence*(this: CompoundRotationAnimation): JArray[int32] {.discardable.}
method paintXY*(this: CompoundRotationAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: CompoundRotationAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method getCurrentAnimation*(this: CompoundRotationAnimation): IndexedAnimation {.discardable.}
method nextAnimation*(this: CompoundRotationAnimation)
method previousAnimation*(this: CompoundRotationAnimation)
method setAnimation*(this: CompoundRotationAnimation, index: int32)
method setFrameByDirection*(this: CompoundRotationAnimation, direction: Direction)
method setFrameToAngle*(this: CompoundRotationAnimation, angle: Angle)
method adjustFrameToAngle*(this: CompoundRotationAnimation, newAngle: Angle)
method adjustFrame*(this: CompoundRotationAnimation, angle: int16)
method getAngleInfoP*(this: CompoundRotationAnimation): AngleInfo {.discardable.}
method getAnimationInterfaceArray*(this: CompoundRotationAnimation): JArray[RotationAnimation] {.base, discardable.}
method setAnimationInterfaceArray*(this: CompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation]) {.base.}
method set*(this: CompoundRotationAnimation, gl: GL)
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsCompoundRotationAnimation(this: CompoundRotationAnimation) =
    
    discard

proc initCompoundRotationAnimation*(this: CompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        this.initFieldsCompoundRotationAnimation()
        this.animationInterfaceArray = animationInterfaceArray
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length)

proc newCompoundRotationAnimation*(animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): CompoundRotationAnimation =
    result = CompoundRotationAnimation()
    initCompoundRotationAnimation(result, animationInterfaceArray, animationBehavior)

method setFrame*(this: CompoundRotationAnimation, index: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrame(index)

method getFrame*(this: CompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getFrame()

method getAnimationSize*(this: CompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAnimationSize()

method getSize*(this: CompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getSize()

method previousFrame*(this: CompoundRotationAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousFrame()

method nextFrame*(this: CompoundRotationAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame()

method previousRotation*(this: CompoundRotationAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousRotation()

method nextRotation*(this: CompoundRotationAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextRotation()

method setSequence*(this: CompoundRotationAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: CompoundRotationAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: CompoundRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y)

method paintThreedXYZ*(this: CompoundRotationAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)

method getCurrentAnimation*(this: CompoundRotationAnimation): IndexedAnimation {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]

method nextAnimation*(this: CompoundRotationAnimation) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.next()
        this.setFrame(frame)

method previousAnimation*(this: CompoundRotationAnimation) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.previous()
        this.setFrame(frame)

method setAnimation*(this: CompoundRotationAnimation, index: int32) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.setIndex(index)
        this.setFrame(frame)

method setFrameByDirection*(this: CompoundRotationAnimation, direction: Direction) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameByDirection(direction)

method setFrameToAngle*(this: CompoundRotationAnimation, angle: Angle) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameToAngle(angle)

method adjustFrameToAngle*(this: CompoundRotationAnimation, newAngle: Angle) =
        this.adjustFrame(newAngle.getValue())

method adjustFrame*(this: CompoundRotationAnimation, angle: int16) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].adjustFrame(angle)

method getAngleInfoP*(this: CompoundRotationAnimation): AngleInfo {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAngleInfoP()

method getAnimationInterfaceArray*(this: CompoundRotationAnimation): JArray[RotationAnimation] {.base, discardable.} =
        return this.animationInterfaceArray

method setAnimationInterfaceArray*(this: CompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation]) {.base.} =
        this.animationInterfaceArray = animationInterfaceArray

method set*(this: CompoundRotationAnimation, gl: GL) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].set(gl)

when declared(newCompoundRotationAnimationHook2):
    newCompoundRotationAnimationHook2 = proc (animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): RotationAnimation = newCompoundRotationAnimation(animationInterfaceArray, animationBehavior)

