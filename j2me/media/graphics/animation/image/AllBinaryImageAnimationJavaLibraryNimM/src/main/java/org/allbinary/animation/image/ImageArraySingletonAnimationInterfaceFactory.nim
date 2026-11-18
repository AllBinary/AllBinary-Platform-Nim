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
import org/allbinary/animation/SingletonAnimationInterfaceFactory as SingletonAnimationInterfaceFactoryModule
export SingletonAnimationInterfaceFactoryModule

type
    ImageArraySingletonAnimationInterfaceFactory* = ref object of SingletonAnimationInterfaceFactory

proc newImageArraySingletonAnimationInterfaceFactory*(imageArray: JArray[Image]): ImageArraySingletonAnimationInterfaceFactory
proc initImageArraySingletonAnimationInterfaceFactory*(this: ImageArraySingletonAnimationInterfaceFactory, imageArray: JArray[Image])
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/image/ImageArrayAnimation as ImageArrayAnimationModule
export ImageArrayAnimationModule


proc initImageArraySingletonAnimationInterfaceFactory*(this: ImageArraySingletonAnimationInterfaceFactory, imageArray: JArray[Image]) =
        initSingletonAnimationInterfaceFactory(this, newImageArrayAnimation(imageArray, AnimationBehavior.getInstance()))

proc newImageArraySingletonAnimationInterfaceFactory*(imageArray: JArray[Image]): ImageArraySingletonAnimationInterfaceFactory =
    result = ImageArraySingletonAnimationInterfaceFactory()
    initImageArraySingletonAnimationInterfaceFactory(result, imageArray)

when declared(newImageArraySingletonAnimationInterfaceFactoryHook1):
    newImageArraySingletonAnimationInterfaceFactoryHook1 = proc (imageArray: JArray[Image]): SingletonAnimationInterfaceFactory = newImageArraySingletonAnimationInterfaceFactory(imageArray)

