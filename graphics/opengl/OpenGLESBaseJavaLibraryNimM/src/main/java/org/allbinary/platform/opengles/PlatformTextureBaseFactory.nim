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
# package org.allbinary.platform.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    PlatformTextureBaseFactory* = ref object of JObject
        commonStrings*: CommonStrings

proc newPlatformTextureBaseFactory*(): PlatformTextureBaseFactory
method load*(this: PlatformTextureBaseFactory, gl: GL10, target: int32, level: int32, image: Image, border: int32, flip: bool) {.base.}

var PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue: PlatformTextureBaseFactory
var PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet = false
proc NULL_PLATFORM_TEXTURE_BASE_FACTORY*(t: typedesc[PlatformTextureBaseFactory]): PlatformTextureBaseFactory =
    if not PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet:
        PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet = true
        PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue = newPlatformTextureBaseFactory()
    PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue

# Java field initializers run after the base initializer
proc initFieldsPlatformTextureBaseFactory(this: PlatformTextureBaseFactory) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initPlatformTextureBaseFactory*(this: PlatformTextureBaseFactory) =
    this.initFieldsPlatformTextureBaseFactory()

proc newPlatformTextureBaseFactory*(): PlatformTextureBaseFactory =
    result = PlatformTextureBaseFactory()
    initPlatformTextureBaseFactory(result)

method load*(this: PlatformTextureBaseFactory, gl: GL10, target: int32, level: int32, image: Image, border: int32, flip: bool) {.base.} =
        discard

