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
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation as HackRotationSpriteIndexedAnimationModule
export HackRotationSpriteIndexedAnimationModule

type
    AllBinarySpriteRotationAnimation* = ref object of HackRotationSpriteIndexedAnimation

proc newAllBinarySpriteRotationAnimation*(sprite: Sprite, image: Image, animationBehavior: AnimationBehavior): AllBinarySpriteRotationAnimation
proc initAllBinarySpriteRotationAnimation*(this: AllBinarySpriteRotationAnimation, sprite: Sprite, image: Image, animationBehavior: AnimationBehavior)
method nextRotation*(this: AllBinarySpriteRotationAnimation)
method previousRotation*(this: AllBinarySpriteRotationAnimation)
method setFrameByDirection*(this: AllBinarySpriteRotationAnimation, direction: Direction)
method setFrameToAngle*(this: AllBinarySpriteRotationAnimation, angle: Angle)
method setFrame*(this: AllBinarySpriteRotationAnimation, index: int32)
method adjustFrameToAngle*(this: AllBinarySpriteRotationAnimation, angle: Angle)
method adjustFrame*(this: AllBinarySpriteRotationAnimation, angle: int16)
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule


proc initAllBinarySpriteRotationAnimation*(this: AllBinarySpriteRotationAnimation, sprite: Sprite, image: Image, animationBehavior: AnimationBehavior) =
        initHackRotationSpriteIndexedAnimation(this, sprite, image, AngleInfo.getInstance(jToInt16((int32(AngleFactory.getInstance().TOTAL_ANGLE) div sprite.getRawFrameCount()))), animationBehavior)
        this.angleInfo.adjustAngle(this.sprite.getFrame())

proc newAllBinarySpriteRotationAnimation*(sprite: Sprite, image: Image, animationBehavior: AnimationBehavior): AllBinarySpriteRotationAnimation =
    result = AllBinarySpriteRotationAnimation()
    initAllBinarySpriteRotationAnimation(result, sprite, image, animationBehavior)

method nextRotation*(this: AllBinarySpriteRotationAnimation) =
        this.sprite.nextFrame()
        this.angleInfo.adjustAngle(this.sprite.getFrame())

method previousRotation*(this: AllBinarySpriteRotationAnimation) =
        this.sprite.prevFrame()
        this.angleInfo.adjustAngle(this.sprite.getFrame())

method setFrameByDirection*(this: AllBinarySpriteRotationAnimation, direction: Direction) =
        var angle: Angle = this.directionUtil.getFrameAngle(direction)
        this.adjustFrameToAngle(angle)

method setFrameToAngle*(this: AllBinarySpriteRotationAnimation, angle: Angle) =
        this.adjustFrameToAngle(angle)

method setFrame*(this: AllBinarySpriteRotationAnimation, index: int32) =
        this.sprite.setFrame(index)
        this.angleInfo.adjustAngle(this.getFrame())

method adjustFrameToAngle*(this: AllBinarySpriteRotationAnimation, angle: Angle) =
        this.adjustFrame(angle.getValue())

method adjustFrame*(this: AllBinarySpriteRotationAnimation, angle: int16) =
        this.setFrame(this.frameUtil.getFrameForAngle(angle, int32(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())))

when declared(newAllBinarySpriteRotationAnimationHook3):
    newAllBinarySpriteRotationAnimationHook3 = proc (sprite: Sprite, image: Image, animationBehavior: AnimationBehavior): HackRotationSpriteIndexedAnimation = newAllBinarySpriteRotationAnimation(sprite, image, animationBehavior)

