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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule
import org/allbinary/vector/VectorInfo as VectorInfoModule
export VectorInfoModule
import org/allbinary/animation/image/BaseImageAnimationFactory as BaseImageAnimationFactoryModule
export BaseImageAnimationFactoryModule

type
    VectorToImageArrayRotationAnimationFactory* = ref object of BaseImageAnimationFactory
        imageArray*: JArray[Image]
        angleIncrement*: int32

proc newVectorToImageArrayRotationAnimationFactory*(vectorInfo: VectorInfo, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorToImageArrayRotationAnimationFactory
proc initVectorToImageArrayRotationAnimationFactory*(this: VectorToImageArrayRotationAnimationFactory, vectorInfo: VectorInfo, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory)
method init*(this: VectorToImageArrayRotationAnimationFactory) {.base.}
method getInstance*(this: VectorToImageArrayRotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method getAngleIncrement*(this: VectorToImageArrayRotationAnimationFactory): int32 {.base, discardable.}
method setInitialScale*(this: VectorToImageArrayRotationAnimationFactory, scaleProperties: ScaleProperties)
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/image/AnimationFrameToImageUtil as AnimationFrameToImageUtilModule
export AnimationFrameToImageUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/media/image/ImageToRotationImageArrayUtil as ImageToRotationImageArrayUtilModule
export ImageToRotationImageArrayUtilModule
import org/allbinary/animation/image/AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimationModule
export AdjustedImageArrayRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsVectorToImageArrayRotationAnimationFactory(this: VectorToImageArrayRotationAnimationFactory) =
    this.imageArray = NullImage.NULL_IMAGE_ARRAY
    this.angleIncrement = 0
    discard

proc initVectorToImageArrayRotationAnimationFactory*(this: VectorToImageArrayRotationAnimationFactory, vectorInfo: VectorInfo, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        this.initFieldsVectorToImageArrayRotationAnimationFactory()
        this.init()

proc newVectorToImageArrayRotationAnimationFactory*(vectorInfo: VectorInfo, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): VectorToImageArrayRotationAnimationFactory =
    result = VectorToImageArrayRotationAnimationFactory()
    initVectorToImageArrayRotationAnimationFactory(result, vectorInfo, basicColor, animationBehaviorFactory)

method init*(this: VectorToImageArrayRotationAnimationFactory) {.base.} =
        let angleFactory: AngleFactory = AngleFactory.getInstance()
        this.angleIncrement = int32(angleFactory.TOTAL_ANGLE) div GameConfigurationCentral.getInstance().getGameControlFidelity()
        this.imageArray = ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), int32(angleFactory.TOTAL_ANGLE))

method getInstance*(this: VectorToImageArrayRotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            return newAdjustedImageArrayRotationAnimation(this.imageArray, AngleInfo.getInstance(jToInt16(this.getAngleIncrement())), int32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return AdjustedImageArrayRotationAnimation.createAnimation(this.imageArray, AngleInfo.getInstance(jToInt16(this.angleIncrement)), int32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationBehaviorFactory.getOrCreateInstance())

method getAngleIncrement*(this: VectorToImageArrayRotationAnimationFactory): int32 {.base, discardable.} =
        return this.angleIncrement

method setInitialScale*(this: VectorToImageArrayRotationAnimationFactory, scaleProperties: ScaleProperties) =
        discard

when declared(newVectorToImageArrayRotationAnimationFactoryHook3):
    newVectorToImageArrayRotationAnimationFactoryHook3 = proc (vectorInfo: VectorInfo, basicColor: BasicColor, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newVectorToImageArrayRotationAnimationFactory(vectorInfo, basicColor, animationBehaviorFactory)

