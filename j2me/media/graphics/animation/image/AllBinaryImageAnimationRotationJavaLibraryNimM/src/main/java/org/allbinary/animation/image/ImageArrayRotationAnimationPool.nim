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
import org/allbinary/logic/util/cache/BasicArrayListResetablePool as BasicArrayListResetablePoolModule
export BasicArrayListResetablePoolModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule
import org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface as CacheableInterfaceFactoryInterfaceModule
export CacheableInterfaceFactoryInterfaceModule
import org/allbinary/logic/util/cache/PoolInterface as PoolInterfaceModule
export PoolInterfaceModule

type
    ImageArrayRotationAnimationPool* = ref object of BasicArrayListResetablePool

proc newImageArrayRotationAnimationPool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): ImageArrayRotationAnimationPool
proc initImageArrayRotationAnimationPool*(this: ImageArrayRotationAnimationPool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface)
proc getInstance*(t: typedesc[ImageArrayRotationAnimationPool]): PoolInterface {.discardable.}
method remove*(this: ImageArrayRotationAnimationPool, key: JObject): CacheableInterface {.discardable.}
import org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory as ImageArrayRotationAnimationCacheableInterfaceFactoryModule
export ImageArrayRotationAnimationCacheableInterfaceFactoryModule
import org/allbinary/animation/image/ImageArrayRotationAnimationInfo as ImageArrayRotationAnimationInfoModule
export ImageArrayRotationAnimationInfoModule
import org/allbinary/animation/image/ImageArrayRotationAnimationCacheable as ImageArrayRotationAnimationCacheableModule
export ImageArrayRotationAnimationCacheableModule

var ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue: PoolInterface
var ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet = false
proc IMAGE_ROTATION_ANIMATION_POOL*(t: typedesc[ImageArrayRotationAnimationPool]): PoolInterface =
    if not ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet:
        ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet = true
        ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue = newImageArrayRotationAnimationPool(newImageArrayRotationAnimationCacheableInterfaceFactory())
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue
proc `IMAGE_ROTATION_ANIMATION_POOL=`*(t: typedesc[ImageArrayRotationAnimationPool], value: PoolInterface) =
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet = true
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue = value

proc initImageArrayRotationAnimationPool*(this: ImageArrayRotationAnimationPool, cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface) =
        initBasicArrayListResetablePool(this, cacheableInterfaceFactoryInterface)

proc newImageArrayRotationAnimationPool*(cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): ImageArrayRotationAnimationPool =
    result = ImageArrayRotationAnimationPool()
    initImageArrayRotationAnimationPool(result, cacheableInterfaceFactoryInterface)

proc getInstance*(t: typedesc[ImageArrayRotationAnimationPool]): PoolInterface {.discardable.} =
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL

method remove*(this: ImageArrayRotationAnimationPool, key: JObject): CacheableInterface {.discardable.} =
        let cacheableInterface: CacheableInterface = procCall BasicArrayListResetablePool(this).remove(key)
        let allBinaryImageRotationAnimationInfo: ImageArrayRotationAnimationInfo = ImageArrayRotationAnimationInfo(JObject(key))
        let imageArrayRotationAnimationCacheable: ImageArrayRotationAnimationCacheable = (ImageArrayRotationAnimationCacheable(JObject(cacheableInterface)))
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray())
        return cacheableInterface

when declared(newImageArrayRotationAnimationPoolHook1):
    newImageArrayRotationAnimationPoolHook1 = proc (cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface): BasicArrayListResetablePool = newImageArrayRotationAnimationPool(cacheableInterfaceFactoryInterface)

