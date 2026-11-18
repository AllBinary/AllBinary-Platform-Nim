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
import org/allbinary/graphics/opengles/OpenGLProcessor as OpenGLProcessorModule
export OpenGLProcessorModule
import org/allbinary/graphics/opengles/shader/Shader as ShaderModule
export ShaderModule
import org/allbinary/graphics/opengles/shader/ShaderInitializer as ShaderInitializerModule
export ShaderInitializerModule
import org/allbinary/graphics/opengles/shader/CompositeShaderUpdater as CompositeShaderUpdaterModule
export CompositeShaderUpdaterModule
import org/allbinary/graphics/opengles/shader/ModelViewProjection as ModelViewProjectionModule
export ModelViewProjectionModule
import org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor as OpenGLObject3dProcessorModule
export OpenGLObject3dProcessorModule

type
    ShaderComposite* = ref object of JObject
        disableProgramShaderOpenGLProcessor*: OpenGLProcessor
        requiresOpenGLVersion*: string
        shaderArray*: JArray[Shader]
        shaderInitializer*: ShaderInitializer
        compositeShaderUpdater*: CompositeShaderUpdater
        modelViewProjection*: ModelViewProjection
        colorOpenGLProcessor*: OpenGLProcessor
        vertexOpenGLProcessor*: OpenGLProcessor
        useProgramShaderOpenGLProcessor*: OpenGLProcessor
        shaderMatrixOpenGLProcessor*: OpenGLProcessor
        colorEnableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        normalEnableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        vertexEnableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        textureEnableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        colorDisableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        normalDisableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        vertexDisableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        textureDisableVertexAttribArrayOpenGLProcessor*: OpenGLProcessor
        uniformLightPositionOpenGLProcessor*: OpenGLObject3dProcessor
        uniformLightColorOpenGLProcessor*: OpenGLObject3dProcessor
        uniformCameraPositionOpenGLProcessor*: OpenGLObject3dProcessor
        uniformTextureUnitOpenGLProcessor*: OpenGLObject3dProcessor
        programHandle*: int32

proc newShaderComposite*(requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor, disableProgramShaderOpenGLProcessor: OpenGLProcessor): ShaderComposite
proc initShaderComposite*(this: ShaderComposite, requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor, disableProgramShaderOpenGLProcessor: OpenGLProcessor)
method init*(this: ShaderComposite, gl: GL10) {.base.}
import org/allbinary/graphics/opengles/NullOpenGLProcessorFactory as NullOpenGLProcessorFactoryModule
export NullOpenGLProcessorFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor as NullOpenGLTextureProcessorModule
export NullOpenGLTextureProcessorModule


# Java field initializers run after the base initializer
proc initFieldsShaderComposite(this: ShaderComposite) =
    
    
    
    
    
    
    
    
    this.useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    this.uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    this.uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    this.uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    this.uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    this.programHandle = 0
    discard

proc initShaderComposite*(this: ShaderComposite, requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor, disableProgramShaderOpenGLProcessor: OpenGLProcessor) =
        this.initFieldsShaderComposite()
        this.requiresOpenGLVersion = requiresOpenGLVersion
        this.shaderArray = shaderArray
        this.shaderInitializer = shaderInitializer
        this.compositeShaderUpdater = compositeShaderUpdater
        this.modelViewProjection = modelViewProjection
        this.colorOpenGLProcessor = colorOpenGLProcessor
        this.vertexOpenGLProcessor = vertexOpenGLProcessor
        this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor

proc newShaderComposite*(requiresOpenGLVersion: string, shaderArray: JArray[Shader], compositeShaderUpdater: CompositeShaderUpdater, shaderInitializer: ShaderInitializer, modelViewProjection: ModelViewProjection, colorOpenGLProcessor: OpenGLProcessor, vertexOpenGLProcessor: OpenGLProcessor, disableProgramShaderOpenGLProcessor: OpenGLProcessor): ShaderComposite =
    result = ShaderComposite()
    initShaderComposite(result, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)

method init*(this: ShaderComposite, gl: GL10) {.base.} =
        this.programHandle = this.shaderInitializer.init(gl, this.shaderArray, StringUtil.getInstance().getArrayInstance())

