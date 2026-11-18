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

type
    OpenGLESImageProperties* = ref object of JObject
        textureID*: int32
        scaleX*: float32
        scaleY*: float32
        scaleX2*: float32
        scaleY2*: float32
        angle*: int32
        redf*: float32
        greenf*: float32
        bluef*: float32
        alphaf*: float32

proc newOpenGLESImageProperties*(): OpenGLESImageProperties


# Java field initializers run after the base initializer
proc initFieldsOpenGLESImageProperties(this: OpenGLESImageProperties) =
    this.textureID = -1
    this.scaleX = 1.0'f32
    this.scaleY = 1.0'f32
    this.scaleX2 = 1.0'f32
    this.scaleY2 = 1.0'f32
    this.angle = 0
    this.redf = 1.0'f32
    this.greenf = 1.0'f32
    this.bluef = 1.0'f32
    this.alphaf = 1.0'f32
    discard

proc initOpenGLESImageProperties*(this: OpenGLESImageProperties) =
    this.initFieldsOpenGLESImageProperties()

proc newOpenGLESImageProperties*(): OpenGLESImageProperties =
    result = OpenGLESImageProperties()
    initOpenGLESImageProperties(result)

