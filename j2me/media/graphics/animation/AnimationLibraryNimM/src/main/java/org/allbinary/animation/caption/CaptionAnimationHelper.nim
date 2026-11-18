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
import org/allbinary/animation/text/TextAnimation as TextAnimationModule
export TextAnimationModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/animation/caption/CaptionAnimationHelperBase as CaptionAnimationHelperBaseModule
export CaptionAnimationHelperBaseModule

type
    CaptionAnimationHelper* = ref object of CaptionAnimationHelperBase
        timeHelper*: TimeDelayHelper
        textAnimation*: TextAnimation
        captionAnimation*: Animation
        animation*: Animation

proc newCaptionAnimationHelper*(captionAnimation: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32): CaptionAnimationHelper
proc initCaptionAnimationHelper*(this: CaptionAnimationHelper, captionAnimation: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32)
method isShowing*(this: CaptionAnimationHelper): bool {.discardable.}
method tick*(this: CaptionAnimationHelper)
method update*(this: CaptionAnimationHelper, message: string, basicColor: BasicColor)
method paintXY*(this: CaptionAnimationHelper, graphics: Graphics, x: int32, y: int32)
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/animation/caption/CaptionAnimation as CaptionAnimationModule
export CaptionAnimationModule


# Java field initializers run after the base initializer
proc initFieldsCaptionAnimationHelper(this: CaptionAnimationHelper) =
    this.timeHelper = newTimeDelayHelper(620)
    this.textAnimation = newTextAnimation(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance())
    
    this.animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
    discard

proc initCaptionAnimationHelper*(this: CaptionAnimationHelper, captionAnimation: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32) =
        initCaptionAnimationHelperBase(this)
        this.initFieldsCaptionAnimationHelper()
        this.captionAnimation = newCaptionAnimation(captionAnimation, this.textAnimation, captionDx, captionDy, dx, dy)

proc newCaptionAnimationHelper*(captionAnimation: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32): CaptionAnimationHelper =
    result = CaptionAnimationHelper()
    initCaptionAnimationHelper(result, captionAnimation, captionDx, captionDy, dx, dy)

method isShowing*(this: CaptionAnimationHelper): bool {.discardable.} =
        if this.animation == this.captionAnimation:
            return true
        else:
            return false

method tick*(this: CaptionAnimationHelper) =
        if this.timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
            this.animation = NullAnimationFactory.getFactoryInstance().getInstance(0)

method update*(this: CaptionAnimationHelper, message: string, basicColor: BasicColor) =
        this.textAnimation.setBasicColorP(basicColor)
        this.textAnimation.setText(message)
        this.animation = this.captionAnimation
        this.timeHelper.setStartTimeTNT()

method paintXY*(this: CaptionAnimationHelper, graphics: Graphics, x: int32, y: int32) =
        this.animation.paintXY(graphics, x, y)

when declared(newCaptionAnimationHelperHook5):
    newCaptionAnimationHelperHook5 = proc (captionAnimation: Animation, captionDx: int32, captionDy: int32, dx: int32, dy: int32): CaptionAnimationHelperBase = newCaptionAnimationHelper(captionAnimation, captionDx, captionDy, dx, dy)

