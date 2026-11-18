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
import org/allbinary/media/image/ImageModifierUtil as ImageModifierUtilModule
export ImageModifierUtilModule

type
    ImageArrayBaseRotationAnimation* = ref object of RotationAnimation
        imageModifierUtil*: ImageModifierUtil
        originalImageArray*: JArray[Image]
        imageArray*: JArray[Image]
        currentImage*: Image
        totalFrames*: int32
        anchor*: int32

proc newImageArrayBaseRotationAnimation*(originalImageArray: JArray[Image], angleInfo: AngleInfo, animationBehavior: AnimationBehavior): ImageArrayBaseRotationAnimation
proc initImageArrayBaseRotationAnimation*(this: ImageArrayBaseRotationAnimation, originalImageArray: JArray[Image], angleInfo: AngleInfo, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: ImageArrayBaseRotationAnimation): int32 {.discardable.}
method setAlpha*(this: ImageArrayBaseRotationAnimation, alpha: int32)
method nextRotation*(this: ImageArrayBaseRotationAnimation)
method previousRotation*(this: ImageArrayBaseRotationAnimation)
method setFrame*(this: ImageArrayBaseRotationAnimation, index2: int32)
method setSequence*(this: ImageArrayBaseRotationAnimation, sequence: JArray[int32])
method getSequence*(this: ImageArrayBaseRotationAnimation): JArray[int32] {.discardable.}
method setImageArray*(this: ImageArrayBaseRotationAnimation, imageArray: JArray[Image]) {.base.}
method paintXY*(this: ImageArrayBaseRotationAnimation, graphics: Graphics, x: int32, y: int32)
method close*(this: ImageArrayBaseRotationAnimation) {.base.}
method finalize*(this: ImageArrayBaseRotationAnimation)
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/DisposalUtil as DisposalUtilModule
export DisposalUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsImageArrayBaseRotationAnimation(this: ImageArrayBaseRotationAnimation) =
    this.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
    
    this.imageArray = NullImage.NULL_IMAGE_ARRAY
    
    this.totalFrames = 0
    this.anchor = Anchor.TOP_LEFT
    discard

proc initImageArrayBaseRotationAnimation*(this: ImageArrayBaseRotationAnimation, originalImageArray: JArray[Image], angleInfo: AngleInfo, animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, angleInfo, CircularIndexUtil.createInstance(360 div int32(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        this.initFieldsImageArrayBaseRotationAnimation()
        this.originalImageArray = originalImageArray
        this.setImageArray(this.imageModifierUtil.getImageArray(originalImageArray))
        this.currentImage = this.imageArray[this.circularIndexUtil.getIndex()]

proc newImageArrayBaseRotationAnimation*(originalImageArray: JArray[Image], angleInfo: AngleInfo, animationBehavior: AnimationBehavior): ImageArrayBaseRotationAnimation =
    result = ImageArrayBaseRotationAnimation()
    initImageArrayBaseRotationAnimation(result, originalImageArray, angleInfo, animationBehavior)

method getAnimationSize*(this: ImageArrayBaseRotationAnimation): int32 {.discardable.} =
        return this.getSize()

method setAlpha*(this: ImageArrayBaseRotationAnimation, alpha: int32) =
        if this.alphaP != alpha:
            procCall RotationAnimation(this).setAlpha(alpha)
            this.imageModifierUtil.reset()
            let index: int32 = this.circularIndexUtil.getIndex()
            this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP)

method nextRotation*(this: ImageArrayBaseRotationAnimation) =
        procCall RotationAnimation(this).nextRotation()
        let index: int32 = this.circularIndexUtil.getIndex()
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP)
        this.currentImage = this.imageArray[index]

method previousRotation*(this: ImageArrayBaseRotationAnimation) =
        procCall RotationAnimation(this).previousRotation()
        let index: int32 = this.circularIndexUtil.getIndex()
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP)
        this.currentImage = this.imageArray[index]

method setFrame*(this: ImageArrayBaseRotationAnimation, index2: int32) =
        procCall RotationAnimation(this).setFrame(index2)
        let index: int32 = this.circularIndexUtil.getIndex()
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP)
        this.currentImage = this.imageArray[index]

method setSequence*(this: ImageArrayBaseRotationAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: ImageArrayBaseRotationAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method setImageArray*(this: ImageArrayBaseRotationAnimation, imageArray: JArray[Image]) {.base.} =
        this.imageArray = imageArray
        this.totalFrames = imageArray.length
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames)

method paintXY*(this: ImageArrayBaseRotationAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawImage(this.currentImage, x, y, this.anchor)

method close*(this: ImageArrayBaseRotationAnimation) {.base.} =
        let disposalUtil: DisposalUtil = DisposalUtil.getInstance()
        let size2: int32 = this.imageArray.length
        block:
            var index: int32 = 0
            while index < size2:
                defer: index = index +% 1
                disposalUtil.disposeImage(this.imageArray[index])
        let size: int32 = this.originalImageArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                disposalUtil.disposeImage(this.originalImageArray[index])
        disposalUtil.disposeImage(this.currentImage)

method finalize*(this: ImageArrayBaseRotationAnimation) =
        let disposalUtil: DisposalUtil = DisposalUtil.getInstance()
        let size2: int32 = this.imageArray.length
        block:
            var index: int32 = 0
            while index < size2:
                defer: index = index +% 1
                disposalUtil.disposeImage(this.imageArray[index])
        let size: int32 = this.originalImageArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                disposalUtil.disposeImage(this.originalImageArray[index])
        disposalUtil.disposeImage(this.currentImage)

when declared(newImageArrayBaseRotationAnimationHook3):
    newImageArrayBaseRotationAnimationHook3 = proc (originalImageArray: JArray[Image], angleInfo: AngleInfo, animationBehavior: AnimationBehavior): RotationAnimation = newImageArrayBaseRotationAnimation(originalImageArray, angleInfo, animationBehavior)

