# Generated Code Do Not Modify
# package javax.microedition.khronos.egl

{.warning[UnusedImport]: off.}
import allbinary_java

type
    EGLConfig* = ref object of JObject

proc newEGLConfig*(): EGLConfig
proc initEGLConfig*(this: EGLConfig)


proc initEGLConfig*(this: EGLConfig) =
        raise newJException("RuntimeException", "")

proc newEGLConfig*(): EGLConfig =
    result = EGLConfig()
    initEGLConfig(result)

