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
import org/allbinary/animation/image/RightToLeftImageAnimation as RightToLeftImageAnimationModule
export RightToLeftImageAnimationModule

type
    AdjustedRightToLeftImageAnimation* = ref object of RightToLeftImageAnimation
        dx*: int32
        dy*: int32

proc newAdjustedRightToLeftImageAnimation*(image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedRightToLeftImageAnimation
proc initAdjustedRightToLeftImageAnimation*(this: AdjustedRightToLeftImageAnimation, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method init*(this: AdjustedRightToLeftImageAnimation, dx: int32, dy: int32) {.base.}
method paintXY*(this: AdjustedRightToLeftImageAnimation, graphics: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsAdjustedRightToLeftImageAnimation(this: AdjustedRightToLeftImageAnimation) =
    this.dx = 0
    this.dy = 0
    discard

proc initAdjustedRightToLeftImageAnimation*(this: AdjustedRightToLeftImageAnimation, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initRightToLeftImageAnimation(this, image, animationBehavior)
        this.initFieldsAdjustedRightToLeftImageAnimation()
        this.init(dx, dy)

proc newAdjustedRightToLeftImageAnimation*(image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedRightToLeftImageAnimation =
    result = AdjustedRightToLeftImageAnimation()
    initAdjustedRightToLeftImageAnimation(result, image, dx, dy, animationBehavior)

method init*(this: AdjustedRightToLeftImageAnimation, dx: int32, dy: int32) {.base.} =
        this.dx = dx
        this.dy = dy

method paintXY*(this: AdjustedRightToLeftImageAnimation, graphics: Graphics, x: int32, y: int32) =
        procCall RightToLeftImageAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy)

when declared(newAdjustedRightToLeftImageAnimationHook4):
    newAdjustedRightToLeftImageAnimationHook4 = proc (image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): RightToLeftImageAnimation = newAdjustedRightToLeftImageAnimation(image, dx, dy, animationBehavior)

