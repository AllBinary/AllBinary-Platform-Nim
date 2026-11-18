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
import org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation as AllBinarySpriteRotationAnimationModule
export AllBinarySpriteRotationAnimationModule

type
    AllBinaryAdjustedSpriteRotationAnimation* = ref object of AllBinarySpriteRotationAnimation
        dx*: int32
        dy*: int32

proc newAllBinaryAdjustedSpriteRotationAnimation*(sprite: Sprite, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AllBinaryAdjustedSpriteRotationAnimation
proc initAllBinaryAdjustedSpriteRotationAnimation*(this: AllBinaryAdjustedSpriteRotationAnimation, sprite: Sprite, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method paintXY*(this: AllBinaryAdjustedSpriteRotationAnimation, g: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsAllBinaryAdjustedSpriteRotationAnimation(this: AllBinaryAdjustedSpriteRotationAnimation) =
    
    
    discard

proc initAllBinaryAdjustedSpriteRotationAnimation*(this: AllBinaryAdjustedSpriteRotationAnimation, sprite: Sprite, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initAllBinarySpriteRotationAnimation(this, sprite, image, animationBehavior)
        this.initFieldsAllBinaryAdjustedSpriteRotationAnimation()
        this.dx = dx
        this.dy = dy

proc newAllBinaryAdjustedSpriteRotationAnimation*(sprite: Sprite, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AllBinaryAdjustedSpriteRotationAnimation =
    result = AllBinaryAdjustedSpriteRotationAnimation()
    initAllBinaryAdjustedSpriteRotationAnimation(result, sprite, image, dx, dy, animationBehavior)

method paintXY*(this: AllBinaryAdjustedSpriteRotationAnimation, g: Graphics, x: int32, y: int32) =
        this.sprite.setPosition(x +% this.dx, y +% this.dy)
        this.paint(g)

when declared(newAllBinaryAdjustedSpriteRotationAnimationHook5):
    newAllBinaryAdjustedSpriteRotationAnimationHook5 = proc (sprite: Sprite, image: Image, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AllBinarySpriteRotationAnimation = newAllBinaryAdjustedSpriteRotationAnimation(sprite, image, dx, dy, animationBehavior)

