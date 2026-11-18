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
    AutoCompoundRotationAnimation* = ref object of RotationAnimation
        animationInterfaceArray*: JArray[RotationAnimation]

converter jAsCompoundAnimationInterface*(value: AutoCompoundRotationAnimation): CompoundAnimationInterface = cast[CompoundAnimationInterface](value)
proc newAutoCompoundRotationAnimation*(animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): AutoCompoundRotationAnimation
proc initAutoCompoundRotationAnimation*(this: AutoCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior)
method setFrame*(this: AutoCompoundRotationAnimation, index: int32)
method getFrame*(this: AutoCompoundRotationAnimation): int32 {.discardable.}
method getAnimationSize*(this: AutoCompoundRotationAnimation): int32 {.discardable.}
method getSize*(this: AutoCompoundRotationAnimation): int32 {.discardable.}
method previousFrame*(this: AutoCompoundRotationAnimation)
method nextFrame*(this: AutoCompoundRotationAnimation)
method previousRotation*(this: AutoCompoundRotationAnimation)
method nextRotation*(this: AutoCompoundRotationAnimation)
method setSequence*(this: AutoCompoundRotationAnimation, sequence: JArray[int32])
method getSequence*(this: AutoCompoundRotationAnimation): JArray[int32] {.discardable.}
method paintXY*(this: AutoCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: AutoCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method getCurrentAnimation*(this: AutoCompoundRotationAnimation): IndexedAnimation {.discardable.}
method nextAnimation*(this: AutoCompoundRotationAnimation)
method previousAnimation*(this: AutoCompoundRotationAnimation)
method setAnimation*(this: AutoCompoundRotationAnimation, index: int32)
method setFrameByDirection*(this: AutoCompoundRotationAnimation, direction: Direction)
method setFrameToAngle*(this: AutoCompoundRotationAnimation, angle: Angle)
method adjustFrameToAngle*(this: AutoCompoundRotationAnimation, newAngle: Angle)
method adjustFrame*(this: AutoCompoundRotationAnimation, angle: int16)
method getAngleInfoP*(this: AutoCompoundRotationAnimation): AngleInfo {.discardable.}
method getAnimationInterfaceArray*(this: AutoCompoundRotationAnimation): JArray[RotationAnimation] {.base, discardable.}
method setAnimationInterfaceArray*(this: AutoCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation]) {.base.}
method set*(this: AutoCompoundRotationAnimation, gl: GL)
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsAutoCompoundRotationAnimation(this: AutoCompoundRotationAnimation) =
    
    discard

proc initAutoCompoundRotationAnimation*(this: AutoCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        this.initFieldsAutoCompoundRotationAnimation()
        this.animationInterfaceArray = animationInterfaceArray
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length)

proc newAutoCompoundRotationAnimation*(animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): AutoCompoundRotationAnimation =
    result = AutoCompoundRotationAnimation()
    initAutoCompoundRotationAnimation(result, animationInterfaceArray, animationBehavior)

method setFrame*(this: AutoCompoundRotationAnimation, index: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrame(index)

method getFrame*(this: AutoCompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getFrame()

method getAnimationSize*(this: AutoCompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAnimationSize()

method getSize*(this: AutoCompoundRotationAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getSize()

method previousFrame*(this: AutoCompoundRotationAnimation) =
        this.circularIndexUtil.previous()
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousFrame()

method nextFrame*(this: AutoCompoundRotationAnimation) =
        this.circularIndexUtil.next()
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame()

method previousRotation*(this: AutoCompoundRotationAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousRotation()

method nextRotation*(this: AutoCompoundRotationAnimation) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextRotation()

method setSequence*(this: AutoCompoundRotationAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: AutoCompoundRotationAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: AutoCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y)

method paintThreedXYZ*(this: AutoCompoundRotationAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)

method getCurrentAnimation*(this: AutoCompoundRotationAnimation): IndexedAnimation {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]

method nextAnimation*(this: AutoCompoundRotationAnimation) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.next()
        this.setFrame(frame)

method previousAnimation*(this: AutoCompoundRotationAnimation) =
        var frame: int32 = this.getFrame()
        this.circularIndexUtil.previous()
        this.setFrame(frame)

method setAnimation*(this: AutoCompoundRotationAnimation, index: int32) =
        let frame: int32 = this.getFrame()
        this.circularIndexUtil.setIndex(index)
        this.setFrame(frame)

method setFrameByDirection*(this: AutoCompoundRotationAnimation, direction: Direction) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameByDirection(direction)

method setFrameToAngle*(this: AutoCompoundRotationAnimation, angle: Angle) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameToAngle(angle)

method adjustFrameToAngle*(this: AutoCompoundRotationAnimation, newAngle: Angle) =
        this.adjustFrame(newAngle.getValue())

method adjustFrame*(this: AutoCompoundRotationAnimation, angle: int16) =
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].adjustFrame(angle)

method getAngleInfoP*(this: AutoCompoundRotationAnimation): AngleInfo {.discardable.} =
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAngleInfoP()

method getAnimationInterfaceArray*(this: AutoCompoundRotationAnimation): JArray[RotationAnimation] {.base, discardable.} =
        return this.animationInterfaceArray

method setAnimationInterfaceArray*(this: AutoCompoundRotationAnimation, animationInterfaceArray: JArray[RotationAnimation]) {.base.} =
        this.animationInterfaceArray = animationInterfaceArray

method set*(this: AutoCompoundRotationAnimation, gl: GL) =
        block:
            var index: int32 = this.animationInterfaceArray.length
            while jPreDecrement(index) >= 0:
                this.animationInterfaceArray[index].set(gl)

when declared(newAutoCompoundRotationAnimationHook2):
    newAutoCompoundRotationAnimationHook2 = proc (animationInterfaceArray: JArray[RotationAnimation], animationBehavior: AnimationBehavior): RotationAnimation = newAutoCompoundRotationAnimation(animationInterfaceArray, animationBehavior)

