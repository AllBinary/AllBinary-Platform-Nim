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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/SingletonAnimationInterfaceFactory as SingletonAnimationInterfaceFactoryModule
export SingletonAnimationInterfaceFactoryModule

type
    ImageAnimationSingletonInterfaceFactory* = ref object of SingletonAnimationInterfaceFactory

proc newImageAnimationSingletonInterfaceFactory*(animationInterface: Animation, width: int32, height: int32): ImageAnimationSingletonInterfaceFactory
proc initImageAnimationSingletonInterfaceFactory*(this: ImageAnimationSingletonInterfaceFactory, animationInterface: Animation, width: int32, height: int32)
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/image/AnimationFrameToImageUtil as AnimationFrameToImageUtilModule
export AnimationFrameToImageUtilModule
import org/allbinary/animation/image/ImageAnimation as ImageAnimationModule
export ImageAnimationModule


proc initImageAnimationSingletonInterfaceFactory*(this: ImageAnimationSingletonInterfaceFactory, animationInterface: Animation, width: int32, height: int32) =
        initSingletonAnimationInterfaceFactory(this, newImageAnimation(AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, animationInterface), AnimationBehavior.getInstance()))

proc newImageAnimationSingletonInterfaceFactory*(animationInterface: Animation, width: int32, height: int32): ImageAnimationSingletonInterfaceFactory =
    result = ImageAnimationSingletonInterfaceFactory()
    initImageAnimationSingletonInterfaceFactory(result, animationInterface, width, height)

when declared(newImageAnimationSingletonInterfaceFactoryHook3):
    newImageAnimationSingletonInterfaceFactoryHook3 = proc (animationInterface: Animation, width: int32, height: int32): SingletonAnimationInterfaceFactory = newImageAnimationSingletonInterfaceFactory(animationInterface, width, height)

