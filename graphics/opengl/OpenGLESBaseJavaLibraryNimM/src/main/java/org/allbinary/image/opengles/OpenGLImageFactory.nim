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
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/platform/graphics/PlatformBitmapBaseFactory as PlatformBitmapBaseFactoryModule
export PlatformBitmapBaseFactoryModule
import org/allbinary/platform/opengles/PlatformTextureBaseFactory as PlatformTextureBaseFactoryModule
export PlatformTextureBaseFactoryModule

type
    OpenGLImageFactory* = ref object of JObject

proc newOpenGLImageFactory*(): OpenGLImageFactory
method getInstance*(this: OpenGLImageFactory, image: Image, bitmapFactory: PlatformBitmapBaseFactory, textureFactory: PlatformTextureBaseFactory): Image {.base, discardable.}

var OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue: OpenGLImageFactory
var OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet = false
proc NULL_OPENGL_IMAGE_FACTORY*(t: typedesc[OpenGLImageFactory]): OpenGLImageFactory =
    if not OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet:
        OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet = true
        OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue = newOpenGLImageFactory()
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue
proc `NULL_OPENGL_IMAGE_FACTORY=`*(t: typedesc[OpenGLImageFactory], value: OpenGLImageFactory) =
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet = true
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue = value

proc initOpenGLImageFactory*(this: OpenGLImageFactory) =
    discard

proc newOpenGLImageFactory*(): OpenGLImageFactory =
    result = OpenGLImageFactory()
    initOpenGLImageFactory(result)

method getInstance*(this: OpenGLImageFactory, image: Image, bitmapFactory: PlatformBitmapBaseFactory, textureFactory: PlatformTextureBaseFactory): Image {.base, discardable.} =
        raise newJException("RuntimeException", "")

