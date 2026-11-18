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
# package org.allbinary.media.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    ImageCompleteUtil* = ref object of JObject

proc newImageCompleteUtil*(): ImageCompleteUtil
proc getInstance*(t: typedesc[ImageCompleteUtil]): ImageCompleteUtil {.discardable.}
method waitForImage*(this: ImageCompleteUtil, image: Image, name: string) {.base.}

var ImageCompleteUtil_instanceValue: ImageCompleteUtil
var ImageCompleteUtil_instanceSet = false
proc instance*(t: typedesc[ImageCompleteUtil]): ImageCompleteUtil =
    if not ImageCompleteUtil_instanceSet:
        ImageCompleteUtil_instanceSet = true
        ImageCompleteUtil_instanceValue = newImageCompleteUtil()
    ImageCompleteUtil_instanceValue

proc initImageCompleteUtil*(this: ImageCompleteUtil) =
    discard

proc newImageCompleteUtil*(): ImageCompleteUtil =
    result = ImageCompleteUtil()
    initImageCompleteUtil(result)

proc getInstance*(t: typedesc[ImageCompleteUtil]): ImageCompleteUtil {.discardable.} =
        return ImageCompleteUtil.instance

method waitForImage*(this: ImageCompleteUtil, image: Image, name: string) {.base.} =
        discard

