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
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule

type
    ImageScaleUtil* = ref object of JObject

proc newImageScaleUtil*(): ImageScaleUtil
proc initImageScaleUtil*(this: ImageScaleUtil)
proc getInstance*(t: typedesc[ImageScaleUtil]): ImageScaleUtil {.discardable.}
method createImage2*(this: ImageScaleUtil, imageCache: ImageCache, originalImage: Image, scaleNominatorX: float32, scaleDenominatorX: float32, scaleNominatorY: float32, scaleDenominatorY: float32, cached: bool): Image {.base, discardable.}
method createImage3*(this: ImageScaleUtil, imageCache: ImageCache, originalImage: Image, scaleNominatorX: float32, scaleDenominatorX: float32, scaleNominatorY: float32, scaleDenominatorY: float32, cached: bool, mutable: bool): Image {.base, discardable.}

var ImageScaleUtil_instanceValue: ImageScaleUtil
var ImageScaleUtil_instanceSet = false
proc instance*(t: typedesc[ImageScaleUtil]): ImageScaleUtil =
    if not ImageScaleUtil_instanceSet:
        ImageScaleUtil_instanceSet = true
        ImageScaleUtil_instanceValue = newImageScaleUtil()
    ImageScaleUtil_instanceValue

proc getInstance*(t: typedesc[ImageScaleUtil]): ImageScaleUtil {.discardable.} =
        return ImageScaleUtil.instance

proc initImageScaleUtil*(this: ImageScaleUtil) =
        discard
        discard

proc newImageScaleUtil*(): ImageScaleUtil =
    result = ImageScaleUtil()
    initImageScaleUtil(result)

method createImage2*(this: ImageScaleUtil, imageCache: ImageCache, originalImage: Image, scaleNominatorX: float32, scaleDenominatorX: float32, scaleNominatorY: float32, scaleDenominatorY: float32, cached: bool): Image {.base, discardable.} =
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)

method createImage3*(this: ImageScaleUtil, imageCache: ImageCache, originalImage: Image, scaleNominatorX: float32, scaleDenominatorX: float32, scaleNominatorY: float32, scaleDenominatorY: float32, cached: bool, mutable: bool): Image {.base, discardable.} =
        return originalImage

