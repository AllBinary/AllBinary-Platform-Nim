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
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module

type
    OpenGLVUtilBase* = ref object of JObject

proc newOpenGLVUtilBase*(): OpenGLVUtilBase
method glTexEnvix*(this: OpenGLVUtilBase, gl: GL10, target: int32, pname: int32, param: int32) {.base.}
method glTexParameterix*(this: OpenGLVUtilBase, gl: GL10, target: int32, pname: int32, param: int32) {.base.}
method glGenerateMipmap*(this: OpenGLVUtilBase, gl: GL10, textureId: int32, target: int32, generateMipMap: bool) {.base.}


proc initOpenGLVUtilBase*(this: OpenGLVUtilBase) =
    discard

proc newOpenGLVUtilBase*(): OpenGLVUtilBase =
    result = OpenGLVUtilBase()
    initOpenGLVUtilBase(result)

method glTexEnvix*(this: OpenGLVUtilBase, gl: GL10, target: int32, pname: int32, param: int32) {.base.} =
        discard

method glTexParameterix*(this: OpenGLVUtilBase, gl: GL10, target: int32, pname: int32, param: int32) {.base.} =
        discard

method glGenerateMipmap*(this: OpenGLVUtilBase, gl: GL10, textureId: int32, target: int32, generateMipMap: bool) {.base.} =
        discard

