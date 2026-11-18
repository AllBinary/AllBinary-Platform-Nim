# Generated Code Do Not Modify
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/device/OpenGLESGraphics as OpenGLESGraphicsModule
export OpenGLESGraphicsModule

type
    OpenGLESNullGraphicsFactory* = ref object of JObject

proc newOpenGLESNullGraphicsFactory*(): OpenGLESNullGraphicsFactory
proc getInstance*(t: typedesc[OpenGLESNullGraphicsFactory]): OpenGLESGraphics {.discardable.}

var OpenGLESNullGraphicsFactory_instanceValue: OpenGLESGraphics
var OpenGLESNullGraphicsFactory_instanceSet = false
proc instance*(t: typedesc[OpenGLESNullGraphicsFactory]): OpenGLESGraphics =
    if not OpenGLESNullGraphicsFactory_instanceSet:
        OpenGLESNullGraphicsFactory_instanceSet = true
        OpenGLESNullGraphicsFactory_instanceValue = newOpenGLESGraphics()
    OpenGLESNullGraphicsFactory_instanceValue

proc initOpenGLESNullGraphicsFactory*(this: OpenGLESNullGraphicsFactory) =
    discard

proc newOpenGLESNullGraphicsFactory*(): OpenGLESNullGraphicsFactory =
    result = OpenGLESNullGraphicsFactory()
    initOpenGLESNullGraphicsFactory(result)

proc getInstance*(t: typedesc[OpenGLESNullGraphicsFactory]): OpenGLESGraphics {.discardable.} =
        return OpenGLESNullGraphicsFactory.instance

