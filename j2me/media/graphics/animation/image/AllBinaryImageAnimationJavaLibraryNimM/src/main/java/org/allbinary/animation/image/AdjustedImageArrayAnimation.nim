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
import org/allbinary/animation/image/ImageArrayAnimation as ImageArrayAnimationModule
export ImageArrayAnimationModule

type
    AdjustedImageArrayAnimation* = ref object of ImageArrayAnimation
        dx*: int32
        dy*: int32

proc newAdjustedImageArrayAnimation*(imageArray: JArray[Image], dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageArrayAnimation
proc initAdjustedImageArrayAnimation*(this: AdjustedImageArrayAnimation, imageArray: JArray[Image], dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method init*(this: AdjustedImageArrayAnimation, dx: int32, dy: int32) {.base.}
method paintXY*(this: AdjustedImageArrayAnimation, graphics: Graphics, x: int32, y: int32)
method setDx*(this: AdjustedImageArrayAnimation, dx: int32)
method getDx*(this: AdjustedImageArrayAnimation): int32 {.discardable.}
method setDy*(this: AdjustedImageArrayAnimation, dy: int32)
method getDy*(this: AdjustedImageArrayAnimation): int32 {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsAdjustedImageArrayAnimation(this: AdjustedImageArrayAnimation) =
    this.dx = 0
    this.dy = 0
    discard

proc initAdjustedImageArrayAnimation*(this: AdjustedImageArrayAnimation, imageArray: JArray[Image], dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initImageArrayAnimation(this, imageArray, animationBehavior)
        this.initFieldsAdjustedImageArrayAnimation()
        this.init(dx, dy)

proc newAdjustedImageArrayAnimation*(imageArray: JArray[Image], dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageArrayAnimation =
    result = AdjustedImageArrayAnimation()
    initAdjustedImageArrayAnimation(result, imageArray, dx, dy, animationBehavior)

method init*(this: AdjustedImageArrayAnimation, dx: int32, dy: int32) {.base.} =
        this.setDx(dx)
        this.setDy(dy)

method paintXY*(this: AdjustedImageArrayAnimation, graphics: Graphics, x: int32, y: int32) =
        jSuperStatement(procCall ImageArrayAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy))

method setDx*(this: AdjustedImageArrayAnimation, dx: int32) =
        this.dx = dx

method getDx*(this: AdjustedImageArrayAnimation): int32 {.discardable.} =
        return this.dx

method setDy*(this: AdjustedImageArrayAnimation, dy: int32) =
        this.dy = dy

method getDy*(this: AdjustedImageArrayAnimation): int32 {.discardable.} =
        return this.dy

when declared(newAdjustedImageArrayAnimationHook4):
    newAdjustedImageArrayAnimationHook4 = proc (imageArray: JArray[Image], dx: int32, dy: int32, animationBehavior: AnimationBehavior): ImageArrayAnimation = newAdjustedImageArrayAnimation(imageArray, dx, dy, animationBehavior)

