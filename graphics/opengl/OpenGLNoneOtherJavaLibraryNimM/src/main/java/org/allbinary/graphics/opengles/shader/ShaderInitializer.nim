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
import org/allbinary/graphics/opengles/shader/Shader as ShaderModule
export ShaderModule

type
    ShaderInitializer* = ref object of JObject
        commonStrings*: CommonStrings

proc newShaderInitializer*(): ShaderInitializer
proc getInstance*(t: typedesc[ShaderInitializer]): ShaderInitializer {.discardable.}
method init*(this: ShaderInitializer, gl: GL10, shader: JArray[Shader], attributeArray: JArray[string]): int32 {.base, discardable.}

var ShaderInitializer_instanceValue: ShaderInitializer
var ShaderInitializer_instanceSet = false
proc instance*(t: typedesc[ShaderInitializer]): ShaderInitializer =
    if not ShaderInitializer_instanceSet:
        ShaderInitializer_instanceSet = true
        ShaderInitializer_instanceValue = newShaderInitializer()
    ShaderInitializer_instanceValue

# Java field initializers run after the base initializer
proc initFieldsShaderInitializer(this: ShaderInitializer) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initShaderInitializer*(this: ShaderInitializer) =
    this.initFieldsShaderInitializer()

proc newShaderInitializer*(): ShaderInitializer =
    result = ShaderInitializer()
    initShaderInitializer(result)

proc getInstance*(t: typedesc[ShaderInitializer]): ShaderInitializer {.discardable.} =
        return ShaderInitializer.instance

method init*(this: ShaderInitializer, gl: GL10, shader: JArray[Shader], attributeArray: JArray[string]): int32 {.base, discardable.} =
        return -1

