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
    RightToLeftImageAnimationFactory* = ref object of BaseImageAnimationFactory

proc newRightToLeftImageAnimationFactory*(image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): RightToLeftImageAnimationFactory
proc initRightToLeftImageAnimationFactory*(this: RightToLeftImageAnimationFactory, image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: RightToLeftImageAnimationFactory, instanceId: int32): Animation {.discardable.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/RightToLeftImageAnimation as RightToLeftImageAnimationModule
export RightToLeftImageAnimationModule
import org/allbinary/animation/image/AdjustedRightToLeftImageAnimation as AdjustedRightToLeftImageAnimationModule
export AdjustedRightToLeftImageAnimationModule


proc initRightToLeftImageAnimationFactory*(this: RightToLeftImageAnimationFactory, image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, PrimitiveIntUtil.getArrayInstance(), image.getWidth(), image.getHeight(), dx, dy, animationBehaviorFactory)

proc newRightToLeftImageAnimationFactory*(image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): RightToLeftImageAnimationFactory =
    result = RightToLeftImageAnimationFactory()
    initRightToLeftImageAnimationFactory(result, image, dx, dy, animationBehaviorFactory)

method getInstance*(this: RightToLeftImageAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let scaledImage: Image = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return newAdjustedRightToLeftImageAnimation(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newRightToLeftImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance())

when declared(newRightToLeftImageAnimationFactoryHook4):
    newRightToLeftImageAnimationFactoryHook4 = proc (image: Image, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newRightToLeftImageAnimationFactory(image, dx, dy, animationBehaviorFactory)

