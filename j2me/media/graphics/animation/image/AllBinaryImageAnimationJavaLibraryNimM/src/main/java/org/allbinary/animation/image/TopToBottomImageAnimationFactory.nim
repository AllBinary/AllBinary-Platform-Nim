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
    TopToBottomImageAnimationFactory* = ref object of BaseImageAnimationFactory

proc newTopToBottomImageAnimationFactory*(image: Image, sequenceArray: JArray[int32], animationBehaviorFactory: AnimationBehaviorFactory): TopToBottomImageAnimationFactory
proc initTopToBottomImageAnimationFactory*(this: TopToBottomImageAnimationFactory, image: Image, sequenceArray: JArray[int32], animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: TopToBottomImageAnimationFactory, instanceId: int32): Animation {.discardable.}
import org/allbinary/animation/image/TopToBottomImageAnimation as TopToBottomImageAnimationModule
export TopToBottomImageAnimationModule


proc initTopToBottomImageAnimationFactory*(this: TopToBottomImageAnimationFactory, image: Image, sequenceArray: JArray[int32], animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, sequenceArray, image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory)

proc newTopToBottomImageAnimationFactory*(image: Image, sequenceArray: JArray[int32], animationBehaviorFactory: AnimationBehaviorFactory): TopToBottomImageAnimationFactory =
    result = TopToBottomImageAnimationFactory()
    initTopToBottomImageAnimationFactory(result, image, sequenceArray, animationBehaviorFactory)

method getInstance*(this: TopToBottomImageAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let scaledImage: Image = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return newTopToBottomImageAnimation(scaledImage, this.getSequenceArray(), this.animationBehaviorFactory.getOrCreateInstance())

when declared(newTopToBottomImageAnimationFactoryHook3):
    newTopToBottomImageAnimationFactoryHook3 = proc (image: Image, sequenceArray: JArray[int32], animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newTopToBottomImageAnimationFactory(image, sequenceArray, animationBehaviorFactory)

