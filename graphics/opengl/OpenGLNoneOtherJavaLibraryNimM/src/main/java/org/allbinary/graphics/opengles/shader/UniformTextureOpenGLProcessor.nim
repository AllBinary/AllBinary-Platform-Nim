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
# package org.allbinary.graphics.opengles.shader

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor as OpenGLObject3dProcessorModule
export OpenGLObject3dProcessorModule
import org/allbinary/graphics/opengles/shader/ShaderComposite as ShaderCompositeModule
export ShaderCompositeModule

type
    UniformTextureOpenGLProcessor* = ref object of OpenGLObject3dProcessor

proc newUniformTextureOpenGLProcessor*(shaderComposite: ShaderComposite, handleIndex: int32): UniformTextureOpenGLProcessor
proc initUniformTextureOpenGLProcessor*(this: UniformTextureOpenGLProcessor, shaderComposite: ShaderComposite, handleIndex: int32)
method process*(this: UniformTextureOpenGLProcessor, gl: GL10, unused: JObject, index: int32)


proc initUniformTextureOpenGLProcessor*(this: UniformTextureOpenGLProcessor, shaderComposite: ShaderComposite, handleIndex: int32) =
        initOpenGLObject3dProcessor(this)
        discard

proc newUniformTextureOpenGLProcessor*(shaderComposite: ShaderComposite, handleIndex: int32): UniformTextureOpenGLProcessor =
    result = UniformTextureOpenGLProcessor()
    initUniformTextureOpenGLProcessor(result, shaderComposite, handleIndex)

method process*(this: UniformTextureOpenGLProcessor, gl: GL10, unused: JObject, index: int32) =
        discard

when declared(newUniformTextureOpenGLProcessorHook2):
    newUniformTextureOpenGLProcessorHook2 = proc (shaderComposite: ShaderComposite, handleIndex: int32): OpenGLObject3dProcessor = newUniformTextureOpenGLProcessor(shaderComposite, handleIndex)

