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
import javax/microedition/khronos/egl/EGLConfig as EGLConfigModule
export EGLConfigModule
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import org/allbinary/graphics/opengles/renderer/RendererStrings as RendererStringsModule
export RendererStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    ShaderUpdater* = ref object of JObject
        commonStrings*: CommonStrings
        rendererStrings*: RendererStrings

proc newShaderUpdater*(): ShaderUpdater
proc getInstance*(t: typedesc[ShaderUpdater]): ShaderUpdater {.discardable.}
method onSurfaceCreated*(this: ShaderUpdater, gl: GL10, eglConfig: EGLConfig) {.base.}

var ShaderUpdater_instanceValue: ShaderUpdater
var ShaderUpdater_instanceSet = false
proc instance*(t: typedesc[ShaderUpdater]): ShaderUpdater =
    if not ShaderUpdater_instanceSet:
        ShaderUpdater_instanceSet = true
        ShaderUpdater_instanceValue = newShaderUpdater()
    ShaderUpdater_instanceValue

# Java field initializers run after the base initializer
proc initFieldsShaderUpdater(this: ShaderUpdater) =
    this.commonStrings = CommonStrings.getInstance()
    this.rendererStrings = RendererStrings.getInstance()
    discard

proc initShaderUpdater*(this: ShaderUpdater) =
    this.initFieldsShaderUpdater()

proc newShaderUpdater*(): ShaderUpdater =
    result = ShaderUpdater()
    initShaderUpdater(result)

proc getInstance*(t: typedesc[ShaderUpdater]): ShaderUpdater {.discardable.} =
        return ShaderUpdater.instance

method onSurfaceCreated*(this: ShaderUpdater, gl: GL10, eglConfig: EGLConfig) {.base.} =
        discard

