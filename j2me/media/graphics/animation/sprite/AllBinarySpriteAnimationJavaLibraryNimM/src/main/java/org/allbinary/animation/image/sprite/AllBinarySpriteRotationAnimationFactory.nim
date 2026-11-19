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
import org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtilModule
export AnimationFactorySpriteScaleUtilModule

type
    AllBinarySpriteRotationAnimationFactory* = ref object of BaseImageAnimationFactory
        animationFactorySpriteScaleUtil*: AnimationFactorySpriteScaleUtil

converter jAsProceduralAnimationInterfaceFactoryInterface*(value: AllBinarySpriteRotationAnimationFactory): ProceduralAnimationInterfaceFactoryInterface = cast[ProceduralAnimationInterfaceFactoryInterface](value)
converter jAsBasicAnimationInterfaceFactoryInterface*(value: AllBinarySpriteRotationAnimationFactory): BasicAnimationInterfaceFactoryInterface = cast[BasicAnimationInterfaceFactoryInterface](value)
proc newAllBinarySpriteRotationAnimationFactory*(image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory
proc initAllBinarySpriteRotationAnimationFactory*(this: AllBinarySpriteRotationAnimationFactory, image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createWHDY*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.}
proc createWH*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.}
proc createDXY*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.}
proc createDXYQ*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.}
proc createQ*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.}
proc createWHF*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.}
method init*(this: AllBinarySpriteRotationAnimationFactory, dx: int32, dy: int32) {.base.}
method initWH*(this: AllBinarySpriteRotationAnimationFactory, dx: int32, dy: int32) {.base.}
method getInstance*(this: AllBinarySpriteRotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method getInstanceAnimation*(this: AllBinarySpriteRotationAnimationFactory, animationInterface: Animation): Animation {.discardable.}
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation as AllBinarySpriteRotationAnimationModule
export AllBinarySpriteRotationAnimationModule
import org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation as AllBinaryAdjustedSpriteRotationAnimationModule
export AllBinaryAdjustedSpriteRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsAllBinarySpriteRotationAnimationFactory(this: AllBinarySpriteRotationAnimationFactory) =
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    discard

proc createWHDY*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.} =
        let spriteRotationAnimationFactory: AllBinarySpriteRotationAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (ashr(image.getHeight(), 2)), (ashr(image.getHeight(), 2)), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.initWH(dx, dy)
        return spriteRotationAnimationFactory

proc createWH*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.} =
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory)

proc createDXY*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.} =
        let spriteRotationAnimationFactory: AllBinarySpriteRotationAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory

proc createDXYQ*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.} =
        let spriteRotationAnimationFactory: AllBinarySpriteRotationAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (ashr(image.getHeight(), 2)), (ashr(image.getHeight(), 2)), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory

proc createQ*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.} =
        return newAllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (ashr(image.getHeight(), 2)), (ashr(image.getHeight(), 2)), 0, 0, animationBehaviorFactory)

proc createWHF*(t: typedesc[AllBinarySpriteRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory {.discardable.} =
        return newAllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)

proc initAllBinarySpriteRotationAnimationFactory*(this: AllBinarySpriteRotationAnimationFactory, image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        this.initFieldsAllBinarySpriteRotationAnimationFactory()
        if (jSame(animationBehaviorFactory, AnimationBehaviorFactory.getInstance())):
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)

proc newAllBinarySpriteRotationAnimationFactory*(image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinarySpriteRotationAnimationFactory =
    result = AllBinarySpriteRotationAnimationFactory()
    initAllBinarySpriteRotationAnimationFactory(result, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

method init*(this: AllBinarySpriteRotationAnimationFactory, dx: int32, dy: int32) {.base.} =
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy

method initWH*(this: AllBinarySpriteRotationAnimationFactory, dx: int32, dy: int32) {.base.} =
        this.init(dx, dy)
        this.animationFactoryInitializationVisitor.dx = this.animationFactoryInitializationVisitor.dx +% -this.animationFactoryInitializationVisitor.width div 5
        this.animationFactoryInitializationVisitor.dy = this.animationFactoryInitializationVisitor.dy +% -this.animationFactoryInitializationVisitor.height div 5

method getInstance*(this: AllBinarySpriteRotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let sprite: Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            return newAllBinaryAdjustedSpriteRotationAnimation(sprite, this.getImage(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newAllBinarySpriteRotationAnimation(sprite, this.getImage(), this.animationBehaviorFactory.getOrCreateInstance())

method getInstanceAnimation*(this: AllBinarySpriteRotationAnimationFactory, animationInterface: Animation): Animation {.discardable.} =
        return this.getInstance(0)

when declared(newAllBinarySpriteRotationAnimationFactoryHook7):
    newAllBinarySpriteRotationAnimationFactoryHook7 = proc (image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

