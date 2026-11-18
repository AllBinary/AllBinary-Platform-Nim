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
    GameFeatureImageCacheFactory* = ref object of JObject

proc newGameFeatureImageCacheFactory*(): GameFeatureImageCacheFactory
proc getInstance*(t: typedesc[GameFeatureImageCacheFactory]): ImageCache {.discardable.}
proc init*(t: typedesc[GameFeatureImageCacheFactory])
proc releaseAll*(t: typedesc[GameFeatureImageCacheFactory])
import org/allbinary/image/ImageCacheFactory as ImageCacheFactoryModule
export ImageCacheFactoryModule


proc initGameFeatureImageCacheFactory*(this: GameFeatureImageCacheFactory) =
    discard

proc newGameFeatureImageCacheFactory*(): GameFeatureImageCacheFactory =
    result = GameFeatureImageCacheFactory()
    initGameFeatureImageCacheFactory(result)

proc getInstance*(t: typedesc[GameFeatureImageCacheFactory]): ImageCache {.discardable.} =
        return ImageCacheFactory.getInstance()

proc init*(t: typedesc[GameFeatureImageCacheFactory]) =
        ImageCacheFactory.init()

proc releaseAll*(t: typedesc[GameFeatureImageCacheFactory]) =
        ImageCacheFactory.getInstance().releaseAll()

