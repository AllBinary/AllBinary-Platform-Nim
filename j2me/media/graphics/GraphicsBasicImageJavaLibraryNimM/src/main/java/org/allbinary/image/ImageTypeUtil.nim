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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    ImageTypeUtil* = ref object of JObject
        PNG*: string
        JPG*: string
        GIF*: string
        list*: BasicArrayList

proc newImageTypeUtil*(): ImageTypeUtil
proc initImageTypeUtil*(this: ImageTypeUtil)
method isSupported*(this: ImageTypeUtil, mediaFileType: string): bool {.base, discardable.}
proc getInstance*(t: typedesc[ImageTypeUtil]): ImageTypeUtil {.discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var ImageTypeUtil_SINGLETONValue: ImageTypeUtil
var ImageTypeUtil_SINGLETONSet = false
proc SINGLETON*(t: typedesc[ImageTypeUtil]): ImageTypeUtil =
    if not ImageTypeUtil_SINGLETONSet:
        ImageTypeUtil_SINGLETONSet = true
        ImageTypeUtil_SINGLETONValue = newImageTypeUtil()
    ImageTypeUtil_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[ImageTypeUtil], value: ImageTypeUtil) =
    ImageTypeUtil_SINGLETONSet = true
    ImageTypeUtil_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsImageTypeUtil(this: ImageTypeUtil) =
    this.PNG = "png"
    this.JPG = "jpg"
    this.GIF = "gif"
    this.list = newBasicArrayListD()
    discard

proc initImageTypeUtil*(this: ImageTypeUtil) =
        this.initFieldsImageTypeUtil()
        this.list.add(this.JPG)
        this.list.add(this.GIF)
        this.list.add(this.PNG)

proc newImageTypeUtil*(): ImageTypeUtil =
    result = ImageTypeUtil()
    initImageTypeUtil(result)

method isSupported*(this: ImageTypeUtil, mediaFileType: string): bool {.base, discardable.} =
        var mediaFileType = mediaFileType
        mediaFileType = jToLowerCase(mediaFileType)
        block:
            var index: int32 = this.list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                var name: string = jstr(this.list.get(index))
                if jCompareTo(mediaFileType, name) == 0:
                    return true
        return false

proc getInstance*(t: typedesc[ImageTypeUtil]): ImageTypeUtil {.discardable.} =
        return ImageTypeUtil.SINGLETON

