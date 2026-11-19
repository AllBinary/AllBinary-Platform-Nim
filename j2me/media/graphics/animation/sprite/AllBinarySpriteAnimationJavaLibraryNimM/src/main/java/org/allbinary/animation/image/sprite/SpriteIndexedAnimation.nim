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
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/ColorCompositeInterface as ColorCompositeInterfaceModule
export ColorCompositeInterfaceModule

type
    SpriteIndexedAnimation* = ref object of IndexedAnimation
        sprite*: Sprite
        image*: Image
        basicColorArray*: JArray[BasicColor]

converter jAsColorCompositeInterface*(value: SpriteIndexedAnimation): ColorCompositeInterface = cast[ColorCompositeInterface](value)
converter jAsBasicColorCompositeSetterInterface*(value: SpriteIndexedAnimation): BasicColorCompositeSetterInterface = cast[BasicColorCompositeSetterInterface](value)
proc newSpriteIndexedAnimation*(sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], animationBehavior: AnimationBehavior): SpriteIndexedAnimation
proc initSpriteIndexedAnimation*(this: SpriteIndexedAnimation, sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], animationBehavior: AnimationBehavior)
method getAnimationSize*(this: SpriteIndexedAnimation): int32 {.discardable.}
method setBasicColorP*(this: SpriteIndexedAnimation, basicColor: BasicColor)
method getBasicColorP*(this: SpriteIndexedAnimation): BasicColor {.discardable.}
method paintFrame*(this: SpriteIndexedAnimation, graphics: Graphics, frame: int32, x: int32, y: int32) {.base.}
method paintXY*(this: SpriteIndexedAnimation, graphics: Graphics, x: int32, y: int32)
method paint*(this: SpriteIndexedAnimation, graphics: Graphics) {.base.}
method nextFrame*(this: SpriteIndexedAnimation)
method previousFrame*(this: SpriteIndexedAnimation)
method getSize*(this: SpriteIndexedAnimation): int32 {.discardable.}
method setFrame*(this: SpriteIndexedAnimation, frame: int32)
method getFrame*(this: SpriteIndexedAnimation): int32 {.discardable.}
method isLastFrame*(this: SpriteIndexedAnimation): bool {.discardable.}
method getLastFrame*(this: SpriteIndexedAnimation): int32 {.base, discardable.}
method setSequence*(this: SpriteIndexedAnimation, sequence: JArray[int32])
method getSequence*(this: SpriteIndexedAnimation): JArray[int32] {.discardable.}
method close*(this: SpriteIndexedAnimation) {.base.}
method finalize*(this: SpriteIndexedAnimation)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule


# Java field initializers run after the base initializer
proc initFieldsSpriteIndexedAnimation(this: SpriteIndexedAnimation) =
    
    
    
    discard

proc initSpriteIndexedAnimation*(this: SpriteIndexedAnimation, sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsSpriteIndexedAnimation()
        this.sprite = sprite
        this.image = image
        this.basicColorArray = basicColorArray
        if this.basicColorArray.length != 0 and this.getSize() != this.basicColorArray.length:
            raise newJException("Exception", newStringMaker().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(this.getSize()).append("!=").appendint(this.basicColorArray.length).toString())

proc newSpriteIndexedAnimation*(sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], animationBehavior: AnimationBehavior): SpriteIndexedAnimation =
    result = SpriteIndexedAnimation()
    initSpriteIndexedAnimation(result, sprite, image, basicColorArray, animationBehavior)

method getAnimationSize*(this: SpriteIndexedAnimation): int32 {.discardable.} =
        return this.getSize()

method setBasicColorP*(this: SpriteIndexedAnimation, basicColor: BasicColor) =
        block:
            var index: int32 = 0
            while index < this.basicColorArray.length:
                defer: index = index +% 1
                if (jSame(basicColor, this.basicColorArray[index])):
                    this.setFrame(index)
                    break

method getBasicColorP*(this: SpriteIndexedAnimation): BasicColor {.discardable.} =
        if this.basicColorArray.length < this.getFrame():
            return this.basicColorArray[this.getFrame()]
        else:
            return BasicColorFactory.getInstance().WHITE

method paintFrame*(this: SpriteIndexedAnimation, graphics: Graphics, frame: int32, x: int32, y: int32) {.base.} =
        this.setFrame(frame)
        this.sprite.setPosition(x, y)
        this.sprite.paint(graphics)

method paintXY*(this: SpriteIndexedAnimation, graphics: Graphics, x: int32, y: int32) =
        this.sprite.setPosition(x, y)
        this.sprite.paint(graphics)

method paint*(this: SpriteIndexedAnimation, graphics: Graphics) {.base.} =
        this.sprite.paint(graphics)

method nextFrame*(this: SpriteIndexedAnimation) =
        this.sprite.nextFrame()

method previousFrame*(this: SpriteIndexedAnimation) =
        this.sprite.prevFrame()

method getSize*(this: SpriteIndexedAnimation): int32 {.discardable.} =
        return this.sprite.getRawFrameCount()

method setFrame*(this: SpriteIndexedAnimation, frame: int32) =
        this.sprite.setFrame(frame)

method getFrame*(this: SpriteIndexedAnimation): int32 {.discardable.} =
        return this.sprite.getFrame()

method isLastFrame*(this: SpriteIndexedAnimation): bool {.discardable.} =
        if this.sprite.getFrame() == this.getSize() -% 1:
            return true
        else:
            return false

method getLastFrame*(this: SpriteIndexedAnimation): int32 {.base, discardable.} =
        return this.getSize()

method setSequence*(this: SpriteIndexedAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: SpriteIndexedAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method close*(this: SpriteIndexedAnimation) {.base.} =
        discard

method finalize*(this: SpriteIndexedAnimation) =
        discard

when declared(newSpriteIndexedAnimationHook4):
    newSpriteIndexedAnimationHook4 = proc (sprite: Sprite, image: Image, basicColorArray: JArray[BasicColor], animationBehavior: AnimationBehavior): IndexedAnimation = newSpriteIndexedAnimation(sprite, image, basicColorArray, animationBehavior)

