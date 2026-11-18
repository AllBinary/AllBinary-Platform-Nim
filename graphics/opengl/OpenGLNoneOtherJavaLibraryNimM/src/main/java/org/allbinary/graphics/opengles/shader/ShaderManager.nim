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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    ShaderManager* = ref object of JObject
        LOAD_SHADER*: string
        commonStrings*: CommonStrings
        GL_VERTEX_SHADER*: int32
        GL_FRAGMENT_SHADER*: int32

proc newShaderManager*(GL_VERTEX_SHADER: int32, GL_FRAGMENT_SHADER: int32): ShaderManager
proc initShaderManager*(this: ShaderManager, GL_VERTEX_SHADER: int32, GL_FRAGMENT_SHADER: int32)
proc getInstance*(t: typedesc[ShaderManager]): ShaderManager {.discardable.}
method load*(this: ShaderManager, gl: GL10, resource: string, shaderAsStringArray: JArray[string], shaderType: int32): int32 {.base, discardable.}
method loadShader*(this: ShaderManager, gl: GL10, resource: string, stringList: BasicArrayList, shaderType: int32): int32 {.base, discardable.}

var ShaderManager_instanceValue: ShaderManager
var ShaderManager_instanceSet = false
proc instance*(t: typedesc[ShaderManager]): ShaderManager =
    if not ShaderManager_instanceSet:
        ShaderManager_instanceSet = true
        ShaderManager_instanceValue = newShaderManager(-1, -1)
    ShaderManager_instanceValue

# Java field initializers run after the base initializer
proc initFieldsShaderManager(this: ShaderManager) =
    this.LOAD_SHADER = "loadShader"
    this.commonStrings = CommonStrings.getInstance()
    
    
    discard

proc getInstance*(t: typedesc[ShaderManager]): ShaderManager {.discardable.} =
        return ShaderManager.instance

proc initShaderManager*(this: ShaderManager, GL_VERTEX_SHADER: int32, GL_FRAGMENT_SHADER: int32) =
        this.initFieldsShaderManager()
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER

proc newShaderManager*(GL_VERTEX_SHADER: int32, GL_FRAGMENT_SHADER: int32): ShaderManager =
    result = ShaderManager()
    initShaderManager(result, GL_VERTEX_SHADER, GL_FRAGMENT_SHADER)

method load*(this: ShaderManager, gl: GL10, resource: string, shaderAsStringArray: JArray[string], shaderType: int32): int32 {.base, discardable.} =
        return -1

method loadShader*(this: ShaderManager, gl: GL10, resource: string, stringList: BasicArrayList, shaderType: int32): int32 {.base, discardable.} =
        return -1

