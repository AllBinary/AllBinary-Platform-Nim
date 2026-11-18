#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import java/nio/Buffer as BufferModule
export BufferModule
import java/nio/FloatBuffer as FloatBufferModule
export FloatBufferModule
import java/nio/IntBuffer as IntBufferModule
export IntBufferModule

type
    NullGL10* = ref object of GL10

proc newNullGL10*(): NullGL10
method glActiveTexture*(this: NullGL10, texture: int32)
method glAlphaFunc*(this: NullGL10, `func`: int32, `ref`: float32)
method glBindTexture*(this: NullGL10, target: int32, texture: int32)
method glBlendFunc*(this: NullGL10, sfactor: int32, dfactor: int32)
method glClear*(this: NullGL10, mask: int32)
method glClearColor*(this: NullGL10, red: float32, green: float32, blue: float32, alpha: float32)
method glClearDepthf*(this: NullGL10, depth: float32)
method glClearStencil*(this: NullGL10, s: int32)
method glClientActiveTexture*(this: NullGL10, texture: int32)
method glColor4f*(this: NullGL10, red: float32, green: float32, blue: float32, alpha: float32)
method glColorMask*(this: NullGL10, red: bool, green: bool, blue: bool, alpha: bool)
method glColorPointer*(this: NullGL10, size: int32, `type`: int32, stride: int32, pointer: Buffer)
method glCompressedTexImage2D*(this: NullGL10, target: int32, level: int32, internalformat: int32, width: int32, height: int32, border: int32, imageSize: int32, data: Buffer)
method glCompressedTexSubImage2D*(this: NullGL10, target: int32, level: int32, xoffset: int32, yoffset: int32, width: int32, height: int32, format: int32, imageSize: int32, data: Buffer)
method glCopyTexImage2D*(this: NullGL10, target: int32, level: int32, internalformat: int32, x: int32, y: int32, width: int32, height: int32, border: int32)
method glCopyTexSubImage2D*(this: NullGL10, target: int32, level: int32, xoffset: int32, yoffset: int32, x: int32, y: int32, width: int32, height: int32)
method glCullFace*(this: NullGL10, mode: int32)
method glDeleteTextures*(this: NullGL10, n: int32, textures: JArray[int32], offset: int32)
method glDeleteTextures*(this: NullGL10, n: int32, textures: IntBuffer)
method glDepthFunc*(this: NullGL10, `func`: int32)
method glDepthMask*(this: NullGL10, flag: bool)
method glDepthRangef*(this: NullGL10, zNear: float32, zFar: float32)
method glDisable*(this: NullGL10, cap: int32)
method glDisableClientState*(this: NullGL10, array: int32)
method glDrawArrays*(this: NullGL10, mode: int32, first: int32, count: int32)
method glDrawElements*(this: NullGL10, mode: int32, count: int32, `type`: int32, indices: Buffer)
method glEnable*(this: NullGL10, cap: int32)
method glEnableClientState*(this: NullGL10, array: int32)
method glFinish*(this: NullGL10)
method glFlush*(this: NullGL10)
method glFogf*(this: NullGL10, pname: int32, param: float32)
method glFogfv*(this: NullGL10, pname: int32, params: JArray[float32], offset: int32)
method glFogfv*(this: NullGL10, pname: int32, params: FloatBuffer)
method glFrontFace*(this: NullGL10, mode: int32)
method glFrustumf*(this: NullGL10, left: float32, right: float32, bottom: float32, top: float32, zNear: float32, zFar: float32)
method glGenTextures*(this: NullGL10, n: int32, textures: JArray[int32], offset: int32)
method glGenTextures*(this: NullGL10, n: int32, textures: IntBuffer)
method glGetError*(this: NullGL10): int32 {.discardable.}
method glGetIntegerv*(this: NullGL10, pname: int32, params: JArray[int32], offset: int32)
method glGetIntegerv*(this: NullGL10, pname: int32, params: IntBuffer)
method glGetString*(this: NullGL10, name: int32): string {.discardable.}
method glHint*(this: NullGL10, target: int32, mode: int32)
method glLightModelf*(this: NullGL10, pname: int32, param: float32)
method glLightModelfv*(this: NullGL10, pname: int32, params: JArray[float32], offset: int32)
method glLightModelfv*(this: NullGL10, pname: int32, params: FloatBuffer)
method glLightf*(this: NullGL10, light: int32, pname: int32, param: float32)
method glLightfv*(this: NullGL10, light: int32, pname: int32, params: JArray[float32], offset: int32)
method glLightfv*(this: NullGL10, light: int32, pname: int32, params: FloatBuffer)
method glLineWidth*(this: NullGL10, width: float32)
method glLoadIdentity*(this: NullGL10)
method glLoadMatrixf*(this: NullGL10, m: JArray[float32], offset: int32)
method glLoadMatrixf*(this: NullGL10, m: FloatBuffer)
method glLogicOp*(this: NullGL10, opcode: int32)
method glMaterialf*(this: NullGL10, face: int32, pname: int32, param: float32)
method glMaterialfv*(this: NullGL10, face: int32, pname: int32, params: JArray[float32], offset: int32)
method glMaterialfv*(this: NullGL10, face: int32, pname: int32, params: FloatBuffer)
method glMatrixMode*(this: NullGL10, mode: int32)
method glMultMatrixf*(this: NullGL10, m: JArray[float32], offset: int32)
method glMultMatrixf*(this: NullGL10, m: FloatBuffer)
method glMultiTexCoord4f*(this: NullGL10, target: int32, s: float32, t: float32, r: float32, q: float32)
method glNormal3f*(this: NullGL10, nx: float32, ny: float32, nz: float32)
method glNormalPointer*(this: NullGL10, `type`: int32, stride: int32, pointer: Buffer)
method glOrthof*(this: NullGL10, left: float32, right: float32, bottom: float32, top: float32, zNear: float32, zFar: float32)
method glPixelStorei*(this: NullGL10, pname: int32, param: int32)
method glPointSize*(this: NullGL10, size: float32)
method glPolygonOffset*(this: NullGL10, factor: float32, units: float32)
method glPopMatrix*(this: NullGL10)
method glPushMatrix*(this: NullGL10)
method glReadPixels*(this: NullGL10, x: int32, y: int32, width: int32, height: int32, format: int32, `type`: int32, pixels: Buffer)
method glRotatef*(this: NullGL10, angle: float32, x: float32, y: float32, z: float32)
method glRotatex*(this: NullGL10, angle: int32, x: int32, y: int32, z: int32)
method glSampleCoverage*(this: NullGL10, value: float32, invert: bool)
method glScalef*(this: NullGL10, x: float32, y: float32, z: float32)
method glScalex*(this: NullGL10, x: int32, y: int32, z: int32)
method glScissor*(this: NullGL10, x: int32, y: int32, width: int32, height: int32)
method glShadeModel*(this: NullGL10, mode: int32)
method glStencilFunc*(this: NullGL10, `func`: int32, `ref`: int32, mask: int32)
method glStencilMask*(this: NullGL10, mask: int32)
method glStencilOp*(this: NullGL10, fail: int32, zfail: int32, zpass: int32)
method glTexCoordPointer*(this: NullGL10, size: int32, `type`: int32, stride: int32, pointer: Buffer)
method glTexEnvf*(this: NullGL10, target: int32, pname: int32, param: float32)
method glTexEnvfv*(this: NullGL10, target: int32, pname: int32, params: JArray[float32], offset: int32)
method glTexEnvfv*(this: NullGL10, target: int32, pname: int32, params: FloatBuffer)
method glTexImage2D*(this: NullGL10, target: int32, level: int32, internalformat: int32, width: int32, height: int32, border: int32, format: int32, `type`: int32, pixels: Buffer)
method glTexParameterf*(this: NullGL10, target: int32, pname: int32, param: float32)
method glTexParameteri*(this: NullGL10, target: int32, pname: int32, param: int32)
method glTexSubImage2D*(this: NullGL10, target: int32, level: int32, xoffset: int32, yoffset: int32, width: int32, height: int32, format: int32, `type`: int32, pixels: Buffer)
method glTranslatef*(this: NullGL10, x: float32, y: float32, z: float32)
method glVertexPointer*(this: NullGL10, size: int32, `type`: int32, stride: int32, pointer: Buffer)
method glViewport*(this: NullGL10, x: int32, y: int32, width: int32, height: int32)
method glBegin*(this: NullGL10, i: int32)
method glEnd*(this: NullGL10)
method glVertex3f*(this: NullGL10, f: float32, f2: float32, f3: float32)
method glPolygonMode*(this: NullGL10, i: int32, i1: int32)
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var NullGL10_NULL_GL10Value: NullGL10
var NullGL10_NULL_GL10Set = false
proc NULL_GL10Static*(t: typedesc[NullGL10]): NullGL10 =
    if not NullGL10_NULL_GL10Set:
        NullGL10_NULL_GL10Set = true
        NullGL10_NULL_GL10Value = newNullGL10()
    NullGL10_NULL_GL10Value

