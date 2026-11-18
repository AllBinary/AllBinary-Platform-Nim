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
    UniformLightPositionOpenGLProcessor* = ref object of OpenGLObject3dProcessor

proc newUniformLightPositionOpenGLProcessor*(shaderComposite: ShaderComposite, handleIndex: int32): UniformLightPositionOpenGLProcessor
proc initUniformLightPositionOpenGLProcessor*(this: UniformLightPositionOpenGLProcessor, shaderComposite: ShaderComposite, handleIndex: int32)
method process*(this: UniformLightPositionOpenGLProcessor, gl: GL10, unused: JObject)


proc initUniformLightPositionOpenGLProcessor*(this: UniformLightPositionOpenGLProcessor, shaderComposite: ShaderComposite, handleIndex: int32) =
        initOpenGLObject3dProcessor(this)
        discard

proc newUniformLightPositionOpenGLProcessor*(shaderComposite: ShaderComposite, handleIndex: int32): UniformLightPositionOpenGLProcessor =
    result = UniformLightPositionOpenGLProcessor()
    initUniformLightPositionOpenGLProcessor(result, shaderComposite, handleIndex)

method process*(this: UniformLightPositionOpenGLProcessor, gl: GL10, unused: JObject) =
        discard

when declared(newUniformLightPositionOpenGLProcessorHook2):
    newUniformLightPositionOpenGLProcessorHook2 = proc (shaderComposite: ShaderComposite, handleIndex: int32): OpenGLObject3dProcessor = newUniformLightPositionOpenGLProcessor(shaderComposite, handleIndex)

