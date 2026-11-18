# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.shader

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    OpenGLObject3dProcessor* = ref object of JObject
        commonStrings*: CommonStrings

proc newOpenGLObject3dProcessor*(): OpenGLObject3dProcessor
method process*(this: OpenGLObject3dProcessor, gl: GL10, object3d: JObject) {.base.}
method process*(this: OpenGLObject3dProcessor, gl: GL10, object3d: JObject, index: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsOpenGLObject3dProcessor(this: OpenGLObject3dProcessor) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initOpenGLObject3dProcessor*(this: OpenGLObject3dProcessor) =
    this.initFieldsOpenGLObject3dProcessor()

proc newOpenGLObject3dProcessor*(): OpenGLObject3dProcessor =
    result = OpenGLObject3dProcessor()
    initOpenGLObject3dProcessor(result)

method process*(this: OpenGLObject3dProcessor, gl: GL10, object3d: JObject) {.base.} =
        discard

method process*(this: OpenGLObject3dProcessor, gl: GL10, object3d: JObject, index: int32) {.base.} =
        discard

