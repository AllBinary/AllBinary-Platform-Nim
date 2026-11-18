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
# package org.allbinary.animation.image.sprite

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/RotationAnimation as RotationAnimationModule
export RotationAnimationModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule

type
    HackRotationSpriteIndexedAnimation* = ref object of RotationAnimation
        sprite*: Sprite
        image*: Image

proc newHackRotationSpriteIndexedAnimation*(sprite: Sprite, image: Image, angleInfo: AngleInfo, animationBehavior: AnimationBehavior): HackRotationSpriteIndexedAnimation
proc initHackRotationSpriteIndexedAnimation*(this: HackRotationSpriteIndexedAnimation, sprite: Sprite, image: Image, angleInfo: AngleInfo, animationBehavior: AnimationBehavior)
method getAnimationSize*(this: HackRotationSpriteIndexedAnimation): int32 {.discardable.}
method paintFrame*(this: HackRotationSpriteIndexedAnimation, g: Graphics, frame: int32, x: int32, y: int32) {.base.}
method paintXY*(this: HackRotationSpriteIndexedAnimation, g: Graphics, x: int32, y: int32)
method paint*(this: HackRotationSpriteIndexedAnimation, g: Graphics) {.base.}
method nextRotation*(this: HackRotationSpriteIndexedAnimation)
method previousRotation*(this: HackRotationSpriteIndexedAnimation)
method getSize*(this: HackRotationSpriteIndexedAnimation): int32 {.discardable.}
method setFrame*(this: HackRotationSpriteIndexedAnimation, frame: int32)
method getFrame*(this: HackRotationSpriteIndexedAnimation): int32 {.discardable.}
method setSequence*(this: HackRotationSpriteIndexedAnimation, sequence: JArray[int32])
method getSequence*(this: HackRotationSpriteIndexedAnimation): JArray[int32] {.discardable.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule


# Java field initializers run after the base initializer
proc initFieldsHackRotationSpriteIndexedAnimation(this: HackRotationSpriteIndexedAnimation) =
    
    
    discard

proc initHackRotationSpriteIndexedAnimation*(this: HackRotationSpriteIndexedAnimation, sprite: Sprite, image: Image, angleInfo: AngleInfo, animationBehavior: AnimationBehavior) =
        initRotationAnimation(this, angleInfo, CircularIndexUtil.createInstance(360 div int32(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        this.initFieldsHackRotationSpriteIndexedAnimation()
        this.sprite = sprite
        this.image = image

proc newHackRotationSpriteIndexedAnimation*(sprite: Sprite, image: Image, angleInfo: AngleInfo, animationBehavior: AnimationBehavior): HackRotationSpriteIndexedAnimation =
    result = HackRotationSpriteIndexedAnimation()
    initHackRotationSpriteIndexedAnimation(result, sprite, image, angleInfo, animationBehavior)

method getAnimationSize*(this: HackRotationSpriteIndexedAnimation): int32 {.discardable.} =
        return this.getSize()

method paintFrame*(this: HackRotationSpriteIndexedAnimation, g: Graphics, frame: int32, x: int32, y: int32) {.base.} =
        this.setFrame(frame)
        this.paintXY(g, x, y)

method paintXY*(this: HackRotationSpriteIndexedAnimation, g: Graphics, x: int32, y: int32) =
        this.sprite.setPosition(x, y)
        this.paint(g)

method paint*(this: HackRotationSpriteIndexedAnimation, g: Graphics) {.base.} =
        this.sprite.paint(g)

method nextRotation*(this: HackRotationSpriteIndexedAnimation) =
        this.sprite.nextFrame()

method previousRotation*(this: HackRotationSpriteIndexedAnimation) =
        this.sprite.prevFrame()

method getSize*(this: HackRotationSpriteIndexedAnimation): int32 {.discardable.} =
        return this.sprite.getRawFrameCount()

method setFrame*(this: HackRotationSpriteIndexedAnimation, frame: int32) =
        this.sprite.setFrame(frame)

method getFrame*(this: HackRotationSpriteIndexedAnimation): int32 {.discardable.} =
        return this.sprite.getFrame()

method setSequence*(this: HackRotationSpriteIndexedAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: HackRotationSpriteIndexedAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

when declared(newHackRotationSpriteIndexedAnimationHook4):
    newHackRotationSpriteIndexedAnimationHook4 = proc (sprite: Sprite, image: Image, angleInfo: AngleInfo, animationBehavior: AnimationBehavior): RotationAnimation = newHackRotationSpriteIndexedAnimation(sprite, image, angleInfo, animationBehavior)