proc initNullGL10*(this: NullGL10) =
    discard

proc newNullGL10*(): NullGL10 =
    result = NullGL10()
    initNullGL10(result)

method glActiveTexture*(this: NullGL10, texture: int32) =
        return

method glAlphaFunc*(this: NullGL10, `func`: int32, `ref`: float32) =
        return

method glBindTexture*(this: NullGL10, target: int32, texture: int32) =
        return

method glBlendFunc*(this: NullGL10, sfactor: int32, dfactor: int32) =
        return

method glClear*(this: NullGL10, mask: int32) =
        return

method glClearColor*(this: NullGL10, red: float32, green: float32, blue: float32, alpha: float32) =
        return

method glClearDepthf*(this: NullGL10, depth: float32) =
        return

method glClearStencil*(this: NullGL10, s: int32) =
        return

method glClientActiveTexture*(this: NullGL10, texture: int32) =
        return

method glColor4f*(this: NullGL10, red: float32, green: float32, blue: float32, alpha: float32) =
        return

method glColorMask*(this: NullGL10, red: bool, green: bool, blue: bool, alpha: bool) =
        return

method glColorPointer*(this: NullGL10, size: int32, `type`: int32, stride: int32, pointer: Buffer) =
        return

method glCompressedTexImage2D*(this: NullGL10, target: int32, level: int32, internalformat: int32, width: int32, height: int32, border: int32, imageSize: int32, data: Buffer) =
        return

