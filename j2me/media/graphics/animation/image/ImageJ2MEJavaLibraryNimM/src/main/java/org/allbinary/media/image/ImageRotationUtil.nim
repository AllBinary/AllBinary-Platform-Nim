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
    ImageRotationUtil* = ref object of JObject
        anchor*: int32

proc newImageRotationUtil*(): ImageRotationUtil
proc initImageRotationUtil*(this: ImageRotationUtil)
proc getInstance*(t: typedesc[ImageRotationUtil]): ImageRotationUtil {.discardable.}
method createRotatedImage*(this: ImageRotationUtil, originalImage: Image, rotationInDegrees: int32): Image {.base, discardable.}
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule

var ImageRotationUtil_instanceValue: ImageRotationUtil
var ImageRotationUtil_instanceSet = false
proc instance*(t: typedesc[ImageRotationUtil]): ImageRotationUtil =
    if not ImageRotationUtil_instanceSet:
        ImageRotationUtil_instanceSet = true
        ImageRotationUtil_instanceValue = newImageRotationUtil()
    ImageRotationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsImageRotationUtil(this: ImageRotationUtil) =
    this.anchor = Anchor.TOP_LEFT
    discard

proc getInstance*(t: typedesc[ImageRotationUtil]): ImageRotationUtil {.discardable.} =
        return ImageRotationUtil.instance

proc initImageRotationUtil*(this: ImageRotationUtil) =
        this.initFieldsImageRotationUtil()
        discard

proc newImageRotationUtil*(): ImageRotationUtil =
    result = ImageRotationUtil()
    initImageRotationUtil(result)

method createRotatedImage*(this: ImageRotationUtil, originalImage: Image, rotationInDegrees: int32): Image {.base, discardable.} =
        return originalImage

