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
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule

#OpenGLNoneOtherJavaLibrary
type
    OpenGLImageCacheFactory* = ref object of JObject

proc newOpenGLImageCacheFactory*(): OpenGLImageCacheFactory
proc getInstance*(t: typedesc[OpenGLImageCacheFactory]): ImageCache {.discardable.}
proc init*(t: typedesc[OpenGLImageCacheFactory])

var OpenGLImageCacheFactory_IMAGE_CACHEValue: ImageCache
var OpenGLImageCacheFactory_IMAGE_CACHESet = false
proc IMAGE_CACHE*(t: typedesc[OpenGLImageCacheFactory]): ImageCache =
    if not OpenGLImageCacheFactory_IMAGE_CACHESet:
        OpenGLImageCacheFactory_IMAGE_CACHESet = true
        OpenGLImageCacheFactory_IMAGE_CACHEValue = ImageCache.NULL_IMAGE_CACHE
    OpenGLImageCacheFactory_IMAGE_CACHEValue
proc `IMAGE_CACHE=`*(t: typedesc[OpenGLImageCacheFactory], value: ImageCache) =
    OpenGLImageCacheFactory_IMAGE_CACHESet = true
    OpenGLImageCacheFactory_IMAGE_CACHEValue = value

proc initOpenGLImageCacheFactory*(this: OpenGLImageCacheFactory) =
    discard

proc newOpenGLImageCacheFactory*(): OpenGLImageCacheFactory =
    result = OpenGLImageCacheFactory()
    initOpenGLImageCacheFactory(result)

proc getInstance*(t: typedesc[OpenGLImageCacheFactory]): ImageCache {.discardable.} =
        return OpenGLImageCacheFactory.IMAGE_CACHE

proc init*(t: typedesc[OpenGLImageCacheFactory]) =
        if (jIsNil(OpenGLImageCacheFactory.IMAGE_CACHE)):
            discard

