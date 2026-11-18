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
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

#TWB - Adjustments should be done in the resource creation and not at the animation level
type
    PooledImageArrayRotationAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        allBinaryImageRotationAnimationInfo*: JObject
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newPooledImageArrayRotationAnimationFactory*(image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory): PooledImageArrayRotationAnimationFactory
proc initPooledImageArrayRotationAnimationFactory*(this: PooledImageArrayRotationAnimationFactory, image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createFactory*(t: typedesc[PooledImageArrayRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): PooledImageArrayRotationAnimationFactory {.discardable.}
proc createDXY*(t: typedesc[PooledImageArrayRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): PooledImageArrayRotationAnimationFactory {.discardable.}
method getInstance*(this: PooledImageArrayRotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method setInitialScale*(this: PooledImageArrayRotationAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/media/image/ImageToRotationImageArrayUtil as ImageToRotationImageArrayUtilModule
export ImageToRotationImageArrayUtilModule
import org/allbinary/animation/image/ImageArrayRotationAnimationInfo as ImageArrayRotationAnimationInfoModule
export ImageArrayRotationAnimationInfoModule
import org/allbinary/animation/image/AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimationModule
export AdjustedImageArrayRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsPooledImageArrayRotationAnimationFactory(this: PooledImageArrayRotationAnimationFactory) =
    this.allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT
    
    discard

proc createFactory*(t: typedesc[PooledImageArrayRotationAnimationFactory], image: Image, animationBehaviorFactory: AnimationBehaviorFactory): PooledImageArrayRotationAnimationFactory {.discardable.} =
        let totalAngle: int32 = int32(AngleFactory.getInstance().TOTAL_ANGLE)
        let angleIncrement: int32 = (totalAngle div GameConfigurationCentral.getInstance().getGameControlFidelity())
        return newPooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), -(ashr(image.getWidth(), 2)), -(ashr(image.getHeight(), 2)), angleIncrement, animationBehaviorFactory)

proc createDXY*(t: typedesc[PooledImageArrayRotationAnimationFactory], image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): PooledImageArrayRotationAnimationFactory {.discardable.} =
        let totalAngle: int32 = int32(AngleFactory.getInstance().TOTAL_ANGLE)
        let angleIncrement: int32 = (totalAngle div GameConfigurationCentral.getInstance().getGameControlFidelity())
        return newPooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory)

proc initPooledImageArrayRotationAnimationFactory*(this: PooledImageArrayRotationAnimationFactory, image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsPooledImageArrayRotationAnimationFactory()
        this.animationBehaviorFactory = animationBehaviorFactory
        let totalAngle: int32 = int32(AngleFactory.getInstance().TOTAL_ANGLE)
        let imageArray: JArray[Image] = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle)
        this.allBinaryImageRotationAnimationInfo = newImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy)

proc newPooledImageArrayRotationAnimationFactory*(image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int32, animationBehaviorFactory: AnimationBehaviorFactory): PooledImageArrayRotationAnimationFactory =
    result = PooledImageArrayRotationAnimationFactory()
    initPooledImageArrayRotationAnimationFactory(result, image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)

method getInstance*(this: PooledImageArrayRotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(this.allBinaryImageRotationAnimationInfo, this.animationBehaviorFactory.getOrCreateInstance())

method setInitialScale*(this: PooledImageArrayRotationAnimationFactory, scaleProperties: ScaleProperties) =
        discard

