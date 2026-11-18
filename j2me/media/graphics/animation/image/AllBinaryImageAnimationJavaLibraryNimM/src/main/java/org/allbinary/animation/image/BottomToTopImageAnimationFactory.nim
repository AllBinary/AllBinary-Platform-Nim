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
    BottomToTopImageAnimationFactory* = ref object of BaseImageAnimationFactory

proc newBottomToTopImageAnimationFactory*(image: Image, animationBehaviorFactory: AnimationBehaviorFactory): BottomToTopImageAnimationFactory
proc initBottomToTopImageAnimationFactory*(this: BottomToTopImageAnimationFactory, image: Image, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: BottomToTopImageAnimationFactory, instanceId: int32): Animation {.discardable.}
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/BottomToTopImageAnimation as BottomToTopImageAnimationModule
export BottomToTopImageAnimationModule


proc initBottomToTopImageAnimationFactory*(this: BottomToTopImageAnimationFactory, image: Image, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, PrimitiveIntUtil.getArrayInstance(), image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory)

proc newBottomToTopImageAnimationFactory*(image: Image, animationBehaviorFactory: AnimationBehaviorFactory): BottomToTopImageAnimationFactory =
    result = BottomToTopImageAnimationFactory()
    initBottomToTopImageAnimationFactory(result, image, animationBehaviorFactory)

method getInstance*(this: BottomToTopImageAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let scaledImage: Image = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return newBottomToTopImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance())

when declared(newBottomToTopImageAnimationFactoryHook2):
    newBottomToTopImageAnimationFactoryHook2 = proc (image: Image, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newBottomToTopImageAnimationFactory(image, animationBehaviorFactory)

