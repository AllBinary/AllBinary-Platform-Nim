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
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/graphics/opengles/shader/ShaderUpdater as ShaderUpdaterModule
export ShaderUpdaterModule

type
    CompositeShaderUpdater* = ref object of ShaderUpdater
        commonSeps*: CommonSeps

proc newCompositeShaderUpdater*(uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]): CompositeShaderUpdater
proc initCompositeShaderUpdater*(this: CompositeShaderUpdater, uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32])
proc getInstance*(t: typedesc[CompositeShaderUpdater]): CompositeShaderUpdater {.discardable.}
method onSurfaceCreated*(this: CompositeShaderUpdater, gl: GL10, eglConfig: EGLConfig, programHandle: int32) {.base.}
method onSurfaceDestroyed*(this: CompositeShaderUpdater, gl: GL10) {.base.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var CompositeShaderUpdater_instanceCValue: CompositeShaderUpdater
var CompositeShaderUpdater_instanceCSet = false
proc instanceC*(t: typedesc[CompositeShaderUpdater]): CompositeShaderUpdater =
    if not CompositeShaderUpdater_instanceCSet:
        CompositeShaderUpdater_instanceCSet = true
        CompositeShaderUpdater_instanceCValue = newCompositeShaderUpdater(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY)
    CompositeShaderUpdater_instanceCValue

# Java field initializers run after the base initializer
proc initFieldsCompositeShaderUpdater(this: CompositeShaderUpdater) =
    this.commonSeps = CommonSeps.getInstance()
    discard

proc getInstance*(t: typedesc[CompositeShaderUpdater]): CompositeShaderUpdater {.discardable.} =
        return CompositeShaderUpdater.instanceC

proc initCompositeShaderUpdater*(this: CompositeShaderUpdater, uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]) =
        initShaderUpdater(this)
        this.initFieldsCompositeShaderUpdater()
        discard

proc newCompositeShaderUpdater*(uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]): CompositeShaderUpdater =
    result = CompositeShaderUpdater()
    initCompositeShaderUpdater(result, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)

method onSurfaceCreated*(this: CompositeShaderUpdater, gl: GL10, eglConfig: EGLConfig, programHandle: int32) {.base.} =
        discard

method onSurfaceDestroyed*(this: CompositeShaderUpdater, gl: GL10) {.base.} =
        discard

when declared(newCompositeShaderUpdaterHook4):
    newCompositeShaderUpdaterHook4 = proc (uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]): ShaderUpdater = newCompositeShaderUpdater(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)

