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

type
    ImageAnimation* = ref object of IndexedAnimation
        image*: Image
        anchor*: int32

proc newImageAnimation*(image: Image, animationBehavior: AnimationBehavior): ImageAnimation
proc initImageAnimation*(this: ImageAnimation, image: Image, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: ImageAnimation): int32 {.discardable.}
method nextFrame*(this: ImageAnimation)
method previousFrame*(this: ImageAnimation)
method setFrame*(this: ImageAnimation, index: int32)
method getFrame*(this: ImageAnimation): int32 {.discardable.}
method getSize*(this: ImageAnimation): int32 {.discardable.}
method setSequence*(this: ImageAnimation, sequence: JArray[int32])
method getSequence*(this: ImageAnimation): JArray[int32] {.discardable.}
method paintXY*(this: ImageAnimation, graphics: Graphics, x: int32, y: int32)
method getImage*(this: ImageAnimation): Image {.base, discardable.}
method close*(this: ImageAnimation) {.base.}
method finalize*(this: ImageAnimation)
import org/allbinary/DisposalUtil as DisposalUtilModule
export DisposalUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsImageAnimation(this: ImageAnimation) =
    
    this.anchor = Anchor.TOP_LEFT
    discard

proc initImageAnimation*(this: ImageAnimation, image: Image, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsImageAnimation()
        this.image = image

proc newImageAnimation*(image: Image, animationBehavior: AnimationBehavior): ImageAnimation =
    result = ImageAnimation()
    initImageAnimation(result, image, animationBehavior)

method getAnimationSize*(this: ImageAnimation): int32 {.discardable.} =
        return this.getSize()

method nextFrame*(this: ImageAnimation) =
        discard

method previousFrame*(this: ImageAnimation) =
        discard

method setFrame*(this: ImageAnimation, index: int32) =
        discard

method getFrame*(this: ImageAnimation): int32 {.discardable.} =
        return 0

method getSize*(this: ImageAnimation): int32 {.discardable.} =
        return 1

method setSequence*(this: ImageAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: ImageAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: ImageAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawImage(this.image, x, y, this.anchor)

method getImage*(this: ImageAnimation): Image {.base, discardable.} =
        return this.image

method close*(this: ImageAnimation) {.base.} =
        DisposalUtil.getInstance().disposeImage(this.image)

method finalize*(this: ImageAnimation) =
        DisposalUtil.getInstance().disposeImage(this.image)

when declared(newImageAnimationHook2):
    newImageAnimationHook2 = proc (image: Image, animationBehavior: AnimationBehavior): IndexedAnimation = newImageAnimation(image, animationBehavior)

