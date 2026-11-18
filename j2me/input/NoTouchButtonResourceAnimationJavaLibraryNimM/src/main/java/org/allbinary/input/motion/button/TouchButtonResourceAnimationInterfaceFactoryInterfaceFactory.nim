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
import org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory as BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
export BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule

type
    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory* = ref object of BaseResourceAnimationInterfaceFactoryInterfaceFactory

proc newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(name: string): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
proc initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, name: string)
proc createFactory*(t: typedesc[TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory]): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {.discardable.}
method init*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32)
method initImageCache*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, imageCache: ImageCache, level: int32)
method isLoadingLevel*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32): bool {.discardable.}
method isFeature*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/image/ImageCacheFactory as ImageCacheFactoryModule
export ImageCacheFactoryModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule


proc createFactory*(t: typedesc[TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory]): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {.discardable.} =
        return newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations")

proc initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, name: string) =
        initBaseResourceAnimationInterfaceFactoryInterfaceFactory(this, name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())

proc newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(name: string): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory =
    result = TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory()
    initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(result, name)

method init*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32) =
        this.initImageCache(ImageCacheFactory.getInstance(), level)

method initImageCache*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, imageCache: ImageCache, level: int32) =
        if this.isInitialized():
            return
        procCall BaseResourceAnimationInterfaceFactoryInterfaceFactory(this).init(level)

method isLoadingLevel*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32): bool {.discardable.} =
        var resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel():
            return true
        else:
            return procCall BaseResourceAnimationInterfaceFactoryInterfaceFactory(this).isLoadingLevel(level)

method isFeature*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.} =
        if (not Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)):
            return true
        else:
            return false

when declared(newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactoryHook1):
    newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactoryHook1 = proc (name: string): BaseResourceAnimationInterfaceFactoryInterfaceFactory = newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(name)

