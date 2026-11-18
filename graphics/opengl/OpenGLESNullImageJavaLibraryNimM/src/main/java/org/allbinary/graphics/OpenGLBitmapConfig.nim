#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    OpenGLBitmapConfig* = ref object of JObject
        bitmapConfig*: JObject

proc newOpenGLBitmapConfig*(bitmapConfig: JObject): OpenGLBitmapConfig
proc initOpenGLBitmapConfig*(this: OpenGLBitmapConfig, bitmapConfig: JObject)


# Java field initializers run after the base initializer
proc initFieldsOpenGLBitmapConfig(this: OpenGLBitmapConfig) =
    
    discard

proc initOpenGLBitmapConfig*(this: OpenGLBitmapConfig, bitmapConfig: JObject) =
        this.initFieldsOpenGLBitmapConfig()
        this.bitmapConfig = bitmapConfig

proc newOpenGLBitmapConfig*(bitmapConfig: JObject): OpenGLBitmapConfig =
    result = OpenGLBitmapConfig()
    initOpenGLBitmapConfig(result, bitmapConfig)

