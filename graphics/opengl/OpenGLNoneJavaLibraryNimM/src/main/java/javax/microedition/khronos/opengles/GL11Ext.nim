# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import java/nio/Buffer as BufferModule
export BufferModule
import java/nio/FloatBuffer as FloatBufferModule
export FloatBufferModule
import java/nio/IntBuffer as IntBufferModule
export IntBufferModule
import java/nio/ShortBuffer as ShortBufferModule
export ShortBufferModule
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule

type
    GL11Ext* = ref object of GL

var GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue: int32
var GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet = false
proc GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet:
        GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESSet = true
        GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue = 35742
    GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OESValue
var GL11Ext_GL_MATRIX_INDEX_ARRAY_OESValue: int32
var GL11Ext_GL_MATRIX_INDEX_ARRAY_OESSet = false
proc GL_MATRIX_INDEX_ARRAY_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_INDEX_ARRAY_OESSet:
        GL11Ext_GL_MATRIX_INDEX_ARRAY_OESSet = true
        GL11Ext_GL_MATRIX_INDEX_ARRAY_OESValue = 34884
    GL11Ext_GL_MATRIX_INDEX_ARRAY_OESValue
var GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OESValue: int32
var GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OESSet = false
proc GL_MATRIX_INDEX_ARRAY_POINTER_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OESSet:
        GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OESSet = true
        GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OESValue = 34889
    GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OESValue
var GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OESValue: int32
var GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OESSet = false
proc GL_MATRIX_INDEX_ARRAY_SIZE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OESSet:
        GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OESSet = true
        GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OESValue = 34886
    GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OESValue
var GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue: int32
var GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet = false
proc GL_MATRIX_INDEX_ARRAY_STRIDE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet:
        GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OESSet = true
        GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue = 34888
    GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OESValue
var GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OESValue: int32
var GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OESSet = false
proc GL_MATRIX_INDEX_ARRAY_TYPE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OESSet:
        GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OESSet = true
        GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OESValue = 34887
    GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OESValue
var GL11Ext_GL_MATRIX_PALETTE_OESValue: int32
var GL11Ext_GL_MATRIX_PALETTE_OESSet = false
proc GL_MATRIX_PALETTE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MATRIX_PALETTE_OESSet:
        GL11Ext_GL_MATRIX_PALETTE_OESSet = true
        GL11Ext_GL_MATRIX_PALETTE_OESValue = 34880
    GL11Ext_GL_MATRIX_PALETTE_OESValue
var GL11Ext_GL_MAX_PALETTE_MATRICES_OESValue: int32
var GL11Ext_GL_MAX_PALETTE_MATRICES_OESSet = false
proc GL_MAX_PALETTE_MATRICES_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MAX_PALETTE_MATRICES_OESSet:
        GL11Ext_GL_MAX_PALETTE_MATRICES_OESSet = true
        GL11Ext_GL_MAX_PALETTE_MATRICES_OESValue = 34882
    GL11Ext_GL_MAX_PALETTE_MATRICES_OESValue
var GL11Ext_GL_MAX_VERTEX_UNITS_OESValue: int32
var GL11Ext_GL_MAX_VERTEX_UNITS_OESSet = false
proc GL_MAX_VERTEX_UNITS_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_MAX_VERTEX_UNITS_OESSet:
        GL11Ext_GL_MAX_VERTEX_UNITS_OESSet = true
        GL11Ext_GL_MAX_VERTEX_UNITS_OESValue = 34468
    GL11Ext_GL_MAX_VERTEX_UNITS_OESValue
var GL11Ext_GL_TEXTURE_CROP_RECT_OESValue: int32
var GL11Ext_GL_TEXTURE_CROP_RECT_OESSet = false
proc GL_TEXTURE_CROP_RECT_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_TEXTURE_CROP_RECT_OESSet:
        GL11Ext_GL_TEXTURE_CROP_RECT_OESSet = true
        GL11Ext_GL_TEXTURE_CROP_RECT_OESValue = 35741
    GL11Ext_GL_TEXTURE_CROP_RECT_OESValue
var GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue: int32
var GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet = false
proc GL_WEIGHT_ARRAY_BUFFER_BINDING_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet:
        GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OESSet = true
        GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue = 34974
    GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OESValue
var GL11Ext_GL_WEIGHT_ARRAY_OESValue: int32
var GL11Ext_GL_WEIGHT_ARRAY_OESSet = false
proc GL_WEIGHT_ARRAY_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_WEIGHT_ARRAY_OESSet:
        GL11Ext_GL_WEIGHT_ARRAY_OESSet = true
        GL11Ext_GL_WEIGHT_ARRAY_OESValue = 34477
    GL11Ext_GL_WEIGHT_ARRAY_OESValue
