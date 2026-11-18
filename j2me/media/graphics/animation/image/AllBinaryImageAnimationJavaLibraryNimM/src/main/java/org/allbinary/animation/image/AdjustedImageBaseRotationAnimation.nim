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
# package org.allbinary.animation.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/image/ImageBaseRotationAnimation as ImageBaseRotationAnimationModule
export ImageBaseRotationAnimationModule

type
    AdjustedImageBaseRotationAnimation* = ref object of ImageBaseRotationAnimation
        dx*: int32
        dy*: int32

proc newAdjustedImageBaseRotationAnimation*(image: Image, angleInfo: AngleInfo, totalAngle: int16, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageBaseRotationAnimation
proc initAdjustedImageBaseRotationAnimation*(this: AdjustedImageBaseRotationAnimation, image: Image, angleInfo: AngleInfo, totalAngle: int16, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method init*(this: AdjustedImageBaseRotationAnimation, dx: int32, dy: int32) {.base.}
method paintXY*(this: AdjustedImageBaseRotationAnimation, graphics: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsAdjustedImageBaseRotationAnimation(this: AdjustedImageBaseRotationAnimation) =
    this.dx = 0
    this.dy = 0
    discard

proc initAdjustedImageBaseRotationAnimation*(this: AdjustedImageBaseRotationAnimation, image: Image, angleInfo: AngleInfo, totalAngle: int16, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initImageBaseRotationAnimation(this, image, angleInfo, totalAngle, animationBehavior)
        this.initFieldsAdjustedImageBaseRotationAnimation()
        this.init(dx, dy)

proc newAdjustedImageBaseRotationAnimation*(image: Image, angleInfo: AngleInfo, totalAngle: int16, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageBaseRotationAnimation =
    result = AdjustedImageBaseRotationAnimation()
    initAdjustedImageBaseRotationAnimation(result, image, angleInfo, totalAngle, dx, dy, animationBehavior)

method init*(this: AdjustedImageBaseRotationAnimation, dx: int32, dy: int32) {.base.} =
        this.dx = dx
        this.dy = dy

method paintXY*(this: AdjustedImageBaseRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        procCall ImageBaseRotationAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy)

when declared(newAdjustedImageBaseRotationAnimationHook6):
    newAdjustedImageBaseRotationAnimationHook6 = proc (image: Image, angleInfo: AngleInfo, totalAngle: int16, dx: int32, dy: int32, animationBehavior: AnimationBehavior): ImageBaseRotationAnimation = newAdjustedImageBaseRotationAnimation(image, angleInfo, totalAngle, dx, dy, animationBehavior)

