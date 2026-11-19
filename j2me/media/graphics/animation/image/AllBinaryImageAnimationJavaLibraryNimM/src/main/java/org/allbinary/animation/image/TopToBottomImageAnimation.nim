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
    TopToBottomImageAnimation* = ref object of ImageSegmentAnimation
        currentHeight*: int32
        anchorOfTopToBottomImageAnimation*: int32

proc newTopToBottomImageAnimation*(image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): TopToBottomImageAnimation
proc initTopToBottomImageAnimation*(this: TopToBottomImageAnimation, image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior)
method nextFrame*(this: TopToBottomImageAnimation)
method previousFrame*(this: TopToBottomImageAnimation)
method setFrame*(this: TopToBottomImageAnimation, index: int32)
method update*(this: TopToBottomImageAnimation) {.base.}
method paintXY*(this: TopToBottomImageAnimation, graphics: Graphics, x: int32, y: int32)
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule


# Java field initializers run after the base initializer
proc initFieldsTopToBottomImageAnimation(this: TopToBottomImageAnimation) =
    
    this.anchorOfTopToBottomImageAnimation = Anchor.TOP_LEFT
    discard

proc initTopToBottomImageAnimation*(this: TopToBottomImageAnimation, image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior) =
        initImageSegmentAnimation(this, image, sequenceArray, animationBehavior)
        this.initFieldsTopToBottomImageAnimation()
        this.currentHeight = 0
        if this.getSequence()[0] == -1:
            this.setFrame(this.getSize() -% 1)

proc newTopToBottomImageAnimation*(image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): TopToBottomImageAnimation =
    result = TopToBottomImageAnimation()
    initTopToBottomImageAnimation(result, image, sequenceArray, animationBehavior)

method nextFrame*(this: TopToBottomImageAnimation) =
        if this.getSequence()[0] == -1:
            jSuperStatement(procCall ImageSegmentAnimation(this).previousFrame())
        else:
            jSuperStatement(procCall ImageSegmentAnimation(this).nextFrame())
        this.update()

method previousFrame*(this: TopToBottomImageAnimation) =
        if this.getSequence()[0] == -1:
            jSuperStatement(procCall ImageSegmentAnimation(this).nextFrame())
        else:
            jSuperStatement(procCall ImageSegmentAnimation(this).previousFrame())
        this.update()

method setFrame*(this: TopToBottomImageAnimation, index: int32) =
        jSuperStatement(procCall ImageSegmentAnimation(this).setFrame(index))
        this.update()

method update*(this: TopToBottomImageAnimation) {.base.} =
        this.currentHeight = this.getDrawHeight() *% this.getFrame() div this.getSize()

method paintXY*(this: TopToBottomImageAnimation, graphics: Graphics, x: int32, y: int32) =
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.getDrawWidth(), this.currentHeight, Sprite.TRANS_NONE, x, y, this.anchorOfTopToBottomImageAnimation)

when declared(newTopToBottomImageAnimationHook3):
    newTopToBottomImageAnimationHook3 = proc (image: Image, sequenceArray: JArray[int32], animationBehavior: AnimationBehavior): ImageSegmentAnimation = newTopToBottomImageAnimation(image, sequenceArray, animationBehavior)

