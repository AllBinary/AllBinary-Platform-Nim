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
import org/allbinary/animation/image/ImageSegmentAnimation as ImageSegmentAnimationModule
export ImageSegmentAnimationModule

type
    RightToLeftImageAnimation* = ref object of ImageSegmentAnimation
        startWidth*: int32
        currentWidth*: int32
        anchorOfRightToLeftImageAnimation*: int32

proc newRightToLeftImageAnimation*(image: Image, animationBehavior: AnimationBehavior): RightToLeftImageAnimation
proc initRightToLeftImageAnimation*(this: RightToLeftImageAnimation, image: Image, animationBehavior: AnimationBehavior)
method nextFrame*(this: RightToLeftImageAnimation)
method previousFrame*(this: RightToLeftImageAnimation)
method setFrame*(this: RightToLeftImageAnimation, index: int32)
method update*(this: RightToLeftImageAnimation) {.base.}
method paintXY*(this: RightToLeftImageAnimation, graphics: Graphics, x: int32, y: int32)
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsRightToLeftImageAnimation(this: RightToLeftImageAnimation) =
    this.startWidth = 0
    this.currentWidth = 0
    this.anchorOfRightToLeftImageAnimation = Anchor.TOP_LEFT
    discard

proc initRightToLeftImageAnimation*(this: RightToLeftImageAnimation, image: Image, animationBehavior: AnimationBehavior) =
        initImageSegmentAnimation(this, image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        this.initFieldsRightToLeftImageAnimation()
        this.setFrame(this.getSize() -% 1)

proc newRightToLeftImageAnimation*(image: Image, animationBehavior: AnimationBehavior): RightToLeftImageAnimation =
    result = RightToLeftImageAnimation()
    initRightToLeftImageAnimation(result, image, animationBehavior)

method nextFrame*(this: RightToLeftImageAnimation) =
        procCall ImageSegmentAnimation(this).previousFrame()
        this.update()

method previousFrame*(this: RightToLeftImageAnimation) =
        procCall ImageSegmentAnimation(this).nextFrame()
        this.update()

method setFrame*(this: RightToLeftImageAnimation, index: int32) =
        procCall ImageSegmentAnimation(this).setFrame(index)
        this.update()

method update*(this: RightToLeftImageAnimation) {.base.} =
        this.startWidth = this.getDrawWidth() *% this.getFrame() div this.getSize()
        this.currentWidth = this.getDrawWidth() -% this.startWidth

method paintXY*(this: RightToLeftImageAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawRegion(this.getImage(), this.startWidth, this.getStartY(), this.currentWidth, this.getDrawHeight(), Sprite.TRANS_NONE, x +% this.startWidth, y, this.anchorOfRightToLeftImageAnimation)

when declared(newRightToLeftImageAnimationHook2):
    newRightToLeftImageAnimationHook2 = proc (image: Image, animationBehavior: AnimationBehavior): ImageSegmentAnimation = newRightToLeftImageAnimation(image, animationBehavior)

