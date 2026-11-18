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
import org/allbinary/animation/image/LeftToRightImageAnimation as LeftToRightImageAnimationModule
export LeftToRightImageAnimationModule

type
    AdjustedLeftToRightImageAnimation* = ref object of LeftToRightImageAnimation
        dx*: int32
        dy*: int32

proc newAdjustedLeftToRightImageAnimation*(image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedLeftToRightImageAnimation
proc initAdjustedLeftToRightImageAnimation*(this: AdjustedLeftToRightImageAnimation, image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method init*(this: AdjustedLeftToRightImageAnimation, dx: int32, dy: int32) {.base.}
method paintXY*(this: AdjustedLeftToRightImageAnimation, graphics: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsAdjustedLeftToRightImageAnimation(this: AdjustedLeftToRightImageAnimation) =
    this.dx = 0
    this.dy = 0
    discard

proc initAdjustedLeftToRightImageAnimation*(this: AdjustedLeftToRightImageAnimation, image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initLeftToRightImageAnimation(this, image, sequenceArray, animationBehavior)
        this.initFieldsAdjustedLeftToRightImageAnimation()
        this.init(dx, dy)

proc newAdjustedLeftToRightImageAnimation*(image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedLeftToRightImageAnimation =
    result = AdjustedLeftToRightImageAnimation()
    initAdjustedLeftToRightImageAnimation(result, image, sequenceArray, dx, dy, animationBehavior)

method init*(this: AdjustedLeftToRightImageAnimation, dx: int32, dy: int32) {.base.} =
        this.dx = dx
        this.dy = dy

method paintXY*(this: AdjustedLeftToRightImageAnimation, graphics: Graphics, x: int32, y: int32) =
        procCall LeftToRightImageAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy)

when declared(newAdjustedLeftToRightImageAnimationHook5):
    newAdjustedLeftToRightImageAnimationHook5 = proc (image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehavior: AnimationBehavior): LeftToRightImageAnimation = newAdjustedLeftToRightImageAnimation(image, sequenceArray, dx, dy, animationBehavior)

