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
import org/allbinary/graphics/opengles/OpenGLProcessor as OpenGLProcessorModule
export OpenGLProcessorModule
import org/allbinary/graphics/opengles/shader/ShaderComposite as ShaderCompositeModule
export ShaderCompositeModule
import org/allbinary/graphics/opengles/shader/Shader as ShaderModule
export ShaderModule
import org/allbinary/graphics/opengles/shader/CompositeShaderUpdater as CompositeShaderUpdaterModule
export CompositeShaderUpdaterModule
import org/allbinary/graphics/opengles/shader/ShaderInitializer as ShaderInitializerModule
export ShaderInitializerModule
import org/allbinary/graphics/opengles/shader/ModelViewProjection as ModelViewProjectionModule
export ModelViewProjectionModule

type
    PlatformShaderComposite* = ref object of ShaderComposite

proc newPlatformShaderComposite*(requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor): PlatformShaderComposite
proc initPlatformShaderComposite*(this: PlatformShaderComposite, requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor)
import org/allbinary/graphics/opengles/NullOpenGLProcessorFactory as NullOpenGLProcessorFactoryModule
export NullOpenGLProcessorFactoryModule


proc initPlatformShaderComposite*(this: PlatformShaderComposite, requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor) =
        initShaderComposite(this, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance())

proc newPlatformShaderComposite*(requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor): PlatformShaderComposite =
    result = PlatformShaderComposite()
    initPlatformShaderComposite(result, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)

when declared(newPlatformShaderCompositeHook7):
    newPlatformShaderCompositeHook7 = proc (requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor): ShaderComposite = newPlatformShaderComposite(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)

