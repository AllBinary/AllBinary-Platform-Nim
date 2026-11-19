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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/animation/image/sprite/SpriteIndexedAnimation as SpriteIndexedAnimationModule
export SpriteIndexedAnimationModule

type
    AdjustedSpriteIndexedAnimation* = ref object of SpriteIndexedAnimation
        dx*: int32
        dy*: int32

proc newAdjustedSpriteIndexedAnimation*(sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedSpriteIndexedAnimation
proc initAdjustedSpriteIndexedAnimation*(this: AdjustedSpriteIndexedAnimation, sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method paintFrame*(this: AdjustedSpriteIndexedAnimation, graphics: Graphics, frame: int32, x: int32, y: int32)
method paintXY*(this: AdjustedSpriteIndexedAnimation, g: Graphics, x: int32, y: int32)
method paint*(this: AdjustedSpriteIndexedAnimation, g: Graphics)


# Java field initializers run after the base initializer
proc initFieldsAdjustedSpriteIndexedAnimation(this: AdjustedSpriteIndexedAnimation) =
    
    
    discard

proc initAdjustedSpriteIndexedAnimation*(this: AdjustedSpriteIndexedAnimation, sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initSpriteIndexedAnimation(this, sprite, image, basicColorArray, animationBehavior)
        this.initFieldsAdjustedSpriteIndexedAnimation()
        this.dx = dx
        this.dy = dy

proc newAdjustedSpriteIndexedAnimation*(sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedSpriteIndexedAnimation =
    result = AdjustedSpriteIndexedAnimation()
    initAdjustedSpriteIndexedAnimation(result, sprite, image, basicColorArray, dx, dy, animationBehavior)

method paintFrame*(this: AdjustedSpriteIndexedAnimation, graphics: Graphics, frame: int32, x: int32, y: int32) =
        this.setFrame(frame)
        this.sprite.setPosition(x +% this.dx, y +% this.dy)
        jSuperStatement(procCall SpriteIndexedAnimation(this).paint(graphics))

method paintXY*(this: AdjustedSpriteIndexedAnimation, g: Graphics, x: int32, y: int32) =
        this.sprite.setPosition(x +% this.dx, y +% this.dy)
        jSuperStatement(procCall SpriteIndexedAnimation(this).paint(g))

method paint*(this: AdjustedSpriteIndexedAnimation, g: Graphics) =
        this.sprite.setPosition(this.dx, this.dy)
        jSuperStatement(procCall SpriteIndexedAnimation(this).paint(g))

when declared(newAdjustedSpriteIndexedAnimationHook6):
    newAdjustedSpriteIndexedAnimationHook6 = proc (sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], dx: int32, dy: int32, animationBehavior: AnimationBehavior): SpriteIndexedAnimation = newAdjustedSpriteIndexedAnimation(sprite, image, basicColorArray, dx, dy, animationBehavior)

