# Generated Code Do Not Modify
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/device/OpenGLESGraphics as OpenGLESGraphicsModule
export OpenGLESGraphicsModule

type
    OpenGLESGraphicsFactory* = ref object of JObject

proc newOpenGLESGraphicsFactory*(): OpenGLESGraphicsFactory
method getOpenGLESGraphicsInstance*(this: OpenGLESGraphicsFactory): OpenGLESGraphics {.base, discardable.}
import org/allbinary/device/OpenGLESNullGraphicsFactory as OpenGLESNullGraphicsFactoryModule
export OpenGLESNullGraphicsFactoryModule


proc initOpenGLESGraphicsFactory*(this: OpenGLESGraphicsFactory) =
    discard

proc newOpenGLESGraphicsFactory*(): OpenGLESGraphicsFactory =
    result = OpenGLESGraphicsFactory()
    initOpenGLESGraphicsFactory(result)

method getOpenGLESGraphicsInstance*(this: OpenGLESGraphicsFactory): OpenGLESGraphics {.base, discardable.} =
        return OpenGLESNullGraphicsFactory.getInstance()

