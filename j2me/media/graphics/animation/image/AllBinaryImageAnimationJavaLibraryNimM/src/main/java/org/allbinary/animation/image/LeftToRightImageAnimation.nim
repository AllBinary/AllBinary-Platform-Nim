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
    LeftToRightImageAnimation* = ref object of ImageSegmentAnimation
        currentWidth*: int32
        anchorOfLeftToRightImageAnimation*: int32

proc newLeftToRightImageAnimation*(image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): LeftToRightImageAnimation
proc initLeftToRightImageAnimation*(this: LeftToRightImageAnimation, image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior)
method nextFrame*(this: LeftToRightImageAnimation)
method previousFrame*(this: LeftToRightImageAnimation)
method setFrame*(this: LeftToRightImageAnimation, index: int32)
method update*(this: LeftToRightImageAnimation) {.base.}
method paintXY*(this: LeftToRightImageAnimation, graphics: Graphics, x: int32, y: int32)
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule


# Java field initializers run after the base initializer
proc initFieldsLeftToRightImageAnimation(this: LeftToRightImageAnimation) =
    
    this.anchorOfLeftToRightImageAnimation = Anchor.TOP_LEFT
    discard

proc initLeftToRightImageAnimation*(this: LeftToRightImageAnimation, image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior) =
        initImageSegmentAnimation(this, image, sequenceArray, animationBehavior)
        this.initFieldsLeftToRightImageAnimation()
        this.currentWidth = 0
        if this.getSequence()[0] == -1:
            this.setFrame(this.getSize() -% 1)

proc newLeftToRightImageAnimation*(image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): LeftToRightImageAnimation =
    result = LeftToRightImageAnimation()
    initLeftToRightImageAnimation(result, image, sequenceArray, animationBehavior)

method nextFrame*(this: LeftToRightImageAnimation) =
        if this.getSequence()[0] == -1:
            jSuperStatement(procCall ImageSegmentAnimation(this).previousFrame())
        else:
            jSuperStatement(procCall ImageSegmentAnimation(this).nextFrame())
        this.update()

method previousFrame*(this: LeftToRightImageAnimation) =
        if this.getSequence()[0] == -1:
            jSuperStatement(procCall ImageSegmentAnimation(this).nextFrame())
        else:
            jSuperStatement(procCall ImageSegmentAnimation(this).previousFrame())
        this.update()

method setFrame*(this: LeftToRightImageAnimation, index: int32) =
        jSuperStatement(procCall ImageSegmentAnimation(this).setFrame(index))
        this.update()

method update*(this: LeftToRightImageAnimation) {.base.} =
        this.currentWidth = this.getDrawWidth() *% this.getFrame() div this.getSize()

method paintXY*(this: LeftToRightImageAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.currentWidth, this.getDrawHeight(), Sprite.TRANS_NONE, x, y, this.anchorOfLeftToRightImageAnimation)

when declared(newLeftToRightImageAnimationHook3):
    newLeftToRightImageAnimationHook3 = proc (image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): ImageSegmentAnimation = newLeftToRightImageAnimation(image, sequenceArray, animationBehavior)

