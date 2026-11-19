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
# package org.allbinary.animation.text

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/text/CustomTextAnimation as CustomTextAnimationModule
export CustomTextAnimationModule

type
    AdjustCustomTextAnimation* = ref object of CustomTextAnimation
        dx*: int32
        dy*: int32

proc newAdjustCustomTextAnimation*(text: string, fontSize: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustCustomTextAnimation
proc initAdjustCustomTextAnimation*(this: AdjustCustomTextAnimation, text: string, fontSize: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method getDx*(this: AdjustCustomTextAnimation): int32 {.discardable.}
method setDx*(this: AdjustCustomTextAnimation, dx: int32)
method getDy*(this: AdjustCustomTextAnimation): int32 {.discardable.}
method setDy*(this: AdjustCustomTextAnimation, dy: int32)
method paintXY*(this: AdjustCustomTextAnimation, graphics: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsAdjustCustomTextAnimation(this: AdjustCustomTextAnimation) =
    
    
    discard

proc initAdjustCustomTextAnimation*(this: AdjustCustomTextAnimation, text: string, fontSize: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initCustomTextAnimation(this, text, fontSize, animationBehavior)
        this.initFieldsAdjustCustomTextAnimation()
        this.dx = dx
        this.dy = dy

proc newAdjustCustomTextAnimation*(text: string, fontSize: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustCustomTextAnimation =
    result = AdjustCustomTextAnimation()
    initAdjustCustomTextAnimation(result, text, fontSize, dx, dy, animationBehavior)

method getDx*(this: AdjustCustomTextAnimation): int32 {.discardable.} =
        return this.dx

method setDx*(this: AdjustCustomTextAnimation, dx: int32) =
        this.dx = dx

method getDy*(this: AdjustCustomTextAnimation): int32 {.discardable.} =
        return this.dy

method setDy*(this: AdjustCustomTextAnimation, dy: int32) =
        this.dy = dy

method paintXY*(this: AdjustCustomTextAnimation, graphics: Graphics, x: int32, y: int32) =
        jSuperStatement(procCall CustomTextAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy))

when declared(newAdjustCustomTextAnimationHook5):
    newAdjustCustomTextAnimationHook5 = proc (text: string, fontSize: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior): CustomTextAnimation = newAdjustCustomTextAnimation(text, fontSize, dx, dy, animationBehavior)

