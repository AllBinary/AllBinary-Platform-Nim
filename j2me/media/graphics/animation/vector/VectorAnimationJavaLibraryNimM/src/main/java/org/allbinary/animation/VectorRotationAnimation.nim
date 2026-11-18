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
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/animation/VectorBaseRotationAnimation as VectorBaseRotationAnimationModule
export VectorBaseRotationAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    VectorRotationAnimation* = ref object of VectorBaseRotationAnimation

proc newVectorRotationAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorRotationAnimation
proc initVectorRotationAnimation*(this: VectorRotationAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior)
method setFrameByDirection*(this: VectorRotationAnimation, direction: Direction)
method setFrameToAngle*(this: VectorRotationAnimation, angle: Angle)
method setFrame*(this: VectorRotationAnimation, index: int32)
method adjustFrame*(this: VectorRotationAnimation, newAngle: int16)
method adjustFrameToAngle*(this: VectorRotationAnimation, newAngle: Angle)
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule


proc initVectorRotationAnimation*(this: VectorRotationAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior) =
        initVectorBaseRotationAnimation(this, AngleInfo.getInstance(jToInt16((int32(AngleFactory.getInstance().TOTAL_ANGLE) div currentPoints.length))), currentPoints, basicColor, animationBehavior)
        this.angleInfo.adjustAngle(this.getFrame())

proc newVectorRotationAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorRotationAnimation =
    result = VectorRotationAnimation()
    initVectorRotationAnimation(result, currentPoints, basicColor, animationBehavior)

method setFrameByDirection*(this: VectorRotationAnimation, direction: Direction) =
        var angle: Angle = this.directionUtil.getFrameAngle(direction)
        this.adjustFrameToAngle(angle)

method setFrameToAngle*(this: VectorRotationAnimation, angle: Angle) =
        this.adjustFrameToAngle(angle)

method setFrame*(this: VectorRotationAnimation, index: int32) =
        procCall VectorBaseRotationAnimation(this).setFrame(index)
        this.angleInfo.adjustAngle(this.getFrame())

method adjustFrame*(this: VectorRotationAnimation, newAngle: int16) =
        this.setFrame(this.frameUtil.getFrameForAngle(newAngle, int32(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())))

method adjustFrameToAngle*(this: VectorRotationAnimation, newAngle: Angle) =
        this.adjustFrame(newAngle.getValue())

when declared(newVectorRotationAnimationHook3):
    newVectorRotationAnimationHook3 = proc (currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, animationBehavior: AnimationBehavior): VectorBaseRotationAnimation = newVectorRotationAnimation(currentPoints, basicColor, animationBehavior)

