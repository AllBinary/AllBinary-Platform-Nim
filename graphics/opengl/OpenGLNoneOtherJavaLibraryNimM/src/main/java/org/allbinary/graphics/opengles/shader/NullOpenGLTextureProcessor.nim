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
import org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor as OpenGLObject3dProcessorModule
export OpenGLObject3dProcessorModule

type
    NullOpenGLTextureProcessor* = ref object of JObject

proc newNullOpenGLTextureProcessor*(): NullOpenGLTextureProcessor
proc getInstance*(t: typedesc[NullOpenGLTextureProcessor]): OpenGLObject3dProcessor {.discardable.}

var NullOpenGLTextureProcessor_instanceValue: OpenGLObject3dProcessor
var NullOpenGLTextureProcessor_instanceSet = false
proc instance*(t: typedesc[NullOpenGLTextureProcessor]): OpenGLObject3dProcessor =
    if not NullOpenGLTextureProcessor_instanceSet:
        NullOpenGLTextureProcessor_instanceSet = true
        NullOpenGLTextureProcessor_instanceValue = newOpenGLObject3dProcessor()
    NullOpenGLTextureProcessor_instanceValue

proc initNullOpenGLTextureProcessor*(this: NullOpenGLTextureProcessor) =
    discard

proc newNullOpenGLTextureProcessor*(): NullOpenGLTextureProcessor =
    result = NullOpenGLTextureProcessor()
    initNullOpenGLTextureProcessor(result)

proc getInstance*(t: typedesc[NullOpenGLTextureProcessor]): OpenGLObject3dProcessor {.discardable.} =
        return NullOpenGLTextureProcessor.instance

