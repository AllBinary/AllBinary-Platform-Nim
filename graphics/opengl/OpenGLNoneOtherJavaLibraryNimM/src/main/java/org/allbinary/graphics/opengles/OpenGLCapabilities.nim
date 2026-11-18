#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
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

type
    OpenGLCapabilities* = ref object of JObject
        CUSTOM_GL_SURFACE_VIEW*: bool
        VERSION_1_0*: string
        VERSION_1_1*: string
        VERSION_2_0*: string
        VERSION_3_0*: string
        VERSION_3_1*: string
        VERSION_3_2*: string
        VERSION_HIGHER_THAN_EXISTS*: string
        glVersion*: string
        shaderVersion*: int32
        glInstanceVersion*: string
        maxTextureSize*: int32

proc newOpenGLCapabilities*(): OpenGLCapabilities
proc initOpenGLCapabilities*(this: OpenGLCapabilities)
proc getInstance*(t: typedesc[OpenGLCapabilities]): OpenGLCapabilities {.discardable.}
method isInitialized*(this: OpenGLCapabilities): bool {.base, discardable.}
method initCapabilities*(this: OpenGLCapabilities, gl: JObject) {.base.}
method isGlExtensionDrawTexture*(this: OpenGLCapabilities): bool {.base, discardable.}
method getGlVersion*(this: OpenGLCapabilities): string {.base, discardable.}
method isVertexBufferObjectSupport*(this: OpenGLCapabilities): bool {.base, discardable.}
method isTextureSizeValid*(this: OpenGLCapabilities, widthAndHeight: int32): bool {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var OpenGLCapabilities_instanceValue: OpenGLCapabilities
var OpenGLCapabilities_instanceSet = false
proc instance*(t: typedesc[OpenGLCapabilities]): OpenGLCapabilities =
    if not OpenGLCapabilities_instanceSet:
        OpenGLCapabilities_instanceSet = true
        OpenGLCapabilities_instanceValue = newOpenGLCapabilities()
    OpenGLCapabilities_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLCapabilities(this: OpenGLCapabilities) =
    this.CUSTOM_GL_SURFACE_VIEW = true
    this.VERSION_1_0 = "1.0"
    this.VERSION_1_1 = "1.1"
    this.VERSION_2_0 = "2.0"
    this.VERSION_3_0 = "3.0"
    this.VERSION_3_1 = "3.1"
    this.VERSION_3_2 = "3.2"
    this.VERSION_HIGHER_THAN_EXISTS = "999.999"
    this.glVersion = StringUtil.getInstance().EMPTY_STRING
    this.shaderVersion = 0
    this.glInstanceVersion = StringUtil.getInstance().EMPTY_STRING
    this.maxTextureSize = 64
    discard

proc getInstance*(t: typedesc[OpenGLCapabilities]): OpenGLCapabilities {.discardable.} =
        return OpenGLCapabilities.instance

proc initOpenGLCapabilities*(this: OpenGLCapabilities) =
        this.initFieldsOpenGLCapabilities()
        discard

proc newOpenGLCapabilities*(): OpenGLCapabilities =
    result = OpenGLCapabilities()
    initOpenGLCapabilities(result)

method isInitialized*(this: OpenGLCapabilities): bool {.base, discardable.} =
        return true

method initCapabilities*(this: OpenGLCapabilities, gl: JObject) {.base.} =
        discard

method isGlExtensionDrawTexture*(this: OpenGLCapabilities): bool {.base, discardable.} =
        return false

method getGlVersion*(this: OpenGLCapabilities): string {.base, discardable.} =
        return this.glVersion

method isVertexBufferObjectSupport*(this: OpenGLCapabilities): bool {.base, discardable.} =
        return false

method isTextureSizeValid*(this: OpenGLCapabilities, widthAndHeight: int32): bool {.base, discardable.} =
        return true

