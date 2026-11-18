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
    ImageToRotationImageArrayUtil* = ref object of JObject

proc newImageToRotationImageArrayUtil*(): ImageToRotationImageArrayUtil
proc initImageToRotationImageArrayUtil*(this: ImageToRotationImageArrayUtil)
proc getInstance*(t: typedesc[ImageToRotationImageArrayUtil]): ImageToRotationImageArrayUtil {.discardable.}
method generate*(this: ImageToRotationImageArrayUtil, image: Image, angleIncrement: int32, totalAngle: int32): JArray[Image] {.base, discardable.}
import org/allbinary/media/image/ImageRotationUtil as ImageRotationUtilModule
export ImageRotationUtilModule

var ImageToRotationImageArrayUtil_instanceValue: ImageToRotationImageArrayUtil
var ImageToRotationImageArrayUtil_instanceSet = false
proc instance*(t: typedesc[ImageToRotationImageArrayUtil]): ImageToRotationImageArrayUtil =
    if not ImageToRotationImageArrayUtil_instanceSet:
        ImageToRotationImageArrayUtil_instanceSet = true
        ImageToRotationImageArrayUtil_instanceValue = newImageToRotationImageArrayUtil()
    ImageToRotationImageArrayUtil_instanceValue

proc getInstance*(t: typedesc[ImageToRotationImageArrayUtil]): ImageToRotationImageArrayUtil {.discardable.} =
        return ImageToRotationImageArrayUtil.instance

proc initImageToRotationImageArrayUtil*(this: ImageToRotationImageArrayUtil) =
        discard
        discard

proc newImageToRotationImageArrayUtil*(): ImageToRotationImageArrayUtil =
    result = ImageToRotationImageArrayUtil()
    initImageToRotationImageArrayUtil(result)

method generate*(this: ImageToRotationImageArrayUtil, image: Image, angleIncrement: int32, totalAngle: int32): JArray[Image] {.base, discardable.} =
        let imageRotationUtil: ImageRotationUtil = ImageRotationUtil.getInstance()
        let totalFrames: int32 = totalAngle div angleIncrement
        let imageArray: JArray[Image] = newJArray[Image](totalFrames, default(Image))
        imageArray[0] = image
        block:
            var index: int32 = 1
            while index < totalFrames:
                defer: index = index +% 1
                imageArray[index] = imageRotationUtil.createRotatedImage(image, index *% angleIncrement)
        return imageArray

