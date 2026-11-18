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
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/image/ImageArrayBaseRotationAnimation as ImageArrayBaseRotationAnimationModule
export ImageArrayBaseRotationAnimationModule

type
    ImageArrayRotationAnimation* = ref object of ImageArrayBaseRotationAnimation
        expectedTotalFrames*: int32

proc newImageArrayRotationAnimation*(imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior): ImageArrayRotationAnimation
proc initImageArrayRotationAnimation*(this: ImageArrayRotationAnimation, imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior)
proc createAnimation*(t: typedesc[ImageArrayRotationAnimation], anyType: JObject, animationBehavior: AnimationBehavior): ImageArrayRotationAnimation {.discardable.}
method initImageArray*(this: ImageArrayRotationAnimation, imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32) {.base.}
method setImageArray*(this: ImageArrayRotationAnimation, imageArray: JArray[Image])
import org/allbinary/animation/image/ImageArrayRotationAnimationInfo as ImageArrayRotationAnimationInfoModule
export ImageArrayRotationAnimationInfoModule


# Java field initializers run after the base initializer
proc initFieldsImageArrayRotationAnimation(this: ImageArrayRotationAnimation) =
    this.expectedTotalFrames = 0
    discard

proc createAnimation*(t: typedesc[ImageArrayRotationAnimation], anyType: JObject, animationBehavior: AnimationBehavior): ImageArrayRotationAnimation {.discardable.} =
        let imageRotationAnimationInfo: ImageArrayRotationAnimationInfo = ImageArrayRotationAnimationInfo(JObject(anyType))
        return newImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior)

proc initImageArrayRotationAnimation*(this: ImageArrayRotationAnimation, imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior) =
        initImageArrayBaseRotationAnimation(this, imageArray, angleInfo, animationBehavior)
        this.initFieldsImageArrayRotationAnimation()
        this.initImageArray(imageArray, angleInfo, totalAngle)

proc newImageArrayRotationAnimation*(imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior): ImageArrayRotationAnimation =
    result = ImageArrayRotationAnimation()
    initImageArrayRotationAnimation(result, imageArray, angleInfo, totalAngle, animationBehavior)

method initImageArray*(this: ImageArrayRotationAnimation, imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32) {.base.} =
        this.expectedTotalFrames = totalAngle div int32(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())
        this.angleInfo.adjustAngle(0)
        if this.expectedTotalFrames != this.getSize():
            raise newJException("Exception", "Wrong Number of Frames")

method setImageArray*(this: ImageArrayRotationAnimation, imageArray: JArray[Image]) =
        procCall ImageArrayBaseRotationAnimation(this).setImageArray(imageArray)
        this.angleInfo.adjustAngle(0)

when declared(newImageArrayRotationAnimationHook4):
    newImageArrayRotationAnimationHook4 = proc (imageArray: JArray[Image], angleInfo: AngleInfo, totalAngle: int32, animationBehavior: AnimationBehavior): ImageArrayBaseRotationAnimation = newImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, animationBehavior)

