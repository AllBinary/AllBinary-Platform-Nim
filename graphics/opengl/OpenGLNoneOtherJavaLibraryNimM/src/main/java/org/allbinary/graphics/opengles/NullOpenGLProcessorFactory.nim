# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/opengles/OpenGLProcessor as OpenGLProcessorModule
export OpenGLProcessorModule

type
    NullOpenGLProcessorFactory* = ref object of JObject

proc newNullOpenGLProcessorFactory*(): NullOpenGLProcessorFactory
proc getInstance*(t: typedesc[NullOpenGLProcessorFactory]): OpenGLProcessor {.discardable.}

var NullOpenGLProcessorFactory_instanceValue: OpenGLProcessor
var NullOpenGLProcessorFactory_instanceSet = false
proc instance*(t: typedesc[NullOpenGLProcessorFactory]): OpenGLProcessor =
    if not NullOpenGLProcessorFactory_instanceSet:
        NullOpenGLProcessorFactory_instanceSet = true
        NullOpenGLProcessorFactory_instanceValue = newOpenGLProcessor()
    NullOpenGLProcessorFactory_instanceValue

proc initNullOpenGLProcessorFactory*(this: NullOpenGLProcessorFactory) =
    discard

proc newNullOpenGLProcessorFactory*(): NullOpenGLProcessorFactory =
    result = NullOpenGLProcessorFactory()
    initNullOpenGLProcessorFactory(result)

proc getInstance*(t: typedesc[NullOpenGLProcessorFactory]): OpenGLProcessor {.discardable.} =
        return NullOpenGLProcessorFactory.instance

