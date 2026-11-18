#[
 
  AllBinary Open License Version 1
  Copyright (c) 2023 AllBinary
  
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
    ImageJ2MEScaleUtil* = ref object of JObject

proc newImageJ2MEScaleUtil*(): ImageJ2MEScaleUtil
proc initImageJ2MEScaleUtil*(this: ImageJ2MEScaleUtil)
proc getInstance*(t: typedesc[ImageJ2MEScaleUtil]): ImageJ2MEScaleUtil {.discardable.}
method scaleArray*(this: ImageJ2MEScaleUtil, images: JArray[Image], width: int32, height: int32): JArray[Image] {.base, discardable.}
method scale*(this: ImageJ2MEScaleUtil, image: Image, width: int32, height: int32): Image {.base, discardable.}

var ImageJ2MEScaleUtil_instanceValue: ImageJ2MEScaleUtil
var ImageJ2MEScaleUtil_instanceSet = false
proc instance*(t: typedesc[ImageJ2MEScaleUtil]): ImageJ2MEScaleUtil =
    if not ImageJ2MEScaleUtil_instanceSet:
        ImageJ2MEScaleUtil_instanceSet = true
        ImageJ2MEScaleUtil_instanceValue = newImageJ2MEScaleUtil()
    ImageJ2MEScaleUtil_instanceValue

proc getInstance*(t: typedesc[ImageJ2MEScaleUtil]): ImageJ2MEScaleUtil {.discardable.} =
        return ImageJ2MEScaleUtil.instance

proc initImageJ2MEScaleUtil*(this: ImageJ2MEScaleUtil) =
        discard
        discard

proc newImageJ2MEScaleUtil*(): ImageJ2MEScaleUtil =
    result = ImageJ2MEScaleUtil()
    initImageJ2MEScaleUtil(result)

method scaleArray*(this: ImageJ2MEScaleUtil, images: JArray[Image], width: int32, height: int32): JArray[Image] {.base, discardable.} =
        let scaledImages: JArray[Image] = newJArray[Image](images.length, default(Image))
        block:
            var index: int32 = images.length
            while jPreDecrement(index) >= 0:
                scaledImages[index] = this.scale(images[index], width, height)
        return scaledImages

method scale*(this: ImageJ2MEScaleUtil, image: Image, width: int32, height: int32): Image {.base, discardable.} =
        let sourceWidth: int32 = image.getWidth()
        let sourceHeight: int32 = image.getHeight()
        let originalData: JArray[int32] = newJArray[int32](image.getWidth() *% image.getHeight(), default(int32))
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight())
        let scaledData: JArray[int32] = newJArray[int32](width *% height, default(int32))
        let heightRatioFactor: int32 = (8 *% sourceHeight) div height
        let widthRatioFactor: int32 = (8 *% sourceWidth) div width
        var scaledIndex: int32 = scaledData.length -% 1
        var dx: int32 = 0
        var dy: int32 = 0
        block:
            var index: int32 = height
            while jPreDecrement(index) >= 0:
                dy = ashr((index *% heightRatioFactor), 3)
                block:
                    var index2: int32 = width
                    while jPreDecrement(index2) >= 0:
                        dx = ashr((index2 *% widthRatioFactor), 3)
                        scaledData[jPostDecrement(scaledIndex)] = originalData[(sourceWidth *% dy) +% dx]
        let scaledImage: Image = Image.createRGBImage(scaledData, width, height, true)
        return scaledImage

