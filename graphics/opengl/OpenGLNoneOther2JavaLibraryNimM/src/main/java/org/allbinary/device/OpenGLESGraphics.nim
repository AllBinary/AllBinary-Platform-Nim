# Generated Code Do Not Modify
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/font/FontDebugBase as FontDebugBaseModule
export FontDebugBaseModule
import org/allbinary/image/opengles/OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterfaceModule
export OpenGLSurfaceChangedInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/device/GraphicsInterface as GraphicsInterfaceModule
export GraphicsInterfaceModule

type
    OpenGLESGraphics* = ref object of Graphics
        commonStrings*: CommonStrings
        gl*: GL10

converter jAsOpenGLSurfaceChangedInterface*(value: OpenGLESGraphics): OpenGLSurfaceChangedInterface = cast[OpenGLSurfaceChangedInterface](value)
converter jAsGraphicsInterface*(value: OpenGLESGraphics): GraphicsInterface = cast[GraphicsInterface](value)
proc newOpenGLESGraphics*(): OpenGLESGraphics
proc initOpenGLESGraphics*(this: OpenGLESGraphics)
method updateGL*(this: OpenGLESGraphics, gl: GL) {.base.}
method set*(this: OpenGLESGraphics, gl: GL)
method init*(this: OpenGLESGraphics) {.base.}
method update*(this: OpenGLESGraphics) {.base.}
method setOrthoginalMode*(this: OpenGLESGraphics) {.base.}
method setCameraMode*(this: OpenGLESGraphics) {.base.}
method getGl10*(this: OpenGLESGraphics): GL10 {.base, discardable.}
method setFontDebug*(this: OpenGLESGraphics, font: Font, fontDebug: FontDebugBase)
import org/allbinary/device/NullGL10 as NullGL10Module
export NullGL10Module


# Java field initializers run after the base initializer
proc initFieldsOpenGLESGraphics(this: OpenGLESGraphics) =
    this.commonStrings = CommonStrings.getInstance()
    this.gl = NullGL10.NULL_GL10Static
    discard

proc initOpenGLESGraphics*(this: OpenGLESGraphics) =
        initGraphics(this)
        this.initFieldsOpenGLESGraphics()
        discard

proc newOpenGLESGraphics*(): OpenGLESGraphics =
    result = OpenGLESGraphics()
    initOpenGLESGraphics(result)

method updateGL*(this: OpenGLESGraphics, gl: GL) {.base.} =
        discard

method set*(this: OpenGLESGraphics, gl: GL) =
        discard

method init*(this: OpenGLESGraphics) {.base.} =
        discard

method update*(this: OpenGLESGraphics) {.base.} =
        discard

method setOrthoginalMode*(this: OpenGLESGraphics) {.base.} =
        discard

method setCameraMode*(this: OpenGLESGraphics) {.base.} =
        discard

method getGl10*(this: OpenGLESGraphics): GL10 {.base, discardable.} =
        return this.gl

method setFontDebug*(this: OpenGLESGraphics, font: Font, fontDebug: FontDebugBase) =
        raise newJException("RuntimeException", "")

when declared(newOpenGLESGraphicsHook0):
    newOpenGLESGraphicsHook0 = proc (): Graphics = newOpenGLESGraphics()

