# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.shader

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import org/allbinary/graphics/opengles/OpenGLProcessor as OpenGLProcessorModule
export OpenGLProcessorModule

type
    ShaderOpenGLProcessor* = ref object of OpenGLProcessor

proc newShaderOpenGLProcessor*(): ShaderOpenGLProcessor
proc initShaderOpenGLProcessor*(this: ShaderOpenGLProcessor)
method process0*(this: ShaderOpenGLProcessor, gl: GL10) {.base.}
method process1*(this: ShaderOpenGLProcessor, gl: GL10) {.base.}
method process*(this: ShaderOpenGLProcessor, gl: GL10)
method process2*(this: ShaderOpenGLProcessor, gl: GL10) {.base.}
method process3*(this: ShaderOpenGLProcessor, gl: GL10) {.base.}


proc initShaderOpenGLProcessor*(this: ShaderOpenGLProcessor) =
        initOpenGLProcessor(this)
        discard

proc newShaderOpenGLProcessor*(): ShaderOpenGLProcessor =
    result = ShaderOpenGLProcessor()
    initShaderOpenGLProcessor(result)

method process0*(this: ShaderOpenGLProcessor, gl: GL10) {.base.} =
        discard

method process1*(this: ShaderOpenGLProcessor, gl: GL10) {.base.} =
        discard

method process*(this: ShaderOpenGLProcessor, gl: GL10) =
        discard

method process2*(this: ShaderOpenGLProcessor, gl: GL10) {.base.} =
        discard

method process3*(this: ShaderOpenGLProcessor, gl: GL10) {.base.} =
        discard

when declared(newShaderOpenGLProcessorHook0):
    newShaderOpenGLProcessorHook0 = proc (): OpenGLProcessor = newShaderOpenGLProcessor()

