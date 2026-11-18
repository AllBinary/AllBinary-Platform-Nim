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
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/image/BaseImageAnimationFactory as BaseImageAnimationFactoryModule
export BaseImageAnimationFactoryModule

type
    AllBinaryArrayImageRotationAnimationFactory* = ref object of BaseImageAnimationFactory
        imageArray*: JArray[Image]
        angleIncrement*: int32

proc newAllBinaryArrayImageRotationAnimationFactory*(image: Image, width: int32, height: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinaryArrayImageRotationAnimationFactory
proc initAllBinaryArrayImageRotationAnimationFactory*(this: AllBinaryArrayImageRotationAnimationFactory, image: Image, width: int32, height: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createFactory*(t: typedesc[AllBinaryArrayImageRotationAnimationFactory], image: Image, dx: int32, dy: int32): AllBinaryArrayImageRotationAnimationFactory {.discardable.}
proc createFactoryA*(t: typedesc[AllBinaryArrayImageRotationAnimationFactory], image: Image, dx: int32, dy: int32, angleIncrement: int32): AllBinaryArrayImageRotationAnimationFactory {.discardable.}
method init*(this: AllBinaryArrayImageRotationAnimationFactory) {.base.}
method initDXY*(this: AllBinaryArrayImageRotationAnimationFactory, dx: int32, dy: int32) {.base.}
method getInstance*(this: AllBinaryArrayImageRotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method setImageArray*(this: AllBinaryArrayImageRotationAnimationFactory, imageArray: JArray[Image]) {.base.}
method getAngleIncrement*(this: AllBinaryArrayImageRotationAnimationFactory): int32 {.base, discardable.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/media/image/ImageToRotationImageArrayUtil as ImageToRotationImageArrayUtilModule
export ImageToRotationImageArrayUtilModule
import org/allbinary/animation/image/ImageArrayRotationAnimation as ImageArrayRotationAnimationModule
export ImageArrayRotationAnimationModule
import org/allbinary/animation/image/AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimationModule
export AdjustedImageArrayRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsAllBinaryArrayImageRotationAnimationFactory(this: AllBinaryArrayImageRotationAnimationFactory) =
    this.imageArray = NullImage.NULL_IMAGE_ARRAY
    
    discard

proc createFactory*(t: typedesc[AllBinaryArrayImageRotationAnimationFactory], image: Image, dx: int32, dy: int32): AllBinaryArrayImageRotationAnimationFactory {.discardable.} =
        let arrayImageRotationAnimationFactory: AllBinaryArrayImageRotationAnimationFactory = newAllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), int32(AngleFactory.getInstance().TOTAL_ANGLE) div GameConfigurationCentral.getInstance().getGameControlFidelity(), AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory

proc createFactoryA*(t: typedesc[AllBinaryArrayImageRotationAnimationFactory], image: Image, dx: int32, dy: int32, angleIncrement: int32): AllBinaryArrayImageRotationAnimationFactory {.discardable.} =
        let arrayImageRotationAnimationFactory: AllBinaryArrayImageRotationAnimationFactory = newAllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory

proc initAllBinaryArrayImageRotationAnimationFactory*(this: AllBinaryArrayImageRotationAnimationFactory, image: Image, width: int32, height: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        this.initFieldsAllBinaryArrayImageRotationAnimationFactory()
        this.angleIncrement = angleIncrement
        this.init()

proc newAllBinaryArrayImageRotationAnimationFactory*(image: Image, width: int32, height: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory): AllBinaryArrayImageRotationAnimationFactory =
    result = AllBinaryArrayImageRotationAnimationFactory()
    initAllBinaryArrayImageRotationAnimationFactory(result, image, width, height, angleIncrement, animationBehaviorFactory)

method init*(this: AllBinaryArrayImageRotationAnimationFactory) {.base.} =
        this.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), int32(AngleFactory.getInstance().TOTAL_ANGLE)))

method initDXY*(this: AllBinaryArrayImageRotationAnimationFactory, dx: int32, dy: int32) {.base.} =
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        this.animationFactoryInitializationVisitor.originalDx = dx
        this.animationFactoryInitializationVisitor.originalDy = dy

method getInstance*(this: AllBinaryArrayImageRotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let scaledImageArray: JArray[Image] = newJArray[Image](this.imageArray.length, default(Image))
        let size: int32 = scaledImageArray.length
        let image: Image = this.getImage()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                scaledImageArray[index] = this.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return newAdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance(jToInt16(this.getAngleIncrement())), int32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance(jToInt16(this.getAngleIncrement())), int32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationBehaviorFactory.getOrCreateInstance())

method setImageArray*(this: AllBinaryArrayImageRotationAnimationFactory, imageArray: JArray[Image]) {.base.} =
        this.imageArray = imageArray

method getAngleIncrement*(this: AllBinaryArrayImageRotationAnimationFactory): int32 {.base, discardable.} =
        return this.angleIncrement

when declared(newAllBinaryArrayImageRotationAnimationFactoryHook5):
    newAllBinaryArrayImageRotationAnimationFactoryHook5 = proc (image: Image, width: int32, height: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newAllBinaryArrayImageRotationAnimationFactory(image, width, height, angleIncrement, animationBehaviorFactory)

