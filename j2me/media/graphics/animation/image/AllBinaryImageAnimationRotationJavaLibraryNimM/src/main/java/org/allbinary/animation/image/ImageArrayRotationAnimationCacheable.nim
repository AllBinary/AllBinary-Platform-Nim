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
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/logic/util/cache/CacheableInterface as CacheableInterfaceModule
export CacheableInterfaceModule
import org/allbinary/animation/image/AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimationModule
export AdjustedImageArrayRotationAnimationModule

type
    ImageArrayRotationAnimationCacheable* = ref object of AdjustedImageArrayRotationAnimation

converter jAsCacheableInterface*(value: ImageArrayRotationAnimationCacheable): CacheableInterface = cast[CacheableInterface](value)
proc newImageArrayRotationAnimationCacheable*(anyType: JObject, animationBehavior: AnimationBehavior): ImageArrayRotationAnimationCacheable
proc initImageArrayRotationAnimationCacheable*(this: ImageArrayRotationAnimationCacheable, anyType: JObject, animationBehavior: AnimationBehavior)
method getKey*(this: ImageArrayRotationAnimationCacheable): JObject {.discardable.}
method toString*(this: ImageArrayRotationAnimationCacheable): string {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/animation/image/ImageArrayRotationAnimationInfo as ImageArrayRotationAnimationInfoModule
export ImageArrayRotationAnimationInfoModule


proc initImageArrayRotationAnimationCacheable*(this: ImageArrayRotationAnimationCacheable, anyType: JObject, animationBehavior: AnimationBehavior) =
        initAdjustedImageArrayRotationAnimation(this, (ImageArrayRotationAnimationInfo(JObject(anyType))).getImageArray(), (ImageArrayRotationAnimationInfo(JObject(anyType))).getAngleInfoP(), (ImageArrayRotationAnimationInfo(JObject(anyType))).getTotalAngle(), (ImageArrayRotationAnimationInfo(JObject(anyType))).getDx(), (ImageArrayRotationAnimationInfo(JObject(anyType))).getDy(), animationBehavior)

proc newImageArrayRotationAnimationCacheable*(anyType: JObject, animationBehavior: AnimationBehavior): ImageArrayRotationAnimationCacheable =
    result = ImageArrayRotationAnimationCacheable()
    initImageArrayRotationAnimationCacheable(result, anyType, animationBehavior)

method getKey*(this: ImageArrayRotationAnimationCacheable): JObject {.discardable.} =
        return NullUtil.getInstance().NULL_OBJECT

method toString*(this: ImageArrayRotationAnimationCacheable): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

when declared(newImageArrayRotationAnimationCacheableHook2):
    newImageArrayRotationAnimationCacheableHook2 = proc (anyType: JObject, animationBehavior: AnimationBehavior): AdjustedImageArrayRotationAnimation = newImageArrayRotationAnimationCacheable(anyType, animationBehavior)

