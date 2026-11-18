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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory as TouchButtonResourceAnimationInterfaceFactoryInterfaceFactoryModule
export TouchButtonResourceAnimationInterfaceFactoryInterfaceFactoryModule

type
    TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory* = ref object of TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

proc newTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory*(): TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
proc initTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory*(this: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)
method init*(this: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory, level: int32)
method isFeature*(this: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/image/opengles/OpenGLImageCacheFactory as OpenGLImageCacheFactoryModule
export OpenGLImageCacheFactoryModule


proc initTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory*(this: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory) =
        initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(this, "OpenGL TouchButton Animations")

proc newTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory*(): TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory =
    result = TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory()
    initTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory(result)

method init*(this: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory, level: int32) =
        procCall TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(this).initImageCache(OpenGLImageCacheFactory.getInstance(), level)

method isFeature*(this: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.} =
        if Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL):
            return true
        else:
            return false

when declared(newTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactoryHook0):
    newTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactoryHook0 = proc (): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = newTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory()

