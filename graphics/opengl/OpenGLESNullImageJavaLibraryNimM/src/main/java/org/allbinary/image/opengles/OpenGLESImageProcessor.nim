#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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

type
    OpenGLESImageProcessor* = ref object of JObject

proc newOpenGLESImageProcessor*(): OpenGLESImageProcessor
proc getInstance*(t: typedesc[OpenGLESImageProcessor]): OpenGLESImageProcessor {.discardable.}
method translate*(this: OpenGLESImageProcessor, gl: GL10, translateX: float32, translateY: float32) {.base.}
method rotate*(this: OpenGLESImageProcessor, gl: GL10, angle: float32) {.base.}
method scale*(this: OpenGLESImageProcessor, gl: GL10, scaleX: float32, scaleY: float32) {.base.}
method colorMask*(this: OpenGLESImageProcessor, gl: GL10, red: float32, green: float32, blue: float32, alpha: float32) {.base.}

var OpenGLESImageProcessor_instanceValue: OpenGLESImageProcessor
var OpenGLESImageProcessor_instanceSet = false
proc instance*(t: typedesc[OpenGLESImageProcessor]): OpenGLESImageProcessor =
    if not OpenGLESImageProcessor_instanceSet:
        OpenGLESImageProcessor_instanceSet = true
        OpenGLESImageProcessor_instanceValue = newOpenGLESImageProcessor()
    OpenGLESImageProcessor_instanceValue

proc initOpenGLESImageProcessor*(this: OpenGLESImageProcessor) =
    discard

proc newOpenGLESImageProcessor*(): OpenGLESImageProcessor =
    result = OpenGLESImageProcessor()
    initOpenGLESImageProcessor(result)

proc getInstance*(t: typedesc[OpenGLESImageProcessor]): OpenGLESImageProcessor {.discardable.} =
        return OpenGLESImageProcessor.instance

method translate*(this: OpenGLESImageProcessor, gl: GL10, translateX: float32, translateY: float32) {.base.} =
        discard

method rotate*(this: OpenGLESImageProcessor, gl: GL10, angle: float32) {.base.} =
        discard

method scale*(this: OpenGLESImageProcessor, gl: GL10, scaleX: float32, scaleY: float32) {.base.} =
        discard

method colorMask*(this: OpenGLESImageProcessor, gl: GL10, red: float32, green: float32, blue: float32, alpha: float32) {.base.} =
        discard

