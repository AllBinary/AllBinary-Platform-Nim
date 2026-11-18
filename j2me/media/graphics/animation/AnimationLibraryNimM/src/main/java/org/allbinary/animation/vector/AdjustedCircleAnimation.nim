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
# package org.allbinary.animation.vector

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/animation/vector/CircleAnimation as CircleAnimationModule
export CircleAnimationModule

type
    AdjustedCircleAnimation* = ref object of CircleAnimation
        xAdjustment*: int32
        yAdjustment*: int32

proc newAdjustedCircleAnimation*(width: int32, height: int32, basicColor: BasicColor): AdjustedCircleAnimation
proc initAdjustedCircleAnimation*(this: AdjustedCircleAnimation, width: int32, height: int32, basicColor: BasicColor)
proc createAnimation*(t: typedesc[AdjustedCircleAnimation], width: int32, height: int32, xAdjustment: int32, yAdjustment: int32, basicColor: BasicColor): AdjustedCircleAnimation {.discardable.}
proc createW*(t: typedesc[AdjustedCircleAnimation], width: int32, height: int32, innerWidth: int32, basicColor: BasicColor): AdjustedCircleAnimation {.discardable.}
method initXY*(this: AdjustedCircleAnimation, xAdjustment: int32, yAdjustment: int32) {.base.}
method init*(this: AdjustedCircleAnimation, innerWidth: int32) {.base.}
method paintXY*(this: AdjustedCircleAnimation, graphics: Graphics, x: int32, y: int32)
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule


# Java field initializers run after the base initializer
proc initFieldsAdjustedCircleAnimation(this: AdjustedCircleAnimation) =
    this.xAdjustment = 0
    this.yAdjustment = 0
    discard

proc createAnimation*(t: typedesc[AdjustedCircleAnimation], width: int32, height: int32, xAdjustment: int32, yAdjustment: int32, basicColor: BasicColor): AdjustedCircleAnimation {.discardable.} =
        let adjustedCircleAnimation: AdjustedCircleAnimation = newAdjustedCircleAnimation(width, height, basicColor)
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment)
        return adjustedCircleAnimation

proc createW*(t: typedesc[AdjustedCircleAnimation], width: int32, height: int32, innerWidth: int32, basicColor: BasicColor): AdjustedCircleAnimation {.discardable.} =
        let adjustedCircleAnimation: AdjustedCircleAnimation = newAdjustedCircleAnimation(width, height, basicColor)
        adjustedCircleAnimation.init(innerWidth)
        return adjustedCircleAnimation

proc initAdjustedCircleAnimation*(this: AdjustedCircleAnimation, width: int32, height: int32, basicColor: BasicColor) =
        initCircleAnimation(this, width, height, basicColor)
        this.initFieldsAdjustedCircleAnimation()

proc newAdjustedCircleAnimation*(width: int32, height: int32, basicColor: BasicColor): AdjustedCircleAnimation =
    result = AdjustedCircleAnimation()
    initAdjustedCircleAnimation(result, width, height, basicColor)

method initXY*(this: AdjustedCircleAnimation, xAdjustment: int32, yAdjustment: int32) {.base.} =
        this.xAdjustment = xAdjustment
        this.yAdjustment = yAdjustment

method init*(this: AdjustedCircleAnimation, innerWidth: int32) {.base.} =
        if AndroidUtil.isAndroid():
            var widthPortion: int32 = (((innerWidth div 3) *% 10) div 7)
            this.xAdjustment = -((ashr(this.width, 1)) -% widthPortion)
            this.yAdjustment = this.xAdjustment
        else:
            this.xAdjustment = -((ashr(this.width, 1)) -% innerWidth)
            this.yAdjustment = this.xAdjustment

method paintXY*(this: AdjustedCircleAnimation, graphics: Graphics, x: int32, y: int32) =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawArc(x +% this.xAdjustment, y +% this.yAdjustment, this.width, this.height, 0, this.TOTAL_ANGLE)

when declared(newAdjustedCircleAnimationHook3):
    newAdjustedCircleAnimationHook3 = proc (width: int32, height: int32, basicColor: BasicColor): CircleAnimation = newAdjustedCircleAnimation(width, height, basicColor)

