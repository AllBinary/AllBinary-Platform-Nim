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
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/image/ImageArrayRotationAnimation as ImageArrayRotationAnimationModule
export ImageArrayRotationAnimationModule

#TWB - Adjustments should be done in the resource creation and not at the animation level
type
    AdjustedImageArrayRotationAnimation* = ref object of ImageArrayRotationAnimation
        dx*: int32
        dy*: int32

proc newAdjustedImageArrayRotationAnimation*(imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation
proc initAdjustedImageArrayRotationAnimation*(this: AdjustedImageArrayRotationAnimation, imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
proc createAdjustedImageArrayRotationAnimationInfo*(t: typedesc[AdjustedImageArrayRotationAnimation], anyType: JObject, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation {.discardable.}
proc createAnimation*(t: typedesc[AdjustedImageArrayRotationAnimation], imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation {.discardable.}
method init*(this: AdjustedImageArrayRotationAnimation, dx: int32, dy: int32) {.base.}
method paintXY*(this: AdjustedImageArrayRotationAnimation, graphics: Graphics, x: int32, y: int32)
method setDx*(this: AdjustedImageArrayRotationAnimation, dx: int32)
method getDx*(this: AdjustedImageArrayRotationAnimation): int32 {.discardable.}
method setDy*(this: AdjustedImageArrayRotationAnimation, dy: int32)
method getDy*(this: AdjustedImageArrayRotationAnimation): int32 {.discardable.}
import org/allbinary/animation/image/ImageArrayRotationAnimationInfo as ImageArrayRotationAnimationInfoModule
export ImageArrayRotationAnimationInfoModule


# Java field initializers run after the base initializer
proc initFieldsAdjustedImageArrayRotationAnimation(this: AdjustedImageArrayRotationAnimation) =
    this.dx = 0
    this.dy = 0
    discard

proc createAdjustedImageArrayRotationAnimationInfo*(t: typedesc[AdjustedImageArrayRotationAnimation], anyType: JObject, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation {.discardable.} =
        let imageRotationAnimationInfo: ImageArrayRotationAnimationInfo = ImageArrayRotationAnimationInfo(JObject(anyType))
        return newAdjustedImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), imageRotationAnimationInfo.getDx(), imageRotationAnimationInfo.getDy(), animationBehavior)

proc createAnimation*(t: typedesc[AdjustedImageArrayRotationAnimation], imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation {.discardable.} =
        return newAdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, -(ashr(imageArray[0].getWidth(), 2)), -(ashr(imageArray[0].getHeight(), 2)), animationBehavior)

proc initAdjustedImageArrayRotationAnimation*(this: AdjustedImageArrayRotationAnimation, imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initImageArrayRotationAnimation(this, imageArray, angleInfo, totalAngle, animationBehavior)
        this.initFieldsAdjustedImageArrayRotationAnimation()
        this.init(dx, dy)

proc newAdjustedImageArrayRotationAnimation*(imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation =
    result = AdjustedImageArrayRotationAnimation()
    initAdjustedImageArrayRotationAnimation(result, imageArray, angleInfo, totalAngle, dx, dy, animationBehavior)

method init*(this: AdjustedImageArrayRotationAnimation, dx: int32, dy: int32) {.base.} =
        this.setDx(dx)
        this.setDy(dy)

method paintXY*(this: AdjustedImageArrayRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        jSuperStatement(procCall ImageArrayRotationAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy))

method setDx*(this: AdjustedImageArrayRotationAnimation, dx: int32) =
        this.dx = dx

method getDx*(this: AdjustedImageArrayRotationAnimation): int32 {.discardable.} =
        return this.dx

method setDy*(this: AdjustedImageArrayRotationAnimation, dy: int32) =
        this.dy = dy

method getDy*(this: AdjustedImageArrayRotationAnimation): int32 {.discardable.} =
        return this.dy

when declared(newAdjustedImageArrayRotationAnimationHook6):
    newAdjustedImageArrayRotationAnimationHook6 = proc (imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, dx: int32, dy: int32, animationBehavior: AnimationBehavior): ImageArrayRotationAnimation = newAdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, dx, dy, animationBehavior)

