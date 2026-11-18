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
    ImageArrayAnimation* = ref object of IndexedAnimation
        imageArray*: JArray[Image]
        totalFrames*: int32
        circularIndexUtil*: CircularIndexUtil
        anchor*: int32

proc newImageArrayAnimation*(imageArray: JArray[Image], animationBehavior: AnimationBehavior): ImageArrayAnimation
proc initImageArrayAnimation*(this: ImageArrayAnimation, imageArray: JArray[Image], animationBehavior: AnimationBehavior)
method getAnimationSize*(this: ImageArrayAnimation): int32 {.discardable.}
method nextFrame*(this: ImageArrayAnimation)
method previousFrame*(this: ImageArrayAnimation)
method setFrame*(this: ImageArrayAnimation, index: int32)
method getFrame*(this: ImageArrayAnimation): int32 {.discardable.}
method getSize*(this: ImageArrayAnimation): int32 {.discardable.}
method setSequence*(this: ImageArrayAnimation, sequence: JArray[int32])
method getSequence*(this: ImageArrayAnimation): JArray[int32] {.discardable.}
method getImage*(this: ImageArrayAnimation, index: int32): Image {.base, discardable.}
method getImageArray*(this: ImageArrayAnimation): JArray[Image] {.base, discardable.}
method setImageArray*(this: ImageArrayAnimation, imageArray: JArray[Image]) {.base.}
method paintXY*(this: ImageArrayAnimation, graphics: Graphics, x: int32, y: int32)
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsImageArrayAnimation(this: ImageArrayAnimation) =
    this.imageArray = NullImage.NULL_IMAGE_ARRAY
    this.totalFrames = 0
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL
    this.anchor = Anchor.TOP_LEFT
    discard

proc initImageArrayAnimation*(this: ImageArrayAnimation, imageArray: JArray[Image], animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsImageArrayAnimation()
        this.setImageArray(imageArray)

proc newImageArrayAnimation*(imageArray: JArray[Image], animationBehavior: AnimationBehavior): ImageArrayAnimation =
    result = ImageArrayAnimation()
    initImageArrayAnimation(result, imageArray, animationBehavior)

method getAnimationSize*(this: ImageArrayAnimation): int32 {.discardable.} =
        return this.getSize()

method nextFrame*(this: ImageArrayAnimation) =
        this.circularIndexUtil.next()

method previousFrame*(this: ImageArrayAnimation) =
        this.circularIndexUtil.previous()

method setFrame*(this: ImageArrayAnimation, index: int32) =
        this.circularIndexUtil.setIndex(index)

method getFrame*(this: ImageArrayAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getIndex()

method getSize*(this: ImageArrayAnimation): int32 {.discardable.} =
        return this.totalFrames

method setSequence*(this: ImageArrayAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: ImageArrayAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method getImage*(this: ImageArrayAnimation, index: int32): Image {.base, discardable.} =
        return this.imageArray[index]

method getImageArray*(this: ImageArrayAnimation): JArray[Image] {.base, discardable.} =
        return this.imageArray

method setImageArray*(this: ImageArrayAnimation, imageArray: JArray[Image]) {.base.} =
        this.imageArray = imageArray
        this.totalFrames = imageArray.length
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames)

method paintXY*(this: ImageArrayAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawImage(this.imageArray[this.circularIndexUtil.getIndex()], x, y, this.anchor)

when declared(newImageArrayAnimationHook2):
    newImageArrayAnimationHook2 = proc (imageArray: JArray[Image], animationBehavior: AnimationBehavior): IndexedAnimation = newImageArrayAnimation(imageArray, animationBehavior)

