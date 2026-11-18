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
# package org.allbinary.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule

type
    AnimationFrameToImageUtil* = ref object of JObject

proc newAnimationFrameToImageUtil*(): AnimationFrameToImageUtil
proc getInstance*(t: typedesc[AnimationFrameToImageUtil]): AnimationFrameToImageUtil {.discardable.}
method getInstanceTranslate*(this: AnimationFrameToImageUtil, width: int32, height: int32, animationInterface: Animation): Image {.base, discardable.}
method getInstanceWH*(this: AnimationFrameToImageUtil, width: int32, height: int32, animationInterface: Animation): Image {.base, discardable.}
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/image/GameFeatureImageCacheFactory as GameFeatureImageCacheFactoryModule
export GameFeatureImageCacheFactoryModule

var AnimationFrameToImageUtil_instanceValue: AnimationFrameToImageUtil
var AnimationFrameToImageUtil_instanceSet = false
proc instance*(t: typedesc[AnimationFrameToImageUtil]): AnimationFrameToImageUtil =
    if not AnimationFrameToImageUtil_instanceSet:
        AnimationFrameToImageUtil_instanceSet = true
        AnimationFrameToImageUtil_instanceValue = newAnimationFrameToImageUtil()
    AnimationFrameToImageUtil_instanceValue

proc initAnimationFrameToImageUtil*(this: AnimationFrameToImageUtil) =
    discard

proc newAnimationFrameToImageUtil*(): AnimationFrameToImageUtil =
    result = AnimationFrameToImageUtil()
    initAnimationFrameToImageUtil(result)

proc getInstance*(t: typedesc[AnimationFrameToImageUtil]): AnimationFrameToImageUtil {.discardable.} =
        return AnimationFrameToImageUtil.instance

method getInstanceTranslate*(this: AnimationFrameToImageUtil, width: int32, height: int32, animationInterface: Animation): Image {.base, discardable.} =
        var image: Image = GameFeatureImageCacheFactory.getInstance().get(jClassName(AnimationFrameToImageUtil.instance), (ashr((width *% 3), 1)), (ashr((height *% 3), 1)))
        var graphics: Graphics = image.getGraphics()
        var tranlateX: int32 = (ashr(width, 2))
        var tranlateY: int32 = (ashr(height, 2))
        graphics.translate(tranlateX, tranlateY)
        animationInterface.paintXY(graphics, 0, 0)
        graphics.translate(-tranlateX, -tranlateY)
        return image

method getInstanceWH*(this: AnimationFrameToImageUtil, width: int32, height: int32, animationInterface: Animation): Image {.base, discardable.} =
        var image: Image = GameFeatureImageCacheFactory.getInstance().get(jClassName(AnimationFrameToImageUtil.instance), width, height)
        var graphics: Graphics = image.getGraphics()
        animationInterface.paintXY(graphics, 0, 0)
        return image

