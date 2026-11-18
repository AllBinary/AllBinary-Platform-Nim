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
# package javax.microedition.lcdui

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    NullImage* = ref object of JObject

proc newNullImage*(): NullImage

var NullImage_NULL_IMAGE_ARRAYValue: JArray[Image]
var NullImage_NULL_IMAGE_ARRAYSet = false
proc NULL_IMAGE_ARRAY*(t: typedesc[NullImage]): JArray[Image] =
    if not NullImage_NULL_IMAGE_ARRAYSet:
        NullImage_NULL_IMAGE_ARRAYSet = true
        NullImage_NULL_IMAGE_ARRAYValue = newJArray[Image](0, default(Image))
    NullImage_NULL_IMAGE_ARRAYValue
var NullImage_NULL_IMAGEValue: Image
var NullImage_NULL_IMAGESet = false
proc NULL_IMAGEStatic*(t: typedesc[NullImage]): Image =
    if not NullImage_NULL_IMAGESet:
        NullImage_NULL_IMAGESet = true
        NullImage_NULL_IMAGEValue = newImage()
    NullImage_NULL_IMAGEValue

proc initNullImage*(this: NullImage) =
    discard

proc newNullImage*(): NullImage =
    result = NullImage()
    initNullImage(result)

