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
    LeftToRightImageAnimationFactory* = ref object of BaseImageAnimationFactory

proc newLeftToRightImageAnimationFactory*(image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): LeftToRightImageAnimationFactory
proc initLeftToRightImageAnimationFactory*(this: LeftToRightImageAnimationFactory, image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: LeftToRightImageAnimationFactory, instanceId: int32): Animation {.discardable.}
import org/allbinary/animation/image/LeftToRightImageAnimation as LeftToRightImageAnimationModule
export LeftToRightImageAnimationModule
import org/allbinary/animation/image/AdjustedLeftToRightImageAnimation as AdjustedLeftToRightImageAnimationModule
export AdjustedLeftToRightImageAnimationModule


proc initLeftToRightImageAnimationFactory*(this: LeftToRightImageAnimationFactory, image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, sequenceArray, image.getWidth(), image.getHeight(), dx, dy, animationBehaviorFactory)

proc newLeftToRightImageAnimationFactory*(image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): LeftToRightImageAnimationFactory =
    result = LeftToRightImageAnimationFactory()
    initLeftToRightImageAnimationFactory(result, image, sequenceArray, dx, dy, animationBehaviorFactory)

method getInstance*(this: LeftToRightImageAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let scaledImage: Image = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return newAdjustedLeftToRightImageAnimation(scaledImage, this.getSequenceArray(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newLeftToRightImageAnimation(scaledImage, this.getSequenceArray(), this.animationBehaviorFactory.getOrCreateInstance())

when declared(newLeftToRightImageAnimationFactoryHook5):
    newLeftToRightImageAnimationFactoryHook5 = proc (image: Image, sequenceArray: JArray[int32], dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newLeftToRightImageAnimationFactory(image, sequenceArray, dx, dy, animationBehaviorFactory)

