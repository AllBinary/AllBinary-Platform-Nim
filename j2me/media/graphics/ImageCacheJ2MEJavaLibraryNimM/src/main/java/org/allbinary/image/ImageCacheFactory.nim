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
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule

type
    ImageCacheFactory* = ref object of JObject

proc newImageCacheFactory*(): ImageCacheFactory
proc getInstance*(t: typedesc[ImageCacheFactory]): ImageCache {.discardable.}
proc init*(t: typedesc[ImageCacheFactory])

var ImageCacheFactory_IMAGE_CACHEValue: ImageCache
var ImageCacheFactory_IMAGE_CACHESet = false
proc IMAGE_CACHE*(t: typedesc[ImageCacheFactory]): ImageCache =
    if not ImageCacheFactory_IMAGE_CACHESet:
        ImageCacheFactory_IMAGE_CACHESet = true
        ImageCacheFactory_IMAGE_CACHEValue = newImageCache()
    ImageCacheFactory_IMAGE_CACHEValue

proc initImageCacheFactory*(this: ImageCacheFactory) =
    discard

proc newImageCacheFactory*(): ImageCacheFactory =
    result = ImageCacheFactory()
    initImageCacheFactory(result)

proc getInstance*(t: typedesc[ImageCacheFactory]): ImageCache {.discardable.} =
        return ImageCacheFactory.IMAGE_CACHE

proc init*(t: typedesc[ImageCacheFactory]) =
        discard

