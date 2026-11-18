#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
    ImageAnimationFactory* = ref object of BaseImageAnimationFactory

proc newImageAnimationFactory*(image: Image, width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): ImageAnimationFactory
proc initImageAnimationFactory*(this: ImageAnimationFactory, image: Image, width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createFactory*(t: typedesc[ImageAnimationFactory], image: Image): ImageAnimationFactory {.discardable.}
method getInstance*(this: ImageAnimationFactory, instanceId: int32): Animation {.discardable.}
import org/allbinary/graphics/opengles/OpenGLUtil as OpenGLUtilModule
export OpenGLUtilModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/animation/image/ImageAnimation as ImageAnimationModule
export ImageAnimationModule
import org/allbinary/animation/image/AdjustedImageAnimation as AdjustedImageAnimationModule
export AdjustedImageAnimationModule


proc createFactory*(t: typedesc[ImageAnimationFactory], image: Image): ImageAnimationFactory {.discardable.} =
        return newImageAnimationFactory(image, image.getWidth(), image.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance())

proc initImageAnimationFactory*(this: ImageAnimationFactory, image: Image, width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        initBaseImageAnimationFactory(this, image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)

proc newImageAnimationFactory*(image: Image, width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): ImageAnimationFactory =
    result = ImageAnimationFactory()
    initImageAnimationFactory(result, image, width, height, dx, dy, animationBehaviorFactory)

method getInstance*(this: ImageAnimationFactory, instanceId: int32): Animation {.discardable.} =
        var scaledImage: Image = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        let openGLUtil: OpenGLUtil = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        if this.animationFactoryInitializationVisitor.dx != 0 or this.animationFactoryInitializationVisitor.dy != 0:
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return newAdjustedImageAnimation(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            return newImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance())

when declared(newImageAnimationFactoryHook6):
    newImageAnimationFactoryHook6 = proc (image: Image, width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory = newImageAnimationFactory(image, width, height, dx, dy, animationBehaviorFactory)

