# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java

type
    OpenGLThreadUtil* = ref object of JObject

proc newOpenGLThreadUtil*(): OpenGLThreadUtil
proc getInstance*(t: typedesc[OpenGLThreadUtil]): OpenGLThreadUtil {.discardable.}
method set*(this: OpenGLThreadUtil, glSurfaceView: JObject) {.base.}
method onPause*(this: OpenGLThreadUtil) {.base.}
method onResume*(this: OpenGLThreadUtil) {.base.}

var OpenGLThreadUtil_instanceValue: OpenGLThreadUtil
var OpenGLThreadUtil_instanceSet = false
proc instance*(t: typedesc[OpenGLThreadUtil]): OpenGLThreadUtil =
    if not OpenGLThreadUtil_instanceSet:
        OpenGLThreadUtil_instanceSet = true
        OpenGLThreadUtil_instanceValue = newOpenGLThreadUtil()
    OpenGLThreadUtil_instanceValue

proc initOpenGLThreadUtil*(this: OpenGLThreadUtil) =
    discard

proc newOpenGLThreadUtil*(): OpenGLThreadUtil =
    result = OpenGLThreadUtil()
    initOpenGLThreadUtil(result)

proc getInstance*(t: typedesc[OpenGLThreadUtil]): OpenGLThreadUtil {.discardable.} =
        return OpenGLThreadUtil.instance

method set*(this: OpenGLThreadUtil, glSurfaceView: JObject) {.base.} =
        discard

method onPause*(this: OpenGLThreadUtil) {.base.} =
        discard

method onResume*(this: OpenGLThreadUtil) {.base.} =
        discard

