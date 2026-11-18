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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/image/BaseImageAnimationFactory as BaseImageAnimationFactoryModule
export BaseImageAnimationFactoryModule
import org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtilModule
export AnimationFactorySpriteScaleUtilModule

type
    OneRowSpriteIndexedAnimationFactory* = ref object of BaseImageAnimationFactory
        animationFactorySpriteScaleUtil*: AnimationFactorySpriteScaleUtil

proc newOneRowSpriteIndexedAnimationFactory*(image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory
proc initOneRowSpriteIndexedAnimationFactory*(this: OneRowSpriteIndexedAnimationFactory, image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createFactoryDX*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, dx: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.}
proc createFactoryDXY*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.}
proc createFactoryWH*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.}
proc createFactory*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.}
method init*(this: OneRowSpriteIndexedAnimationFactory, dx: int32, dy: int32) {.base.}
method initW*(this: OneRowSpriteIndexedAnimationFactory, dx: int32) {.base.}
method getInstance*(this: OneRowSpriteIndexedAnimationFactory, instanceId: int32): Animation {.discardable.}
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/sprite/SpriteIndexedAnimation as SpriteIndexedAnimationModule
export SpriteIndexedAnimationModule
import org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation as AdjustedSpriteIndexedAnimationModule
export AdjustedSpriteIndexedAnimationModule


# Java field initializers run after the base initializer
proc initFieldsOneRowSpriteIndexedAnimationFactory(this: OneRowSpriteIndexedAnimationFactory) =
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    discard

proc createFactoryDX*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, dx: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.} =
        let oneRowSpriteIndexedAnimationFactory: OneRowSpriteIndexedAnimationFactory = newOneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.initW(dx)
        return oneRowSpriteIndexedAnimationFactory

proc createFactoryDXY*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.} =
        let oneRowSpriteIndexedAnimationFactory: OneRowSpriteIndexedAnimationFactory = newOneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.init(dx, dy)
        return oneRowSpriteIndexedAnimationFactory

proc createFactoryWH*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.} =
        return newOneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)

proc createFactory*(t: typedesc[OneRowSpriteIndexedAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory {.discardable.} =
        return newOneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)

proc initOneRowSpriteIndexedAnimationFactory*(this: OneRowSpriteIndexedAnimationFactory, image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        this.initFieldsOneRowSpriteIndexedAnimationFactory()

proc newOneRowSpriteIndexedAnimationFactory*(image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): OneRowSpriteIndexedAnimationFactory =
    result = OneRowSpriteIndexedAnimationFactory()
    initOneRowSpriteIndexedAnimationFactory(result, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

method init*(this: OneRowSpriteIndexedAnimationFactory, dx: int32, dy: int32) {.base.} =
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy

method initW*(this: OneRowSpriteIndexedAnimationFactory, dx: int32) {.base.} =
        this.init(dx, 0)
        this.animationFactoryInitializationVisitor.dx = this.animationFactoryInitializationVisitor.dx +% -(ashr(this.animationFactoryInitializationVisitor.width, 2))

method getInstance*(this: OneRowSpriteIndexedAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let sprite: Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            return newAdjustedSpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newSpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance())

when declared(newOneRowSpriteIndexedAnimationFactoryHook7):
    newOneRowSpriteIndexedAnimationFactoryHook7 = proc (image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newOneRowSpriteIndexedAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

