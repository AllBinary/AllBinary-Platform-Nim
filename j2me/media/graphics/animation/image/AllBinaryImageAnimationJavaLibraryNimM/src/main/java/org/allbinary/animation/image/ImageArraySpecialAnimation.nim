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
import org/allbinary/animation/special/SpecialAnimationInterface as SpecialAnimationInterfaceModule
export SpecialAnimationInterfaceModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/animation/image/ImageArrayAnimation as ImageArrayAnimationModule
export ImageArrayAnimationModule

type
    ImageArraySpecialAnimation* = ref object of ImageArrayAnimation
        timeDelayHelper*: TimeDelayHelper
        loopCount*: int32
        loopCountTotal*: int32

converter jAsSpecialAnimationInterface*(value: ImageArraySpecialAnimation): SpecialAnimationInterface = cast[SpecialAnimationInterface](value)
proc newImageArraySpecialAnimation*(imageArray: JArray[Image], animationBehavior: AnimationBehavior): ImageArraySpecialAnimation
proc initImageArraySpecialAnimation*(this: ImageArraySpecialAnimation, imageArray: JArray[Image], animationBehavior: AnimationBehavior)
method getLoopCount*(this: ImageArraySpecialAnimation): int32 {.base, discardable.}
method setLastFrame*(this: ImageArraySpecialAnimation)
method reset*(this: ImageArraySpecialAnimation)
method nextFrame*(this: ImageArraySpecialAnimation)
method isComplete*(this: ImageArraySpecialAnimation): bool {.discardable.}
method paintXY*(this: ImageArraySpecialAnimation, graphics: Graphics, x: int32, y: int32)
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsImageArraySpecialAnimation(this: ImageArraySpecialAnimation) =
    this.timeDelayHelper = newTimeDelayHelper(270)
    this.loopCount = 0
    this.loopCountTotal = 1
    discard

proc initImageArraySpecialAnimation*(this: ImageArraySpecialAnimation, imageArray: JArray[Image], animationBehavior: AnimationBehavior) =
        initImageArrayAnimation(this, imageArray, animationBehavior)
        this.initFieldsImageArraySpecialAnimation()
        this.reset()

proc newImageArraySpecialAnimation*(imageArray: JArray[Image], animationBehavior: AnimationBehavior): ImageArraySpecialAnimation =
    result = ImageArraySpecialAnimation()
    initImageArraySpecialAnimation(result, imageArray, animationBehavior)

method getLoopCount*(this: ImageArraySpecialAnimation): int32 {.base, discardable.} =
        return this.loopCount

method setLastFrame*(this: ImageArraySpecialAnimation) =
        this.circularIndexUtil.setIndex(this.circularIndexUtil.getSize() -% 1)

method reset*(this: ImageArraySpecialAnimation) =
        this.setFrame(this.getSize() -% 1)
        this.loopCount = 0

method nextFrame*(this: ImageArraySpecialAnimation) =
        if this.getFrame() > 0:
            if this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
                this.previousFrame()
                if this.getFrame() == 0:
                    this.loopCount = this.loopCount +% 1

method isComplete*(this: ImageArraySpecialAnimation): bool {.discardable.} =
        if this.loopCount < this.loopCountTotal or this.getFrame() != 0:
            return false
        else:
            return true

method paintXY*(this: ImageArraySpecialAnimation, graphics: Graphics, x: int32, y: int32) =
        var x = x
        var y = y
        x = DisplayInfoSingleton.getInstance().getLastHalfWidth() -% (ashr(this.getImage(this.circularIndexUtil.getIndex()).getWidth(), 1))
        y = 5
        procCall ImageArrayAnimation(this).paintXY(graphics, x, y)

when declared(newImageArraySpecialAnimationHook2):
    newImageArraySpecialAnimationHook2 = proc (imageArray: JArray[Image], animationBehavior: AnimationBehavior): ImageArrayAnimation = newImageArraySpecialAnimation(imageArray, animationBehavior)

