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
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import org/allbinary/image/opengles/OpenGLESImage as OpenGLESImageModule
export OpenGLESImageModule

type
    OpenGLESImageTranslate* = ref object of JObject

proc newOpenGLESImageTranslate*(): OpenGLESImageTranslate
proc getInstance*(t: typedesc[OpenGLESImageTranslate]): OpenGLESImageTranslate {.discardable.}
method translate*(this: OpenGLESImageTranslate, gl: GL10, openGLESImage: OpenGLESImage, x: float32, y: float32) {.base.}
method translate2*(this: OpenGLESImageTranslate, gl: GL10, openGLESImage: OpenGLESImage) {.base.}

var OpenGLESImageTranslate_instanceValue: OpenGLESImageTranslate
var OpenGLESImageTranslate_instanceSet = false
proc instance*(t: typedesc[OpenGLESImageTranslate]): OpenGLESImageTranslate =
    if not OpenGLESImageTranslate_instanceSet:
        OpenGLESImageTranslate_instanceSet = true
        OpenGLESImageTranslate_instanceValue = newOpenGLESImageTranslate()
    OpenGLESImageTranslate_instanceValue

proc initOpenGLESImageTranslate*(this: OpenGLESImageTranslate) =
    discard

proc newOpenGLESImageTranslate*(): OpenGLESImageTranslate =
    result = OpenGLESImageTranslate()
    initOpenGLESImageTranslate(result)

proc getInstance*(t: typedesc[OpenGLESImageTranslate]): OpenGLESImageTranslate {.discardable.} =
        return OpenGLESImageTranslate.instance

method translate*(this: OpenGLESImageTranslate, gl: GL10, openGLESImage: OpenGLESImage, x: float32, y: float32) {.base.} =
        openGLESImage.imageProcessor.translate(gl, x, y)

method translate2*(this: OpenGLESImageTranslate, gl: GL10, openGLESImage: OpenGLESImage) {.base.} =
        discard

