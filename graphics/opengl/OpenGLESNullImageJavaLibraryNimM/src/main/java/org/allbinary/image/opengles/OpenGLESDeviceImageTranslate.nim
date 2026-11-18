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
import org/allbinary/image/opengles/OpenGLESImageTranslate as OpenGLESImageTranslateModule
export OpenGLESImageTranslateModule
import org/allbinary/image/opengles/OpenGLESImage as OpenGLESImageModule
export OpenGLESImageModule

type
    OpenGLESDeviceImageTranslate* = ref object of OpenGLESImageTranslate
        translateX*: float32
        translateY*: float32
        translateX2*: float32
        translateY2*: float32

proc newOpenGLESDeviceImageTranslate*(): OpenGLESDeviceImageTranslate
method translate*(this: OpenGLESDeviceImageTranslate, gl: GL10, openGLESImage: OpenGLESImage, x: float32, y: float32)
method translate2*(this: OpenGLESDeviceImageTranslate, gl: GL10, openGLESImage: OpenGLESImage)


# Java field initializers run after the base initializer
proc initFieldsOpenGLESDeviceImageTranslate(this: OpenGLESDeviceImageTranslate) =
    this.translateX = 0.0'f32
    this.translateY = 0.0'f32
    this.translateX2 = 0.0'f32
    this.translateY2 = 0.0'f32
    discard

proc initOpenGLESDeviceImageTranslate*(this: OpenGLESDeviceImageTranslate) =
    initOpenGLESImageTranslate(this)
    this.initFieldsOpenGLESDeviceImageTranslate()

proc newOpenGLESDeviceImageTranslate*(): OpenGLESDeviceImageTranslate =
    result = OpenGLESDeviceImageTranslate()
    initOpenGLESDeviceImageTranslate(result)

method translate*(this: OpenGLESDeviceImageTranslate, gl: GL10, openGLESImage: OpenGLESImage, x: float32, y: float32) =
        openGLESImage.imageProcessor.translate(gl, this.translateX + (openGLESImage.openGLESImageProperties.scaleX * x), this.translateY + (openGLESImage.openGLESImageProperties.scaleY * y))

method translate2*(this: OpenGLESDeviceImageTranslate, gl: GL10, openGLESImage: OpenGLESImage) =
        openGLESImage.imageProcessor.translate(gl, this.translateX2, this.translateY2)

when declared(newOpenGLESDeviceImageTranslateHook0):
    newOpenGLESDeviceImageTranslateHook0 = proc (): OpenGLESImageTranslate = newOpenGLESDeviceImageTranslate()