method glCompressedTexSubImage2D*(this: NullGL10, target: int32, level: int32, xoffset: int32, yoffset: int32, width: int32, height: int32, format: int32, imageSize: int32, data: Buffer) =
        return

method glCopyTexImage2D*(this: NullGL10, target: int32, level: int32, internalformat: int32, x: int32, y: int32, width: int32, height: int32, border: int32) =
        return

method glCopyTexSubImage2D*(this: NullGL10, target: int32, level: int32, xoffset: int32, yoffset: int32, x: int32, y: int32, width: int32, height: int32) =
        return

method glCullFace*(this: NullGL10, mode: int32) =
        return

method glDeleteTextures*(this: NullGL10, n: int32, textures: JArray[int32], offset: int32) =
        return

method glDeleteTextures*(this: NullGL10, n: int32, textures: IntBuffer) =
        return

method glDepthFunc*(this: NullGL10, `func`: int32) =
        return

method glDepthMask*(this: NullGL10, flag: bool) =
        return

method glDepthRangef*(this: NullGL10, zNear: float32, zFar: float32) =
        return

method glDisable*(this: NullGL10, cap: int32) =
        return

method glDisableClientState*(this: NullGL10, array: int32) =
        return

method glDrawArrays*(this: NullGL10, mode: int32, first: int32, count: int32) =
        return

method glDrawElements*(this: NullGL10, mode: int32, count: int32, `type`: int32, indices: Buffer) =
        return

method glEnable*(this: NullGL10, cap: int32) =
        return

method glEnableClientState*(this: NullGL10, array: int32) =
        return

method glFinish*(this: NullGL10) =
        return

method glFlush*(this: NullGL10) =
        return

method glFogf*(this: NullGL10, pname: int32, param: float32) =
        return

method glFogfv*(this: NullGL10, pname: int32, params: JArray[float32], offset: int32) =
        return

method glFogfv*(this: NullGL10, pname: int32, params: FloatBuffer) =
        return

method glFrontFace*(this: NullGL10, mode: int32) =
        return

method glFrustumf*(this: NullGL10, left: float32, right: float32, bottom: float32, top: float32, zNear: float32, zFar: float32) =
        return

method glGenTextures*(this: NullGL10, n: int32, textures: JArray[int32], offset: int32) =
        return

method glGenTextures*(this: NullGL10, n: int32, textures: IntBuffer) =
        return

method glGetError*(this: NullGL10): int32 {.discardable.} =
        return 0

method glGetIntegerv*(this: NullGL10, pname: int32, params: JArray[int32], offset: int32) =
        return

method glGetIntegerv*(this: NullGL10, pname: int32, params: IntBuffer) =
        return

method glGetString*(this: NullGL10, name: int32): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method glHint*(this: NullGL10, target: int32, mode: int32) =
        return

method glLightModelf*(this: NullGL10, pname: int32, param: float32) =
        return

method glLightModelfv*(this: NullGL10, pname: int32, params: JArray[float32], offset: int32) =
        return

method glLightModelfv*(this: NullGL10, pname: int32, params: FloatBuffer) =
        return

method glLightf*(this: NullGL10, light: int32, pname: int32, param: float32) =
        return

method glLightfv*(this: NullGL10, light: int32, pname: int32, params: JArray[float32], offset: int32) =
        return

