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

type
    ImageArrayAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        dx*: int32
        dy*: int32
        imageArray*: JArray[Image]
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newImageArrayAnimationFactory*(imageArray: JArray[Image], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): ImageArrayAnimationFactory
proc initImageArrayAnimationFactory*(this: ImageArrayAnimationFactory, imageArray: JArray[Image], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: ImageArrayAnimationFactory, instanceId: int32): Animation {.discardable.}
method setInitialScale*(this: ImageArrayAnimationFactory, scaleProperties: ScaleProperties)
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/image/ImageArrayAnimation as ImageArrayAnimationModule
export ImageArrayAnimationModule
import org/allbinary/animation/image/AdjustedImageArrayAnimation as AdjustedImageArrayAnimationModule
export AdjustedImageArrayAnimationModule


# Java field initializers run after the base initializer
proc initFieldsImageArrayAnimationFactory(this: ImageArrayAnimationFactory) =
    this.dx = 0
    this.dy = 0
    
    
    discard

proc initImageArrayAnimationFactory*(this: ImageArrayAnimationFactory, imageArray: JArray[Image], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsImageArrayAnimationFactory()
        this.imageArray = imageArray
        this.animationBehaviorFactory = animationBehaviorFactory
        this.dx = dx
        this.dy = dy

proc newImageArrayAnimationFactory*(imageArray: JArray[Image], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): ImageArrayAnimationFactory =
    result = ImageArrayAnimationFactory()
    initImageArrayAnimationFactory(result, imageArray, dx, dy, animationBehaviorFactory)

method getInstance*(this: ImageArrayAnimationFactory, instanceId: int32): Animation {.discardable.} =
        if this.dx != 0 or this.dy != 0:
            return newAdjustedImageArrayAnimation(this.imageArray, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newImageArrayAnimation(this.imageArray, AnimationBehavior.getInstance())

method setInitialScale*(this: ImageArrayAnimationFactory, scaleProperties: ScaleProperties) =
        discard

