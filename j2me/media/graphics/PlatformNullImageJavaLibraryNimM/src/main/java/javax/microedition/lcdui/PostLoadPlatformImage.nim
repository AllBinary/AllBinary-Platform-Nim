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
    PostLoadPlatformImage* = ref object of PlatformImage

proc newPostLoadPlatformImage*(): PostLoadPlatformImage
proc getInstance*(t: typedesc[PostLoadPlatformImage]): PostLoadPlatformImage {.discardable.}

var PostLoadPlatformImage_instanceValue: PostLoadPlatformImage
var PostLoadPlatformImage_instanceSet = false
proc instance*(t: typedesc[PostLoadPlatformImage]): PostLoadPlatformImage =
    if not PostLoadPlatformImage_instanceSet:
        PostLoadPlatformImage_instanceSet = true
        PostLoadPlatformImage_instanceValue = newPostLoadPlatformImage()
    PostLoadPlatformImage_instanceValue

proc initPostLoadPlatformImage*(this: PostLoadPlatformImage) =
    initPlatformImage(this)

proc newPostLoadPlatformImage*(): PostLoadPlatformImage =
    result = PostLoadPlatformImage()
    initPostLoadPlatformImage(result)

proc getInstance*(t: typedesc[PostLoadPlatformImage]): PostLoadPlatformImage {.discardable.} =
        return PostLoadPlatformImage.instance

when declared(newPostLoadPlatformImageHook0):
    newPostLoadPlatformImageHook0 = proc (): PlatformImage = newPostLoadPlatformImage()

