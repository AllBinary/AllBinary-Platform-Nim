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
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    OpenGLESImageExclusionUtil* = ref object of JObject
        list*: BasicArrayList

proc newOpenGLESImageExclusionUtil*(): OpenGLESImageExclusionUtil
proc getInstance*(t: typedesc[OpenGLESImageExclusionUtil]): OpenGLESImageExclusionUtil {.discardable.}
method isCustomScaling*(this: OpenGLESImageExclusionUtil, image: Image): bool {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var OpenGLESImageExclusionUtil_instanceValue: OpenGLESImageExclusionUtil
var OpenGLESImageExclusionUtil_instanceSet = false
proc instance*(t: typedesc[OpenGLESImageExclusionUtil]): OpenGLESImageExclusionUtil =
    if not OpenGLESImageExclusionUtil_instanceSet:
        OpenGLESImageExclusionUtil_instanceSet = true
        OpenGLESImageExclusionUtil_instanceValue = newOpenGLESImageExclusionUtil()
    OpenGLESImageExclusionUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLESImageExclusionUtil(this: OpenGLESImageExclusionUtil) =
    this.list = newBasicArrayListD()
    discard

proc initOpenGLESImageExclusionUtil*(this: OpenGLESImageExclusionUtil) =
    this.initFieldsOpenGLESImageExclusionUtil()

proc newOpenGLESImageExclusionUtil*(): OpenGLESImageExclusionUtil =
    result = OpenGLESImageExclusionUtil()
    initOpenGLESImageExclusionUtil(result)

proc getInstance*(t: typedesc[OpenGLESImageExclusionUtil]): OpenGLESImageExclusionUtil {.discardable.} =
        return OpenGLESImageExclusionUtil.instance

method isCustomScaling*(this: OpenGLESImageExclusionUtil, image: Image): bool {.base, discardable.} =
        return false

