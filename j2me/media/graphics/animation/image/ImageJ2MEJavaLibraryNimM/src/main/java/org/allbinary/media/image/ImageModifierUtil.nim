#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    ImageModifierUtil* = ref object of JObject

proc newImageModifierUtil*(): ImageModifierUtil
proc getInstanceOrCreate*(t: typedesc[ImageModifierUtil]): ImageModifierUtil {.discardable.}
method setColor*(this: ImageModifierUtil, unusedOriginalImage: Image, image: Image, imageIndex: int32, basicColor: BasicColor) {.base.}
method changeColor*(this: ImageModifierUtil, unusedOriginalImage: Image, image: Image, imageIndex: int32, basicColor: BasicColor) {.base.}
method setAlpha*(this: ImageModifierUtil, originalImage: Image, image: Image, imageIndex: int32, alphaInt: int32) {.base.}
method getImageArray*(this: ImageModifierUtil, originalImageArray: JArray[Image]): JArray[Image] {.base, discardable.}
method handleImage*(this: ImageModifierUtil, imageArray: JArray[Image], index: int32, image: Image) {.base.}
method reset*(this: ImageModifierUtil) {.base.}

var ImageModifierUtil_instanceValue: ImageModifierUtil
var ImageModifierUtil_instanceSet = false
proc instance*(t: typedesc[ImageModifierUtil]): ImageModifierUtil =
    if not ImageModifierUtil_instanceSet:
        ImageModifierUtil_instanceSet = true
        ImageModifierUtil_instanceValue = newImageModifierUtil()
    ImageModifierUtil_instanceValue

proc initImageModifierUtil*(this: ImageModifierUtil) =
    discard

proc newImageModifierUtil*(): ImageModifierUtil =
    result = ImageModifierUtil()
    initImageModifierUtil(result)

proc getInstanceOrCreate*(t: typedesc[ImageModifierUtil]): ImageModifierUtil {.discardable.} =
        return ImageModifierUtil.instance

method setColor*(this: ImageModifierUtil, unusedOriginalImage: Image, image: Image, imageIndex: int32, basicColor: BasicColor) {.base.} =
        discard

method changeColor*(this: ImageModifierUtil, unusedOriginalImage: Image, image: Image, imageIndex: int32, basicColor: BasicColor) {.base.} =
        discard

method setAlpha*(this: ImageModifierUtil, originalImage: Image, image: Image, imageIndex: int32, alphaInt: int32) {.base.} =
        discard

method getImageArray*(this: ImageModifierUtil, originalImageArray: JArray[Image]): JArray[Image] {.base, discardable.} =
        return originalImageArray

method handleImage*(this: ImageModifierUtil, imageArray: JArray[Image], index: int32, image: Image) {.base.} =
        discard

method reset*(this: ImageModifierUtil) {.base.} =
        discard

