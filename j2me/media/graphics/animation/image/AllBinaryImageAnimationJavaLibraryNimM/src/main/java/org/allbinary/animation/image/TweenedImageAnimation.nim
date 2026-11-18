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
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule

type
    TweenedImageAnimation* = ref object of IndexedAnimation
        image*: Image
        dx*: int32
        dy*: int32
        totalFrames*: int32
        circularIndexUtil*: CircularIndexUtil
        anchor*: int32

proc newTweenedImageAnimation*(image: Image, dx: int32, dy: int32, totalFrames: int32, animationBehavior: AnimationBehavior): TweenedImageAnimation
proc initTweenedImageAnimation*(this: TweenedImageAnimation, image: Image, dx: int32, dy: int32, totalFrames: int32, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: TweenedImageAnimation): int32 {.discardable.}
method nextFrame*(this: TweenedImageAnimation)
method previousFrame*(this: TweenedImageAnimation)
method setFrame*(this: TweenedImageAnimation, index: int32)
method getFrame*(this: TweenedImageAnimation): int32 {.discardable.}
method getSize*(this: TweenedImageAnimation): int32 {.discardable.}
method setSequence*(this: TweenedImageAnimation, sequence: JArray[int32])
method getSequence*(this: TweenedImageAnimation): JArray[int32] {.discardable.}
method paintXY*(this: TweenedImageAnimation, graphics: Graphics, x: int32, y: int32)
method close*(this: TweenedImageAnimation) {.base.}
method finalize*(this: TweenedImageAnimation)
import org/allbinary/DisposalUtil as DisposalUtilModule
export DisposalUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsTweenedImageAnimation(this: TweenedImageAnimation) =
    
    
    
    
    
    this.anchor = Anchor.TOP_LEFT
    discard

proc initTweenedImageAnimation*(this: TweenedImageAnimation, image: Image, dx: int32, dy: int32, totalFrames: int32, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsTweenedImageAnimation()
        this.image = image
        this.dx = dx
        this.dy = dy
        this.totalFrames = totalFrames
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames)

proc newTweenedImageAnimation*(image: Image, dx: int32, dy: int32, totalFrames: int32, animationBehavior: AnimationBehavior): TweenedImageAnimation =
    result = TweenedImageAnimation()
    initTweenedImageAnimation(result, image, dx, dy, totalFrames, animationBehavior)

method getAnimationSize*(this: TweenedImageAnimation): int32 {.discardable.} =
        return this.getSize()

method nextFrame*(this: TweenedImageAnimation) =
        this.circularIndexUtil.next()

method previousFrame*(this: TweenedImageAnimation) =
        this.circularIndexUtil.previous()

method setFrame*(this: TweenedImageAnimation, index: int32) =
        this.circularIndexUtil.setIndex(index)

method getFrame*(this: TweenedImageAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getIndex()

method getSize*(this: TweenedImageAnimation): int32 {.discardable.} =
        return this.totalFrames

method setSequence*(this: TweenedImageAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: TweenedImageAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: TweenedImageAnimation, graphics: Graphics, x: int32, y: int32) =
        var frame: int32 = this.getFrame()
        var currentX: int32 = this.dx *% frame
        var currentY: int32 = this.dy *% frame
        graphics.drawImage(this.image, x +% currentX, y +% currentY, this.anchor)

method close*(this: TweenedImageAnimation) {.base.} =
        DisposalUtil.getInstance().disposeImage(this.image)

method finalize*(this: TweenedImageAnimation) =
        DisposalUtil.getInstance().disposeImage(this.image)

when declared(newTweenedImageAnimationHook5):
    newTweenedImageAnimationHook5 = proc (image: Image, dx: int32, dy: int32, totalFrames: int32, animationBehavior: AnimationBehavior): IndexedAnimation = newTweenedImageAnimation(image, dx, dy, totalFrames, animationBehavior)

