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
    ImageRotationAnimationFactory* = ref object of BaseImageAnimationFactory
        angleIncrement*: int16

proc newImageRotationAnimationFactory*(image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int16, animationBehaviorFactory: AnimationBehaviorFactory): ImageRotationAnimationFactory
proc initImageRotationAnimationFactory*(this: ImageRotationAnimationFactory, image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int16, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: ImageRotationAnimationFactory, instanceId: int32): Animation {.discardable.}
method getAngleIncrementP*(this: ImageRotationAnimationFactory): int16 {.base, discardable.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/animation/image/ImageBaseRotationAnimation as ImageBaseRotationAnimationModule
export ImageBaseRotationAnimationModule
import org/allbinary/animation/image/AdjustedImageBaseRotationAnimation as AdjustedImageBaseRotationAnimationModule
export AdjustedImageBaseRotationAnimationModule


# Java field initializers run after the base initializer
proc initFieldsImageRotationAnimationFactory(this: ImageRotationAnimationFactory) =
    
    discard

proc initImageRotationAnimationFactory*(this: ImageRotationAnimationFactory, image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int16, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        this.initFieldsImageRotationAnimationFactory()
        this.angleIncrement = angleIncrement
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy

proc newImageRotationAnimationFactory*(image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int16, animationBehaviorFactory: AnimationBehaviorFactory): ImageRotationAnimationFactory =
    result = ImageRotationAnimationFactory()
    initImageRotationAnimationFactory(result, image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)

method getInstance*(this: ImageRotationAnimationFactory, instanceId: int32): Animation {.discardable.} =
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return newAdjustedImageBaseRotationAnimation(this.getImage(), AngleInfo.getInstance(this.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newImageBaseRotationAnimation(this.getImage(), AngleInfo.getInstance(this.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance())

method getAngleIncrementP*(this: ImageRotationAnimationFactory): int16 {.base, discardable.} =
        return this.angleIncrement

when declared(newImageRotationAnimationFactoryHook7):
    newImageRotationAnimationFactoryHook7 = proc (image: Image, width: int32, height: int32, dx: int32, dy: int32, angleIncrement: int16, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newImageRotationAnimationFactory(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)

