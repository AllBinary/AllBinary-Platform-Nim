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
    BottomToTopImageAnimation* = ref object of ImageSegmentAnimation
        startHeight*: int32
        currentHeight*: int32
        anchorOfBottomToTopImageAnimation*: int32

proc newBottomToTopImageAnimation*(image: Image, animationBehavior: AnimationBehavior): BottomToTopImageAnimation
proc initBottomToTopImageAnimation*(this: BottomToTopImageAnimation, image: Image, animationBehavior: AnimationBehavior)
method nextFrame*(this: BottomToTopImageAnimation)
method previousFrame*(this: BottomToTopImageAnimation)
method setFrame*(this: BottomToTopImageAnimation, index: int32)
method update*(this: BottomToTopImageAnimation) {.base.}
method paintXY*(this: BottomToTopImageAnimation, graphics: Graphics, x: int32, y: int32)
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsBottomToTopImageAnimation(this: BottomToTopImageAnimation) =
    this.startHeight = 0
    this.currentHeight = 0
    this.anchorOfBottomToTopImageAnimation = Anchor.TOP_LEFT
    discard

proc initBottomToTopImageAnimation*(this: BottomToTopImageAnimation, image: Image, animationBehavior: AnimationBehavior) =
        initImageSegmentAnimation(this, image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        this.initFieldsBottomToTopImageAnimation()
        this.setFrame(this.getSize() -% 1)

proc newBottomToTopImageAnimation*(image: Image, animationBehavior: AnimationBehavior): BottomToTopImageAnimation =
    result = BottomToTopImageAnimation()
    initBottomToTopImageAnimation(result, image, animationBehavior)

method nextFrame*(this: BottomToTopImageAnimation) =
        jSuperStatement(procCall ImageSegmentAnimation(this).previousFrame())
        this.update()

method previousFrame*(this: BottomToTopImageAnimation) =
        jSuperStatement(procCall ImageSegmentAnimation(this).nextFrame())
        this.update()

method setFrame*(this: BottomToTopImageAnimation, index: int32) =
        jSuperStatement(procCall ImageSegmentAnimation(this).setFrame(index))
        this.update()

method update*(this: BottomToTopImageAnimation) {.base.} =
        this.startHeight = this.getDrawHeight() *% this.getFrame() div this.getSize()
        this.currentHeight = this.getDrawHeight() -% this.startHeight

method paintXY*(this: BottomToTopImageAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawRegion(this.getImage(), this.getStartX(), this.startHeight, this.getDrawWidth(), this.currentHeight, Sprite.TRANS_NONE, x, y +% this.startHeight, this.anchorOfBottomToTopImageAnimation)

when declared(newBottomToTopImageAnimationHook2):
    newBottomToTopImageAnimationHook2 = proc (image: Image, animationBehavior: AnimationBehavior): ImageSegmentAnimation = newBottomToTopImageAnimation(image, animationBehavior)

