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
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule

type
    ImageArrayRotationAnimationCacheableInterfaceFactory* = ref object of CacheableInterfaceFactoryInterface

proc newImageArrayRotationAnimationCacheableInterfaceFactory*(): ImageArrayRotationAnimationCacheableInterfaceFactory
method getInstance*(this: ImageArrayRotationAnimationCacheableInterfaceFactory, key: JObject): CacheableInterface {.discardable.}
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/image/ImageArrayRotationAnimationCacheable as ImageArrayRotationAnimationCacheableModule
export ImageArrayRotationAnimationCacheableModule


proc initImageArrayRotationAnimationCacheableInterfaceFactory*(this: ImageArrayRotationAnimationCacheableInterfaceFactory) =
    discard

proc newImageArrayRotationAnimationCacheableInterfaceFactory*(): ImageArrayRotationAnimationCacheableInterfaceFactory =
    result = ImageArrayRotationAnimationCacheableInterfaceFactory()
    initImageArrayRotationAnimationCacheableInterfaceFactory(result)

method getInstance*(this: ImageArrayRotationAnimationCacheableInterfaceFactory, key: JObject): CacheableInterface {.discardable.} =
        return newImageArrayRotationAnimationCacheable(key, AnimationBehavior.getInstance())