var GL11Ext_GL_WEIGHT_ARRAY_POINTER_OESValue: int32
var GL11Ext_GL_WEIGHT_ARRAY_POINTER_OESSet = false
proc GL_WEIGHT_ARRAY_POINTER_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_WEIGHT_ARRAY_POINTER_OESSet:
        GL11Ext_GL_WEIGHT_ARRAY_POINTER_OESSet = true
        GL11Ext_GL_WEIGHT_ARRAY_POINTER_OESValue = 34476
    GL11Ext_GL_WEIGHT_ARRAY_POINTER_OESValue
var GL11Ext_GL_WEIGHT_ARRAY_SIZE_OESValue: int32
var GL11Ext_GL_WEIGHT_ARRAY_SIZE_OESSet = false
proc GL_WEIGHT_ARRAY_SIZE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_WEIGHT_ARRAY_SIZE_OESSet:
        GL11Ext_GL_WEIGHT_ARRAY_SIZE_OESSet = true
        GL11Ext_GL_WEIGHT_ARRAY_SIZE_OESValue = 34475
    GL11Ext_GL_WEIGHT_ARRAY_SIZE_OESValue
var GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OESValue: int32
var GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OESSet = false
proc GL_WEIGHT_ARRAY_STRIDE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OESSet:
        GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OESSet = true
        GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OESValue = 34474
    GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OESValue
var GL11Ext_GL_WEIGHT_ARRAY_TYPE_OESValue: int32
var GL11Ext_GL_WEIGHT_ARRAY_TYPE_OESSet = false
proc GL_WEIGHT_ARRAY_TYPE_OES*(t: typedesc[GL11Ext]): int32 =
    if not GL11Ext_GL_WEIGHT_ARRAY_TYPE_OESSet:
        GL11Ext_GL_WEIGHT_ARRAY_TYPE_OESSet = true
        GL11Ext_GL_WEIGHT_ARRAY_TYPE_OESValue = 34473
    GL11Ext_GL_WEIGHT_ARRAY_TYPE_OESValue

method glTexParameterfv*(this: GL11Ext, target: int32, pname: int32, param: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameterfv")

method glCurrentPaletteMatrixOES*(this: GL11Ext, matrixpaletteindex: int32) {.base.} =
        raise newJException("AbstractMethodError", "glCurrentPaletteMatrixOES")

method glDrawTexfOES*(this: GL11Ext, x: float32, y: float32, z: float32, width: float32, height: float32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexfOES")

method glDrawTexfvOES*(this: GL11Ext, coords: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexfvOES")

method glDrawTexfvOES*(this: GL11Ext, coords: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexfvOES")

method glDrawTexiOES*(this: GL11Ext, x: int32, y: int32, z: int32, width: int32, height: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexiOES")

method glDrawTexivOES*(this: GL11Ext, coords: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexivOES")

method glDrawTexivOES*(this: GL11Ext, coords: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexivOES")

method glDrawTexsOES*(this: GL11Ext, x: int16, y: int16, z: int16, width: int16, height: int16) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexsOES")

method glDrawTexsvOES*(this: GL11Ext, coords: JArray[int16], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexsvOES")

method glDrawTexsvOES*(this: GL11Ext, coords: ShortBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexsvOES")

method glDrawTexxOES*(this: GL11Ext, x: int32, y: int32, z: int32, width: int32, height: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexxOES")

method glDrawTexxvOES*(this: GL11Ext, coords: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexxvOES")

method glDrawTexxvOES*(this: GL11Ext, coords: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glDrawTexxvOES")

method glEnable*(this: GL11Ext, cap: int32) {.base.} =
        raise newJException("AbstractMethodError", "glEnable")

method glEnableClientState*(this: GL11Ext, array: int32) {.base.} =
        raise newJException("AbstractMethodError", "glEnableClientState")

method glLoadPaletteFromModelViewMatrixOES*(this: GL11Ext) {.base.} =
        raise newJException("AbstractMethodError", "glLoadPaletteFromModelViewMatrixOES")

method glMatrixIndexPointerOES*(this: GL11Ext, size: int32, `type`: int32, stride: int32, pointer: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glMatrixIndexPointerOES")

method glMatrixIndexPointerOES*(this: GL11Ext, size: int32, `type`: int32, stride: int32, offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glMatrixIndexPointerOES")

method glWeightPointerOES*(this: GL11Ext, size: int32, `type`: int32, stride: int32, pointer: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glWeightPointerOES")

method glWeightPointerOES*(this: GL11Ext, size: int32, `type`: int32, stride: int32, offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glWeightPointerOES")

