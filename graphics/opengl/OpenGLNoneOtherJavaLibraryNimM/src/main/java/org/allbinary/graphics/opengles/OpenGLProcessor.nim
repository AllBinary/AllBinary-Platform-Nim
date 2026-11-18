# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    OpenGLProcessor* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings

proc newOpenGLProcessor*(): OpenGLProcessor
method process*(this: OpenGLProcessor, gl: GL10) {.base.}


# Java field initializers run after the base initializer
proc initFieldsOpenGLProcessor(this: OpenGLProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initOpenGLProcessor*(this: OpenGLProcessor) =
    this.initFieldsOpenGLProcessor()

proc newOpenGLProcessor*(): OpenGLProcessor =
    result = OpenGLProcessor()
    initOpenGLProcessor(result)

method process*(this: OpenGLProcessor, gl: GL10) {.base.} =
        discard

