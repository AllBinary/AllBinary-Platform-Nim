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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    PlatformBitmapBase* = ref object of JObject
        alpha*: int32
        basicColor*: BasicColor

proc newPlatformBitmapBase*(): PlatformBitmapBase
method getWidth*(this: PlatformBitmapBase): int32 {.base, discardable.}
method getHeight*(this: PlatformBitmapBase): int32 {.base, discardable.}
method getImage*(this: PlatformBitmapBase): Image {.base, discardable.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule

var PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue: PlatformBitmapBase
var PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet = false
proc NULL_PLATFORM_BITMAP_BASE*(t: typedesc[PlatformBitmapBase]): PlatformBitmapBase =
    if not PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet:
        PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet = true
        PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue = newPlatformBitmapBase()
    PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue

# Java field initializers run after the base initializer
proc initFieldsPlatformBitmapBase(this: PlatformBitmapBase) =
    this.alpha = 255
    this.basicColor = BasicColorFactory.getInstance().NULL_COLOR
    discard

proc initPlatformBitmapBase*(this: PlatformBitmapBase) =
    this.initFieldsPlatformBitmapBase()

proc newPlatformBitmapBase*(): PlatformBitmapBase =
    result = PlatformBitmapBase()
    initPlatformBitmapBase(result)

method getWidth*(this: PlatformBitmapBase): int32 {.base, discardable.} =
        return 0

method getHeight*(this: PlatformBitmapBase): int32 {.base, discardable.} =
        return 0

method getImage*(this: PlatformBitmapBase): Image {.base, discardable.} =
        return NullImage.NULL_IMAGEStatic

