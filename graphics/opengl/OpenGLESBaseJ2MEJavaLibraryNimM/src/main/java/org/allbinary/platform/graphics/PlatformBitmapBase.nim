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

type
    PlatformBitmapBase* = ref object of JObject

proc newPlatformBitmapBase*(): PlatformBitmapBase
method getImage*(this: PlatformBitmapBase): Image {.base, discardable.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule


proc initPlatformBitmapBase*(this: PlatformBitmapBase) =
    discard

proc newPlatformBitmapBase*(): PlatformBitmapBase =
    result = PlatformBitmapBase()
    initPlatformBitmapBase(result)

method getImage*(this: PlatformBitmapBase): Image {.base, discardable.} =
        return NullImage.NULL_IMAGEStatic

