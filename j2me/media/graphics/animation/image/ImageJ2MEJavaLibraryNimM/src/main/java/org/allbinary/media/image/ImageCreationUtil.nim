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
# package org.allbinary.media.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    ImageCreationUtil* = ref object of JObject

proc newImageCreationUtil*(): ImageCreationUtil
proc initImageCreationUtil*(this: ImageCreationUtil)
proc getInstance*(t: typedesc[ImageCreationUtil]): ImageCreationUtil {.discardable.}
method createImageWH*(this: ImageCreationUtil, width: int32, height: int32): Image {.base, discardable.}
method createImage*(this: ImageCreationUtil, width: int32, height: int32, maxScaleX: float32, maxScaleY: float32): Image {.base, discardable.}
import org/allbinary/image/GameFeatureImageCacheFactory as GameFeatureImageCacheFactoryModule
export GameFeatureImageCacheFactoryModule

var ImageCreationUtil_instanceValue: ImageCreationUtil
var ImageCreationUtil_instanceSet = false
proc instance*(t: typedesc[ImageCreationUtil]): ImageCreationUtil =
    if not ImageCreationUtil_instanceSet:
        ImageCreationUtil_instanceSet = true
        ImageCreationUtil_instanceValue = newImageCreationUtil()
    ImageCreationUtil_instanceValue

proc getInstance*(t: typedesc[ImageCreationUtil]): ImageCreationUtil {.discardable.} =
        return ImageCreationUtil.instance

proc initImageCreationUtil*(this: ImageCreationUtil) =
        discard
        discard

proc newImageCreationUtil*(): ImageCreationUtil =
    result = ImageCreationUtil()
    initImageCreationUtil(result)

method createImageWH*(this: ImageCreationUtil, width: int32, height: int32): Image {.base, discardable.} =
        let image: Image = GameFeatureImageCacheFactory.getInstance().get(jClassName(this), width, height)
        return image

method createImage*(this: ImageCreationUtil, width: int32, height: int32, maxScaleX: float32, maxScaleY: float32): Image {.base, discardable.} =
        let image: Image = GameFeatureImageCacheFactory.getInstance().get(jClassName(this), jToInt32(float64((float32(width) * maxScaleX))) +% 1, jToInt32(float64((float32(height) * maxScaleY))) +% 1)
        return image

