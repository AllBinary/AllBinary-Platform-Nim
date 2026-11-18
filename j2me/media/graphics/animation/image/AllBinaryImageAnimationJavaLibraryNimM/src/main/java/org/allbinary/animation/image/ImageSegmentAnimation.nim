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
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/animation/image/ImageAnimation as ImageAnimationModule
export ImageAnimationModule

type
    ImageSegmentAnimation* = ref object of ImageAnimation
        startX*: int32
        startY*: int32
        drawWidth*: int32
        drawHeight*: int32
        circularIndexUtil*: CircularIndexUtil
        sequenceArray*: JArray[int32]

proc newImageSegmentAnimation*(image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): ImageSegmentAnimation
proc initImageSegmentAnimation*(this: ImageSegmentAnimation, image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior)
method nextFrame*(this: ImageSegmentAnimation)
method previousFrame*(this: ImageSegmentAnimation)
method setFrame*(this: ImageSegmentAnimation, index: int32)
method getFrame*(this: ImageSegmentAnimation): int32 {.discardable.}
method getSize*(this: ImageSegmentAnimation): int32 {.discardable.}
method setSequence*(this: ImageSegmentAnimation, sequenceArray: JArray[int32])
method getSequence*(this: ImageSegmentAnimation): JArray[int32] {.discardable.}
method paintXY*(this: ImageSegmentAnimation, graphics: Graphics, x: int32, y: int32)
method getStartX*(this: ImageSegmentAnimation): int32 {.base, discardable.}
method setStartX*(this: ImageSegmentAnimation, startX: int32) {.base.}
method getStartY*(this: ImageSegmentAnimation): int32 {.base, discardable.}
method setStartY*(this: ImageSegmentAnimation, startY: int32) {.base.}
method getDrawWidth*(this: ImageSegmentAnimation): int32 {.base, discardable.}
method setDrawWidth*(this: ImageSegmentAnimation, drawWidth: int32) {.base.}
method getDrawHeight*(this: ImageSegmentAnimation): int32 {.base, discardable.}
method setDrawHeight*(this: ImageSegmentAnimation, drawHeight: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsImageSegmentAnimation(this: ImageSegmentAnimation) =
    
    
    
    
    
    
    discard

proc initImageSegmentAnimation*(this: ImageSegmentAnimation, image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior) =
        initImageAnimation(this, image, animationBehavior)
        this.initFieldsImageSegmentAnimation()
        this.startX = 0
        this.startY = 0
        this.drawWidth = this.getImage().getWidth()
        this.drawHeight = this.getImage().getHeight()
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.drawHeight)
        this.sequenceArray = sequenceArray

proc newImageSegmentAnimation*(image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): ImageSegmentAnimation =
    result = ImageSegmentAnimation()
    initImageSegmentAnimation(result, image, sequenceArray, animationBehavior)

method nextFrame*(this: ImageSegmentAnimation) =
        this.circularIndexUtil.next()

method previousFrame*(this: ImageSegmentAnimation) =
        this.circularIndexUtil.previous()

method setFrame*(this: ImageSegmentAnimation, index: int32) =
        this.circularIndexUtil.setIndex(index)

method getFrame*(this: ImageSegmentAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getIndex()

method getSize*(this: ImageSegmentAnimation): int32 {.discardable.} =
        return this.circularIndexUtil.getSize()

method setSequence*(this: ImageSegmentAnimation, sequenceArray: JArray[int32]) =
        this.sequenceArray = sequenceArray

method getSequence*(this: ImageSegmentAnimation): JArray[int32] {.discardable.} =
        return this.sequenceArray

method paintXY*(this: ImageSegmentAnimation, graphics: Graphics, x: int32, y: int32) =
        discard

method getStartX*(this: ImageSegmentAnimation): int32 {.base, discardable.} =
        return this.startX

method setStartX*(this: ImageSegmentAnimation, startX: int32) {.base.} =
        this.startX = startX

method getStartY*(this: ImageSegmentAnimation): int32 {.base, discardable.} =
        return this.startY

method setStartY*(this: ImageSegmentAnimation, startY: int32) {.base.} =
        this.startY = startY

method getDrawWidth*(this: ImageSegmentAnimation): int32 {.base, discardable.} =
        return this.drawWidth

method setDrawWidth*(this: ImageSegmentAnimation, drawWidth: int32) {.base.} =
        this.drawWidth = drawWidth

method getDrawHeight*(this: ImageSegmentAnimation): int32 {.base, discardable.} =
        return this.drawHeight

method setDrawHeight*(this: ImageSegmentAnimation, drawHeight: int32) {.base.} =
        this.drawHeight = drawHeight

when declared(newImageSegmentAnimationHook3):
    newImageSegmentAnimationHook3 = proc (image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): ImageAnimation = newImageSegmentAnimation(image, sequenceArray, animationBehavior)

