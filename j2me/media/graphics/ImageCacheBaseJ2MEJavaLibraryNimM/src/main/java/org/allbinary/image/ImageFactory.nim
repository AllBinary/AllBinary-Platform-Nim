#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import java/io/InputStream as InputStreamModule
export InputStreamModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

#ImageCacheBaseJavaLibrary - J2ME
type
    ImageFactory* = ref object of JObject

proc newImageFactory*(): ImageFactory
proc getInstance*(t: typedesc[ImageFactory]): ImageFactory {.discardable.}
method createImageUrl*(this: ImageFactory, url: string): Image {.base, discardable.}
method createImage*(this: ImageFactory, caller: string, width: int32, height: int32): Image {.base, discardable.}
method createImageFromInputStream*(this: ImageFactory, key: JObject, inputStream: InputStream): Image {.base, discardable.}
method createImageFromInputStream*(this: ImageFactory, inputStream: InputStream): Image {.base, discardable.}
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule

var ImageFactory_instanceValue: ImageFactory
var ImageFactory_instanceSet = false
proc instance*(t: typedesc[ImageFactory]): ImageFactory =
    if not ImageFactory_instanceSet:
        ImageFactory_instanceSet = true
        ImageFactory_instanceValue = newImageFactory()
    ImageFactory_instanceValue

proc initImageFactory*(this: ImageFactory) =
    discard

proc newImageFactory*(): ImageFactory =
    result = ImageFactory()
    initImageFactory(result)

proc getInstance*(t: typedesc[ImageFactory]): ImageFactory {.discardable.} =
        return ImageFactory.instance

method createImageUrl*(this: ImageFactory, url: string): Image {.base, discardable.} =
        return Image.createImage(url)

method createImage*(this: ImageFactory, caller: string, width: int32, height: int32): Image {.base, discardable.} =
        return MIDPUtil.getInstance().createImageWH(width, height)

method createImageFromInputStream*(this: ImageFactory, key: JObject, inputStream: InputStream): Image {.base, discardable.} =
        let image: Image = MIDPUtil.getInstance().createImageFromInputStream(inputStream)
        return image

method createImageFromInputStream*(this: ImageFactory, inputStream: InputStream): Image {.base, discardable.} =
        return MIDPUtil.getInstance().createImageFromInputStream(inputStream)

