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
import org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterfaceModule
export ProceduralAnimationInterfaceFactoryInterfaceModule
import org/allbinary/animation/image/BaseImageAnimationFactory as BaseImageAnimationFactoryModule
export BaseImageAnimationFactoryModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtilModule
export AnimationFactorySpriteScaleUtilModule

type
    SpriteIndexedAnimationFactory* = ref object of BaseImageAnimationFactory
        animationFactorySpriteScaleUtil*: AnimationFactorySpriteScaleUtil
        basicColorArray*: JArray[BasicColor]

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: SpriteIndexedAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
converter jAsBasicAnimationInterfaceFactoryInterface*(value: SpriteIndexedAnimationFactory): BasicAnimationInterfaceFactoryInterface = cast[BasicAnimationInterfaceFactoryInterface](value)
proc newSpriteIndexedAnimationFactory*(image: Image, basicColorArray: JArray[BasicColor], sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory
proc initSpriteIndexedAnimationFactory*(this: SpriteIndexedAnimationFactory, image: Image, basicColorArray: JArray[BasicColor], sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createCWHDXY*(t: typedesc[SpriteIndexedAnimationFactory], image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory {.discardable.}
proc createCWH*(t: typedesc[SpriteIndexedAnimationFactory], image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory {.discardable.}
proc createWH*(t: typedesc[SpriteIndexedAnimationFactory], image: Image, width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory {.discardable.}
method initHWH*(this: SpriteIndexedAnimationFactory) {.base.}
method getInstance*(this: SpriteIndexedAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: SpriteIndexedAnimationFactory, animationInterface: Animation): Animation {.discardable.}
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/sprite/SpriteIndexedAnimation as SpriteIndexedAnimationModule
export SpriteIndexedAnimationModule
import org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation as AdjustedSpriteIndexedAnimationModule
export AdjustedSpriteIndexedAnimationModule


# Java field initializers run after the base initializer
proc initFieldsSpriteIndexedAnimationFactory(this: SpriteIndexedAnimationFactory) =
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    this.basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY
    discard

proc createCWHDXY*(t: typedesc[SpriteIndexedAnimationFactory], image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory {.discardable.} =
        return newSpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)

proc createCWH*(t: typedesc[SpriteIndexedAnimationFactory], image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory {.discardable.} =
        let spriteIndexedAnimationFactory: SpriteIndexedAnimationFactory = newSpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        spriteIndexedAnimationFactory.initHWH()
        return spriteIndexedAnimationFactory

proc createWH*(t: typedesc[SpriteIndexedAnimationFactory], image: Image, width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory {.discardable.} =
        return newSpriteIndexedAnimationFactory(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)

proc initSpriteIndexedAnimationFactory*(this: SpriteIndexedAnimationFactory, image: Image, basicColorArray: JArray[BasicColor], sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        this.initFieldsSpriteIndexedAnimationFactory()
        this.basicColorArray = basicColorArray

proc newSpriteIndexedAnimationFactory*(image: Image, basicColorArray: JArray[BasicColor], sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): SpriteIndexedAnimationFactory =
    result = SpriteIndexedAnimationFactory()
    initSpriteIndexedAnimationFactory(result, image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

method initHWH*(this: SpriteIndexedAnimationFactory) {.base.} =
        this.animationFactoryInitializationVisitor.dx = -(ashr(this.animationFactoryInitializationVisitor.width, 2))
        this.animationFactoryInitializationVisitor.dy = -(ashr(this.animationFactoryInitializationVisitor.height, 2))
        if AndroidUtil.isAndroid():
            this.animationFactoryInitializationVisitor.dx = this.animationFactoryInitializationVisitor.dx +% 3

method getInstance*(this: SpriteIndexedAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let sprite: Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            return newAdjustedSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance())

method getInstanceAnimation*(this: SpriteIndexedAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.getInstance(0)

when declared(newSpriteIndexedAnimationFactoryHook8):
    newSpriteIndexedAnimationFactoryHook8 = proc (image: Image, basicColorArray: JArray[BasicColor], sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newSpriteIndexedAnimationFactory(image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

