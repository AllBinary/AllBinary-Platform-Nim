# Generated Code Do Not Modify
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/platform/graphics/PlatformBitmapBase as PlatformBitmapBaseModule
export PlatformBitmapBaseModule
import org/allbinary/platform/graphics/PlatformBitmapBaseFactory as PlatformBitmapBaseFactoryModule
export PlatformBitmapBaseFactoryModule
import org/allbinary/graphics/OpenGLBitmapConfig as OpenGLBitmapConfigModule
export OpenGLBitmapConfigModule
import org/allbinary/graphics/OpenGLBitmap as OpenGLBitmapModule
export OpenGLBitmapModule

type
    OpenGLBitmapFactory* = ref object of PlatformBitmapBaseFactory
        ARGB_8888*: OpenGLBitmapConfig

proc newOpenGLBitmapFactory*(): OpenGLBitmapFactory
proc getInstance*(t: typedesc[OpenGLBitmapFactory]): OpenGLBitmapFactory {.discardable.}
method createBitmap*(this: OpenGLBitmapFactory, width: int32, height: int32, config: OpenGLBitmapConfig): OpenGLBitmap {.base, discardable.}
method decodeStream*(this: OpenGLBitmapFactory, inputStream: InputStream): OpenGLBitmap {.base, discardable.}
method createBitmap*(this: OpenGLBitmapFactory, image: Image): PlatformBitmapBase {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var OpenGLBitmapFactory_instanceValue: OpenGLBitmapFactory
var OpenGLBitmapFactory_instanceSet = false
proc instance*(t: typedesc[OpenGLBitmapFactory]): OpenGLBitmapFactory =
    if not OpenGLBitmapFactory_instanceSet:
        OpenGLBitmapFactory_instanceSet = true
        OpenGLBitmapFactory_instanceValue = newOpenGLBitmapFactory()
    OpenGLBitmapFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLBitmapFactory(this: OpenGLBitmapFactory) =
    this.ARGB_8888 = newOpenGLBitmapConfig(NullUtil.getInstance().NULL_OBJECT)
    discard

proc initOpenGLBitmapFactory*(this: OpenGLBitmapFactory) =
    initPlatformBitmapBaseFactory(this)
    this.initFieldsOpenGLBitmapFactory()

proc newOpenGLBitmapFactory*(): OpenGLBitmapFactory =
    result = OpenGLBitmapFactory()
    initOpenGLBitmapFactory(result)

proc getInstance*(t: typedesc[OpenGLBitmapFactory]): OpenGLBitmapFactory {.discardable.} =
        return OpenGLBitmapFactory.instance

method createBitmap*(this: OpenGLBitmapFactory, width: int32, height: int32, config: OpenGLBitmapConfig): OpenGLBitmap {.base, discardable.} =
        return newOpenGLBitmap(NullUtil.getInstance().NULL_OBJECT)

method decodeStream*(this: OpenGLBitmapFactory, inputStream: InputStream): OpenGLBitmap {.base, discardable.} =
        return newOpenGLBitmap(NullUtil.getInstance().NULL_OBJECT)

method createBitmap*(this: OpenGLBitmapFactory, image: Image): PlatformBitmapBase {.discardable.} =
        return newOpenGLBitmap(NullUtil.getInstance().NULL_OBJECT)

when declared(newOpenGLBitmapFactoryHook0):
    newOpenGLBitmapFactoryHook0 = proc (): PlatformBitmapBaseFactory = newOpenGLBitmapFactory()

