#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/animation/image/ImageAnimation as ImageAnimationModule
export ImageAnimationModule

type
    AdjustedImageAnimation* = ref object of ImageAnimation
        dx*: int32
        dy*: int32

proc newAdjustedImageAnimation*(image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageAnimation
proc initAdjustedImageAnimation*(this: AdjustedImageAnimation, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method init*(this: AdjustedImageAnimation, dx: int32, dy: int32) {.base.}
method paintXY*(this: AdjustedImageAnimation, graphics: Graphics, x: int32, y: int32)
method setDx*(this: AdjustedImageAnimation, dx: int32)
method getDx*(this: AdjustedImageAnimation): int32 {.discardable.}
method setDy*(this: AdjustedImageAnimation, dy: int32)
method getDy*(this: AdjustedImageAnimation): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsAdjustedImageAnimation(this: AdjustedImageAnimation) =
    this.dx = 0
    this.dy = 0
    discard

proc initAdjustedImageAnimation*(this: AdjustedImageAnimation, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initImageAnimation(this, image, animationBehavior)
        this.initFieldsAdjustedImageAnimation()
        this.init(dx, dy)

proc newAdjustedImageAnimation*(image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageAnimation =
    result = AdjustedImageAnimation()
    initAdjustedImageAnimation(result, image, dx, dy, animationBehavior)

method init*(this: AdjustedImageAnimation, dx: int32, dy: int32) {.base.} =
        this.setDx(dx)
        this.setDy(dy)

method paintXY*(this: AdjustedImageAnimation, graphics: Graphics, x: int32, y: int32) =
        jSuperStatement(procCall ImageAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy))

method setDx*(this: AdjustedImageAnimation, dx: int32) =
        this.dx = dx

method getDx*(this: AdjustedImageAnimation): int32 {.discardable.} =
        return this.dx

method setDy*(this: AdjustedImageAnimation, dy: int32) =
        this.dy = dy

method getDy*(this: AdjustedImageAnimation): int32 {.discardable.} =
        return this.dy

when declared(newAdjustedImageAnimationHook4):
    newAdjustedImageAnimationHook4 = proc (image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): ImageAnimation = newAdjustedImageAnimation(image, dx, dy, animationBehavior)

