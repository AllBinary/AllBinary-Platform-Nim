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
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/platform/graphics/PlatformBitmapBase as PlatformBitmapBaseModule
export PlatformBitmapBaseModule
import org/allbinary/platform/graphics/PlatformBitmapBaseFactory as PlatformBitmapBaseFactoryModule
export PlatformBitmapBaseFactoryModule
import org/allbinary/platform/opengles/PlatformTextureBaseFactory as PlatformTextureBaseFactoryModule
export PlatformTextureBaseFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/image/opengles/OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterfaceModule
export OpenGLSurfaceChangedInterfaceModule
import org/allbinary/image/opengles/OpenGLESImageProperties as OpenGLESImagePropertiesModule
export OpenGLESImagePropertiesModule

#OpenGLESNullImageJ2MEJavaLibrary
type
    OpenGLESImage* = ref object of OpenGLSurfaceChangedInterface
        commonStrings*: CommonStrings
        textureFactory*: PlatformTextureBaseFactory
        openGLBitmap*: PlatformBitmapBase
        openGLESImageProperties*: OpenGLESImageProperties

proc newOpenGLESImage*(image: Image, bitmapFactory: PlatformBitmapBaseFactory, textureFactory: PlatformTextureBaseFactory): OpenGLESImage
proc initOpenGLESImage*(this: OpenGLESImage, image: Image, bitmapFactory: PlatformBitmapBaseFactory, textureFactory: PlatformTextureBaseFactory)
method set*(this: OpenGLESImage, gl: GL)
method initTexture*(this: OpenGLESImage, gl: GL10): bool {.base, discardable.}
method drawRegion*(this: OpenGLESImage, gl: GL10, viewHeight: int32, x_src: float32, y_src: float32, width: float32, height: float32, x: int32, y: int32, z: int32) {.base.}
method draw*(this: OpenGLESImage, gl: GL10, x: int32, y: int32, z: int32) {.base.}
method getType*(this: OpenGLESImage): int32 {.base, discardable.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var OpenGLESImage_NULL_OPENGL_IMAGEValue: OpenGLESImage
var OpenGLESImage_NULL_OPENGL_IMAGESet = false
proc NULL_OPENGL_IMAGE*(t: typedesc[OpenGLESImage]): OpenGLESImage =
    if not OpenGLESImage_NULL_OPENGL_IMAGESet:
        OpenGLESImage_NULL_OPENGL_IMAGESet = true
        OpenGLESImage_NULL_OPENGL_IMAGEValue = newOpenGLESImage(NullImage.NULL_IMAGEStatic, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY)
    OpenGLESImage_NULL_OPENGL_IMAGEValue
var OpenGLESImage_texture2dListValue: BasicArrayList
var OpenGLESImage_texture2dListSet = false
proc texture2dList*(t: typedesc[OpenGLESImage]): BasicArrayList =
    if not OpenGLESImage_texture2dListSet:
        OpenGLESImage_texture2dListSet = true
        OpenGLESImage_texture2dListValue = newBasicArrayListD()
    OpenGLESImage_texture2dListValue
var OpenGLESImage_TYPEValue: int32
var OpenGLESImage_TYPESet = false
proc TYPE*(t: typedesc[OpenGLESImage]): int32 =
    if not OpenGLESImage_TYPESet:
        OpenGLESImage_TYPESet = true
        OpenGLESImage_TYPEValue = 4
    OpenGLESImage_TYPEValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLESImage(this: OpenGLESImage) =
    this.commonStrings = CommonStrings.getInstance()
    
    
    this.openGLESImageProperties = newOpenGLESImageProperties()
    discard

proc initOpenGLESImage*(this: OpenGLESImage, image: Image, bitmapFactory: PlatformBitmapBaseFactory, textureFactory: PlatformTextureBaseFactory) =
        this.initFieldsOpenGLESImage()
        this.openGLBitmap = bitmapFactory.createBitmap(image)
        this.textureFactory = textureFactory

proc newOpenGLESImage*(image: Image, bitmapFactory: PlatformBitmapBaseFactory, textureFactory: PlatformTextureBaseFactory): OpenGLESImage =
    result = OpenGLESImage()
    initOpenGLESImage(result, image, bitmapFactory, textureFactory)

method set*(this: OpenGLESImage, gl: GL) =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method initTexture*(this: OpenGLESImage, gl: GL10): bool {.base, discardable.} =
        return false

method drawRegion*(this: OpenGLESImage, gl: GL10, viewHeight: int32, x_src: float32, y_src: float32, width: float32, height: float32, x: int32, y: int32, z: int32) {.base.} =
        discard

method draw*(this: OpenGLESImage, gl: GL10, x: int32, y: int32, z: int32) {.base.} =
        discard

method getType*(this: OpenGLESImage): int32 {.base, discardable.} =
        return OpenGLESImage.TYPE

