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
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule

type
    ImageBaseRotationAnimation* = ref object of RotationAnimation
        image*: Image
        anchor*: int32

proc newImageBaseRotationAnimation*(image: Image, angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior): ImageBaseRotationAnimation
proc initImageBaseRotationAnimation*(this: ImageBaseRotationAnimation, image: Image, angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: ImageBaseRotationAnimation): int32 {.discardable.}
method setSequence*(this: ImageBaseRotationAnimation, sequence: JArray[int32])
method getSequence*(this: ImageBaseRotationAnimation): JArray[int32] {.discardable.}
method paintXY*(this: ImageBaseRotationAnimation, graphics: Graphics, x: int32, y: int32)
method getImage*(this: ImageBaseRotationAnimation): Image {.base, discardable.}
method getWidth*(this: ImageBaseRotationAnimation): int32 {.discardable.}
method getHeight*(this: ImageBaseRotationAnimation): int32 {.discardable.}
method close*(this: ImageBaseRotationAnimation) {.base.}
method finalize*(this: ImageBaseRotationAnimation)
import org/allbinary/DisposalUtil as DisposalUtilModule
export DisposalUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsImageBaseRotationAnimation(this: ImageBaseRotationAnimation) =
    
    this.anchor = Anchor.TOP_LEFT
    discard

proc initImageBaseRotationAnimation*(this: ImageBaseRotationAnimation, image: Image, angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, angleInfo, CircularIndexUtil.createInstance(totalAngle div angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        this.initFieldsImageBaseRotationAnimation()
        this.image = image

proc newImageBaseRotationAnimation*(image: Image, angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior): ImageBaseRotationAnimation =
    result = ImageBaseRotationAnimation()
    initImageBaseRotationAnimation(result, image, angleInfo, totalAngle, animationBehavior)

method getAnimationSize*(this: ImageBaseRotationAnimation): int32 {.discardable.} =
        return this.getSize()

method setSequence*(this: ImageBaseRotationAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: ImageBaseRotationAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: ImageBaseRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawImage(this.image, x, y, this.anchor)

method getImage*(this: ImageBaseRotationAnimation): Image {.base, discardable.} =
        return this.image

method getWidth*(this: ImageBaseRotationAnimation): int32 {.discardable.} =
        return this.image.getWidth()

method getHeight*(this: ImageBaseRotationAnimation): int32 {.discardable.} =
        return this.image.getHeight()

method close*(this: ImageBaseRotationAnimation) {.base.} =
        DisposalUtil.getInstance().disposeImage(this.image)

method finalize*(this: ImageBaseRotationAnimation) =
        DisposalUtil.getInstance().disposeImage(this.image)

when declared(newImageBaseRotationAnimationHook4):
    newImageBaseRotationAnimationHook4 = proc (image: Image, angleInfo: AngleInfo, totalAngle: int16, animationBehavior: AnimationBehavior): RotationAnimation = newImageBaseRotationAnimation(image, angleInfo, totalAngle, animationBehavior)