method glLightfv*(this: NullGL10, light: int32, pname: int32, params: FloatBuffer) =
        return

method glLineWidth*(this: NullGL10, width: float32) =
        return

method glLoadIdentity*(this: NullGL10) =
        return

method glLoadMatrixf*(this: NullGL10, m: JArray[float32], offset: int32) =
        return

method glLoadMatrixf*(this: NullGL10, m: FloatBuffer) =
        return

method glLogicOp*(this: NullGL10, opcode: int32) =
        return

method glMaterialf*(this: NullGL10, face: int32, pname: int32, param: float32) =
        return

method glMaterialfv*(this: NullGL10, face: int32, pname: int32, params: JArray[float32], offset: int32) =
        return

method glMaterialfv*(this: NullGL10, face: int32, pname: int32, params: FloatBuffer) =
        return

method glMatrixMode*(this: NullGL10, mode: int32) =
        return

method glMultMatrixf*(this: NullGL10, m: JArray[float32], offset: int32) =
        return

method glMultMatrixf*(this: NullGL10, m: FloatBuffer) =
        return

method glMultiTexCoord4f*(this: NullGL10, target: int32, s: float32, t: float32, r: float32, q: float32) =
        return

method glNormal3f*(this: NullGL10, nx: float32, ny: float32, nz: float32) =
        return

method glNormalPointer*(this: NullGL10, `type`: int32, stride: int32, pointer: Buffer) =
        return

method glOrthof*(this: NullGL10, left: float32, right: float32, bottom: float32, top: float32, zNear: float32, zFar: float32) =
        return

method glPixelStorei*(this: NullGL10, pname: int32, param: int32) =
        return

method glPointSize*(this: NullGL10, size: float32) =
        return

method glPolygonOffset*(this: NullGL10, factor: float32, units: float32) =
        return

method glPopMatrix*(this: NullGL10) =
        return

method glPushMatrix*(this: NullGL10) =
        return

method glReadPixels*(this: NullGL10, x: int32, y: int32, width: int32, height: int32, format: int32, `type`: int32, pixels: Buffer) =
        return

method glRotatef*(this: NullGL10, angle: float32, x: float32, y: float32, z: float32) =
        return

method glRotatex*(this: NullGL10, angle: int32, x: int32, y: int32, z: int32) =
        return

method glSampleCoverage*(this: NullGL10, value: float32, invert: bool) =
        return

method glScalef*(this: NullGL10, x: float32, y: float32, z: float32) =
        return

method glScalex*(this: NullGL10, x: int32, y: int32, z: int32) =
        return

method glScissor*(this: NullGL10, x: int32, y: int32, width: int32, height: int32) =
        return

method glShadeModel*(this: NullGL10, mode: int32) =
        return

method glStencilFunc*(this: NullGL10, `func`: int32, `ref`: int32, mask: int32) =
        return

method glStencilMask*(this: NullGL10, mask: int32) =
        return

method glStencilOp*(this: NullGL10, fail: int32, zfail: int32, zpass: int32) =
        return

method glTexCoordPointer*(this: NullGL10, size: int32, `type`: int32, stride: int32, pointer: Buffer) =
        return

method glTexEnvf*(this: NullGL10, target: int32, pname: int32, param: float32) =
        return

method glTexEnvfv*(this: NullGL10, target: int32, pname: int32, params: JArray[float32], offset: int32) =
        return

method glTexEnvfv*(this: NullGL10, target: int32, pname: int32, params: FloatBuffer) =
        return

method glTexImage2D*(this: NullGL10, target: int32, level: int32, internalformat: int32, width: int32, height: int32, border: int32, format: int32, `type`: int32, pixels: Buffer) =
        return

method glTexParameterf*(this: NullGL10, target: int32, pname: int32, param: float32) =
        return

method glTexParameteri*(this: NullGL10, target: int32, pname: int32, param: int32) =
        return

method glTexSubImage2D*(this: NullGL10, target: int32, level: int32, xoffset: int32, yoffset: int32, width: int32, height: int32, format: int32, `type`: int32, pixels: Buffer) =
        return

method glTranslatef*(this: NullGL10, x: float32, y: float32, z: float32) =
        return

method glVertexPointer*(this: NullGL10, size: int32, `type`: int32, stride: int32, pointer: Buffer) =
        return

method glViewport*(this: NullGL10, x: int32, y: int32, width: int32, height: int32) =
        return

method glBegin*(this: NullGL10, i: int32) =
        return

method glEnd*(this: NullGL10) =
        return

method glVertex3f*(this: NullGL10, f: float32, f2: float32, f3: float32) =
        return

method glPolygonMode*(this: NullGL10, i: int32, i1: int32) =
        return

