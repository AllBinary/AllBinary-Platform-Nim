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
# package org.allbinary.animation.caption

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    CaptionAnimation* = ref object of Animation
        animationInterface*: Animation
        overlayAnimationInterface*: Animation
        captionDx*: int32
        captionDy*: int32
        dx*: int32
        dy*: int32

proc newCaptionAnimation*(animationInterface: Animation, overlayAnimationInterface: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32): CaptionAnimation
proc initCaptionAnimation*(this: CaptionAnimation, animationInterface: Animation, overlayAnimationInterface: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32)
method nextFrame*(this: CaptionAnimation)
method paintXY*(this: CaptionAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: CaptionAnimation, graphics: Graphics, x: int32, y: int32, z: int32)


# Java field initializers run after the base initializer
proc initFieldsCaptionAnimation(this: CaptionAnimation) =
    
    
    
    
    
    
    discard

proc initCaptionAnimation*(this: CaptionAnimation, animationInterface: Animation, overlayAnimationInterface: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32) =
        initAnimation(this)
        this.initFieldsCaptionAnimation()
        this.animationInterface = animationInterface
        this.overlayAnimationInterface = overlayAnimationInterface
        this.captionDx = captionDx
        this.captionDy = captionDy
        this.dx = dx
        this.dy = dy

proc newCaptionAnimation*(animationInterface: Animation, overlayAnimationInterface: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32): CaptionAnimation =
    result = CaptionAnimation()
    initCaptionAnimation(result, animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)

method nextFrame*(this: CaptionAnimation) =
        discard

method paintXY*(this: CaptionAnimation, graphics: Graphics, x: int32, y: int32) =
        this.animationInterface.paintXY(graphics, x +% this.captionDx, y +% this.captionDy)
        this.overlayAnimationInterface.paintXY(graphics, x +% this.captionDx +% this.dx, y +% this.captionDy +% this.dy)

method paintThreedXYZ*(this: CaptionAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        this.animationInterface.paintThreedXYZ(graphics, x +% this.captionDx, y +% this.captionDy, z)
        this.overlayAnimationInterface.paintThreedXYZ(graphics, x +% this.captionDx +% this.dx, y +% this.captionDy +% this.dy, z)

when declared(newCaptionAnimationHook6):
    newCaptionAnimationHook6 = proc (animationInterface: Animation, overlayAnimationInterface: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32): Animation = newCaptionAnimation(animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)

