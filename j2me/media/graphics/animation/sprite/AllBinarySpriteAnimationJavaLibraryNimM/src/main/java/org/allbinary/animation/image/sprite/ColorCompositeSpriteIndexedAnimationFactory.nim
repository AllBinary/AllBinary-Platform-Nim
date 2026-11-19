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
    ColorCompositeSpriteIndexedAnimationFactory* = ref object of BaseImageAnimationFactory
        animationFactorySpriteScaleUtil*: AnimationFactorySpriteScaleUtil
        basicColorArray*: JArray[BasicColor]

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: ColorCompositeSpriteIndexedAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
converter jAsBasicAnimationInterfaceFactoryInterface*(value: ColorCompositeSpriteIndexedAnimationFactory): BasicAnimationInterfaceFactoryInterface = cast[BasicAnimationInterfaceFactoryInterface](value)
proc newColorCompositeSpriteIndexedAnimationFactory*(image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): ColorCompositeSpriteIndexedAnimationFactory
proc initColorCompositeSpriteIndexedAnimationFactory*(this: ColorCompositeSpriteIndexedAnimationFactory, image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: ColorCompositeSpriteIndexedAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: ColorCompositeSpriteIndexedAnimationFactory, animationInterface: Animation): Animation {.discardable.}
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/sprite/SpriteIndexedAnimation as SpriteIndexedAnimationModule
export SpriteIndexedAnimationModule


# Java field initializers run after the base initializer
proc initFieldsColorCompositeSpriteIndexedAnimationFactory(this: ColorCompositeSpriteIndexedAnimationFactory) =
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    
    discard

proc initColorCompositeSpriteIndexedAnimationFactory*(this: ColorCompositeSpriteIndexedAnimationFactory, image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        this.initFieldsColorCompositeSpriteIndexedAnimationFactory()
        this.basicColorArray = basicColorArray

proc newColorCompositeSpriteIndexedAnimationFactory*(image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): ColorCompositeSpriteIndexedAnimationFactory =
    result = ColorCompositeSpriteIndexedAnimationFactory()
    initColorCompositeSpriteIndexedAnimationFactory(result, image, basicColorArray, width, height, animationBehaviorFactory)

method getInstance*(this: ColorCompositeSpriteIndexedAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let sprite: Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return newSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance())

method getInstanceAnimation*(this: ColorCompositeSpriteIndexedAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.getInstance(0)

when declared(newColorCompositeSpriteIndexedAnimationFactoryHook5):
    newColorCompositeSpriteIndexedAnimationFactoryHook5 = proc (image: Image, basicColorArray: JArray[BasicColor], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newColorCompositeSpriteIndexedAnimationFactory(image, basicColorArray, width, height, animationBehaviorFactory)

