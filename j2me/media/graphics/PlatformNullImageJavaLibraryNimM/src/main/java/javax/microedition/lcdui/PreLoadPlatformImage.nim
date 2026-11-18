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
# package javax.microedition.lcdui

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/PlatformImage as PlatformImageModule
export PlatformImageModule

#PlatformNullImageJavaLibrary
type
    PreLoadPlatformImage* = ref object of PlatformImage

proc newPreLoadPlatformImage*(): PreLoadPlatformImage
proc getInstance*(t: typedesc[PreLoadPlatformImage]): PreLoadPlatformImage {.discardable.}

var PreLoadPlatformImage_instanceValue: PreLoadPlatformImage
var PreLoadPlatformImage_instanceSet = false
proc instance*(t: typedesc[PreLoadPlatformImage]): PreLoadPlatformImage =
    if not PreLoadPlatformImage_instanceSet:
        PreLoadPlatformImage_instanceSet = true
        PreLoadPlatformImage_instanceValue = newPreLoadPlatformImage()
    PreLoadPlatformImage_instanceValue

proc initPreLoadPlatformImage*(this: PreLoadPlatformImage) =
    initPlatformImage(this)

proc newPreLoadPlatformImage*(): PreLoadPlatformImage =
    result = PreLoadPlatformImage()
    initPreLoadPlatformImage(result)

proc getInstance*(t: typedesc[PreLoadPlatformImage]): PreLoadPlatformImage {.discardable.} =
        return PreLoadPlatformImage.instance

when declared(newPreLoadPlatformImageHook0):
    newPreLoadPlatformImageHook0 = proc (): PlatformImage = newPreLoadPlatformImage()

