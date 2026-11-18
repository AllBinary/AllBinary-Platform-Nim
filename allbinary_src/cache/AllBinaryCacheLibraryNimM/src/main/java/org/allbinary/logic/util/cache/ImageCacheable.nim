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
# package org.allbinary.logic.util.cache

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ImageCacheable* = ref object of JObject
        name*: string

proc newImageCacheable*(name: string, anyType: JObject): ImageCacheable
proc initImageCacheable*(this: ImageCacheable, name: string, anyType: JObject)
method getKey*(this: ImageCacheable): JObject {.base, discardable.}
method toString*(this: ImageCacheable): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsImageCacheable(this: ImageCacheable) =
    this.name = StringUtil.getInstance().EMPTY_STRING
    discard

proc initImageCacheable*(this: ImageCacheable, name: string, anyType: JObject) =
        this.initFieldsImageCacheable()
        discard

proc newImageCacheable*(name: string, anyType: JObject): ImageCacheable =
    result = ImageCacheable()
    initImageCacheable(result, name, anyType)

method getKey*(this: ImageCacheable): JObject {.base, discardable.} =
        return this.name

method toString*(this: ImageCacheable): string {.discardable.} =
        return this.name

