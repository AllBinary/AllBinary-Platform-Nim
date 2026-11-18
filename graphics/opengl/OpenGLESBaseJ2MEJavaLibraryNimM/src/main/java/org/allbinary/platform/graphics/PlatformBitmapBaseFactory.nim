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
# package org.allbinary.platform.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/platform/graphics/PlatformBitmapBase as PlatformBitmapBaseModule
export PlatformBitmapBaseModule

type
    PlatformBitmapBaseFactory* = ref object of JObject

proc newPlatformBitmapBaseFactory*(): PlatformBitmapBaseFactory
method createBitmap*(this: PlatformBitmapBaseFactory, image: Image): PlatformBitmapBase {.base, discardable.}

var PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue: PlatformBitmapBaseFactory
var PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet = false
proc NULL_PLATFORM_BITMAP_BASE_FACTORY*(t: typedesc[PlatformBitmapBaseFactory]): PlatformBitmapBaseFactory =
    if not PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet:
        PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet = true
        PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue = newPlatformBitmapBaseFactory()
    PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue

proc initPlatformBitmapBaseFactory*(this: PlatformBitmapBaseFactory) =
    discard

proc newPlatformBitmapBaseFactory*(): PlatformBitmapBaseFactory =
    result = PlatformBitmapBaseFactory()
    initPlatformBitmapBaseFactory(result)

method createBitmap*(this: PlatformBitmapBaseFactory, image: Image): PlatformBitmapBase {.base, discardable.} =
        raise newJException("RuntimeException", "")

