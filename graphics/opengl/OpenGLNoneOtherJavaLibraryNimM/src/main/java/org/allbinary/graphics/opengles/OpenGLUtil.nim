# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    OpenGLUtil* = ref object of JObject

proc newOpenGLUtil*(): OpenGLUtil
proc getInstance*(t: typedesc[OpenGLUtil]): OpenGLUtil {.discardable.}
method addImage*(this: OpenGLUtil, image: Image): Image {.base, discardable.}
method clear*(this: OpenGLUtil) {.base.}
method addRunnable*(this: OpenGLUtil, runnable: Runnable) {.base.}

var OpenGLUtil_instanceValue: OpenGLUtil
var OpenGLUtil_instanceSet = false
proc instance*(t: typedesc[OpenGLUtil]): OpenGLUtil =
    if not OpenGLUtil_instanceSet:
        OpenGLUtil_instanceSet = true
        OpenGLUtil_instanceValue = newOpenGLUtil()
    OpenGLUtil_instanceValue

proc initOpenGLUtil*(this: OpenGLUtil) =
    discard

proc newOpenGLUtil*(): OpenGLUtil =
    result = OpenGLUtil()
    initOpenGLUtil(result)

proc getInstance*(t: typedesc[OpenGLUtil]): OpenGLUtil {.discardable.} =
        return OpenGLUtil.instance

method addImage*(this: OpenGLUtil, image: Image): Image {.base, discardable.} =
        return image

method clear*(this: OpenGLUtil) {.base.} =
        discard

method addRunnable*(this: OpenGLUtil, runnable: Runnable) {.base.} =
        discard

