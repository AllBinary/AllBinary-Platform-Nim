# Generated Code Do Not Modify
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule

type
    OpenGLSurfaceChangedInterface* = ref object of JObject


method set*(this: OpenGLSurfaceChangedInterface, gl: GL) {.base.} =
        raise newJException("AbstractMethodError", "set")

