# Generated Code Do Not Modify
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/platform/graphics/PlatformBitmapBase as PlatformBitmapBaseModule
export PlatformBitmapBaseModule

type
    OpenGLBitmap* = ref object of PlatformBitmapBase
        bitmap*: JObject

proc newOpenGLBitmap*(bitmap: JObject): OpenGLBitmap
proc initOpenGLBitmap*(this: OpenGLBitmap, bitmap: JObject)
method getPixels*(this: OpenGLBitmap, pixels: JArray[int32], offset: int32, stride: int32, x: int32, y: int32, width: int32, height: int32) {.base.}
method setPixels*(this: OpenGLBitmap, pixels: JArray[int32], offset: int32, stride: int32, x: int32, y: int32, width: int32, height: int32) {.base.}
method recycle*(this: OpenGLBitmap) {.base.}


# Java field initializers run after the base initializer
proc initFieldsOpenGLBitmap(this: OpenGLBitmap) =
    
    discard

proc initOpenGLBitmap*(this: OpenGLBitmap, bitmap: JObject) =
        initPlatformBitmapBase(this)
        this.initFieldsOpenGLBitmap()
        this.bitmap = bitmap

proc newOpenGLBitmap*(bitmap: JObject): OpenGLBitmap =
    result = OpenGLBitmap()
    initOpenGLBitmap(result, bitmap)

method getPixels*(this: OpenGLBitmap, pixels: JArray[int32], offset: int32, stride: int32, x: int32, y: int32, width: int32, height: int32) {.base.} =
        discard

method setPixels*(this: OpenGLBitmap, pixels: JArray[int32], offset: int32, stride: int32, x: int32, y: int32, width: int32, height: int32) {.base.} =
        discard

method recycle*(this: OpenGLBitmap) {.base.} =
        discard

when declared(newOpenGLBitmapHook1):
    newOpenGLBitmapHook1 = proc (bitmap: JObject): PlatformBitmapBase = newOpenGLBitmap(bitmap)

